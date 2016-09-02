.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$FlymeInjector;,
        Landroid/widget/AbsListView$MzMultiChoiceDelayRunnable;,
        Landroid/widget/AbsListView$MzCheckForLittleTap;,
        Landroid/widget/AbsListView$MzRequestLayoutRunnable;,
        Landroid/widget/AbsListView$MzBackPressedListener;,
        Landroid/widget/AbsListView$onTouchOutOfItemListener;,
        Landroid/widget/AbsListView$MzDelaySpringBack;,
        Landroid/widget/AbsListView$DelayUpdate;,
        Landroid/widget/AbsListView$OnItemDragListener;,
        Landroid/widget/AbsListView$DragItemFilter;,
        Landroid/widget/AbsListView$ListViewDragShadowBuilder;,
        Landroid/widget/AbsListView$MzActionItemDragListener;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$PenSelectVibrator;,
        Landroid/widget/AbsListView$HoverScrollHandler;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$TwSmoothScrollByMove;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field public static final ACTION_DRAG_FLAG_NFC_SHARE:I = 0x1

.field public static final ACTION_DRAG_FLAG_NONE:I = 0x0

.field public static final ACTION_TYPE_NORMAL:I = 0x0

.field public static final ACTION_TYPE_WARNING:I = 0x1

.field private static final CHECK_SPRINGBACK_DURATION:I = 0x32

.field public static final CHOICE_MODE_MULTIPLE_MODAL_MZ:I = 0x4

.field public static final CHOICE_MODE_MULTIPLE_MODAL_MZ_ALWAYS:I = 0x5

.field private static final SPRINGBACK_DELAY_DURATION:I = 0x3e8

.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED_FASTER:F = 30.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final IS_DEVICE_H:Z

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_QC_HIDE:I = 0x0

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PRODUCT_NAME:Ljava/lang/String;

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static mTwScrollAmount:I

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;

.field mCanNfcShare:Z

.field protected mCenterContent:Z

.field mCheckForLittleTap:Landroid/widget/AbsListView$MzCheckForLittleTap;

.field protected mCheckRegionRect:Landroid/graphics/Rect;

.field protected mChoiceModeMZ:I

.field mCurrentDragChild:Landroid/view/View;

.field protected mDefaultCheckWidth:I

.field mDelaySpringBack:Ljava/lang/Runnable;

.field mDelaySpringBackEnabled:Z

.field mDelayUpdate:Ljava/lang/Runnable;

.field protected mDragAndDropId:J

.field protected mDragAndDropPosition:I

.field protected mDragOffsetX:I

.field protected mDragOffsetY:I

.field mDragShawdowView:Landroid/view/View;

.field protected mDragViewBackground:I

.field protected mDragViewBackgroundDelete:I

.field protected mDragViewBackgroundFilter:I

.field protected mDragViewhasTransient:Z

.field protected mEnableForEditTextPreference:Z

.field mEnableLoadAllItems:Z

.field mEnablePressStateOnCheck:Z

.field mHasActionDrop:Z

.field mHoldDistance:I

.field mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

.field mHoldIndicatorOffset:I

.field mInCheckRegion:Z

.field mIsFlingToScroll:Z

.field mIsListAtWindowTop:Z

.field mIsThemeLight:Z

.field protected mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

.field protected mListItemHeight:I

.field mListWindowTop:I

.field mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

.field protected mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

.field mShadowBuilder:Landroid/widget/AbsListView$ListViewDragShadowBuilder;

.field protected mShouldDelaySpringBack:Z

.field protected AIR_VIEW_WINSET:Z

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private QC_ICON_HIDE_DELAY:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentKeyCode:I

.field private mDVFSCookie:I

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoveredOnEllipsizedText:Z

.field private mIsChildViewEnabled:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDetaching:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsQCShown:Z

.field final mIsScrap:[Z

.field private mIsSendHoverScrollState:Z

.field private mIsShiftkeyPressed:Z

.field private mIsTextSelectionStarted:Z

.field private mIsTwOnClickEnabled:Z

.field private mIsfirstMoveEvent:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field mMotionPosition:I

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mMultiSelectionStart:Z

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPenSelectVibrator:Landroid/widget/AbsListView$PenSelectVibrator;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPreviousTextViewScroll:Z

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCScrollDirection:I

.field private mQCScrollFrom:I

.field private mQCScrollNext:I

.field private mQCScrollRunnable:Ljava/lang/Runnable;

.field private mQCScrollTo:I

.field private mQCScrollingCount:I

.field private mQCstate:I

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field private mSecondPressedPoint:I

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mTwCloseChildByBottom:Landroid/view/View;

.field private mTwCloseChildByTop:Landroid/view/View;

.field private mTwCloseChildPositionByBottom:I

.field private mTwCloseChildPositionByTop:I

.field public mTwCurrentFocusPosition:I

.field private mTwCustomMultiChoiceMode:Z

.field private mTwDistanceFromCloseChildBottom:I

.field private mTwDistanceFromCloseChildTop:I

.field private mTwDistanceFromTrackedChildTop:I

.field private mTwDragBlockBottom:I

.field private mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mTwDragBlockLeft:I

.field private mTwDragBlockRect:Landroid/graphics/Rect;

.field private mTwDragBlockRight:I

.field private mTwDragBlockTop:I

.field private mTwDragEndX:I

.field private mTwDragEndY:I

.field private mTwDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTwDragSelectedItemSize:I

.field private mTwDragSelectedViewPosition:I

.field private mTwDragStartX:I

.field private mTwDragStartY:I

.field private mTwPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

.field private mTwTrackedChild:Landroid/view/View;

.field private mTwTrackedChildPosition:I

.field private mTwTwScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field private methodPauseGc:Ljava/lang/reflect/Method;

.field private methodResumeGc:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 244
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/AbsListView;->PRODUCT_NAME:Ljava/lang/String;

    .line 245
    sget-object v0, Landroid/widget/AbsListView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v1, "hlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/AbsListView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v1, "ha3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/AbsListView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v1, "h3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/widget/AbsListView;->IS_DEVICE_H:Z

    .line 853
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 6671
    const/16 v0, 0x1f4

    sput v0, Landroid/widget/AbsListView;->mTwScrollAmount:I

    return-void

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1097
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 144
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 145
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 146
    iput-object v6, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 148
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 288
    iput v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 321
    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 346
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 351
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 361
    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 366
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 372
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 377
    iput v4, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 382
    iput v4, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 387
    iput v4, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 392
    iput v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 397
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 402
    iput v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 450
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 481
    iput v4, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 524
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 544
    iput v5, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 546
    iput-object v6, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 572
    iput v5, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 575
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 578
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 585
    iput-object v6, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 586
    iput-object v6, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 633
    iput v4, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 658
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 660
    new-array v1, v7, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 662
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 663
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 669
    iput v4, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 679
    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 684
    iput v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 691
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 742
    iput v4, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 779
    iput v4, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 781
    iput v4, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 791
    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 793
    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 795
    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 797
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 799
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    .line 801
    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 803
    iput v5, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 808
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 813
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 819
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 821
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 826
    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    .line 836
    iput v4, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 838
    const/16 v1, 0x1e

    iput v1, p0, Landroid/widget/AbsListView;->QC_ICON_HIDE_DELAY:I

    .line 840
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 842
    iput v4, p0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 844
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 846
    iput v4, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 847
    iput v4, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 872
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    .line 877
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 878
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 879
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 880
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 881
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 883
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 887
    iput v5, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 888
    iput v5, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    .line 889
    iput v4, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 890
    iput v4, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 891
    iput v4, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 892
    iput v5, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 895
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mMultiSelectionStart:Z

    .line 896
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 897
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 899
    iput v4, p0, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    .line 900
    iput v5, p0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 901
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 902
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 903
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 904
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 905
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 908
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 909
    iput v4, p0, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 910
    iput v4, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 911
    iput v4, p0, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 912
    iput v4, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 914
    iput v4, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 915
    iput v4, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 916
    iput v4, p0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 917
    iput v4, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 919
    iput-object v6, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 920
    iput v5, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 921
    iput v4, p0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 923
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 924
    iput v5, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 925
    iput-object v6, p0, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    .line 926
    iput v5, p0, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    .line 927
    iput v4, p0, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildTop:I

    .line 928
    iput-object v6, p0, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    .line 929
    iput v5, p0, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    .line 930
    iput v4, p0, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildBottom:I

    .line 933
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    .line 935
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsTwOnClickEnabled:Z

    .line 1004
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 1005
    iput v4, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 1006
    iput-object v6, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1007
    iput-object v6, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 1086
    iput-boolean v4, p0, Landroid/widget/AbsListView;->AIR_VIEW_WINSET:Z

    .line 3635
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 4754
    iput v4, p0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 4755
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5746
    iput v5, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 5748
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5749
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 5750
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 6669
    iput-object v6, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 6670
    iput-object v6, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 9039
    iput v4, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 9390
    iput-object v6, p0, Landroid/widget/AbsListView;->mPenSelectVibrator:Landroid/widget/AbsListView$PenSelectVibrator;

    .line 9438
    iput v5, p0, Landroid/widget/AbsListView;->mQCLocation:I

    .line 9439
    iput v4, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 9440
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsQCShown:Z

    .line 9445
    iput v7, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    .line 9599
    new-instance v1, Landroid/widget/AbsListView$5;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1098
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 1100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1102
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 1103
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1104
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 1105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1110
    iget-object v1, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1111
    const-string v1, "AbsListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const-string v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1116
    :cond_0
    new-instance v1, Landroid/widget/AbsListView$PenSelectVibrator;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$PenSelectVibrator;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mPenSelectVibrator:Landroid/widget/AbsListView$PenSelectVibrator;

    .line 1118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, #android:attr@absListViewStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1129
    invoke-direct/range {p0 .. p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 144
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 145
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 146
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 148
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 288
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 321
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 346
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 351
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 361
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 366
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 372
    new-instance v14, Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 377
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 382
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 387
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 392
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 397
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 402
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 450
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 481
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 524
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 544
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 546
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 572
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 575
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 578
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 585
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 586
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 633
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 658
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 660
    const/4 v14, 0x1

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 662
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 663
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 669
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 679
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 684
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 691
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 742
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 779
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 781
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 791
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 793
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 795
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 797
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 799
    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    .line 801
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 803
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 808
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 813
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 819
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 821
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 826
    const/high16 v14, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    .line 836
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 838
    const/16 v14, 0x1e

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->QC_ICON_HIDE_DELAY:I

    .line 840
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 842
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 844
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 846
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 847
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 872
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    .line 877
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 878
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 879
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 880
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 881
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 883
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 887
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 888
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    .line 889
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 890
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 891
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 892
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 895
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mMultiSelectionStart:Z

    .line 896
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 897
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 899
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    .line 900
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 901
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 902
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 903
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 904
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 905
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 908
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 909
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 910
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 911
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 912
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 914
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 915
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 916
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 917
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 919
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 920
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 921
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 923
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 924
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 925
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    .line 926
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    .line 927
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildTop:I

    .line 928
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    .line 929
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    .line 930
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildBottom:I

    .line 933
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    .line 935
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsTwOnClickEnabled:Z

    .line 1004
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 1005
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 1006
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1007
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 1086
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->AIR_VIEW_WINSET:Z

    .line 3635
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 4754
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 4755
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5746
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 5748
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5749
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 5750
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 6669
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 6670
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 9039
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 9390
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mPenSelectVibrator:Landroid/widget/AbsListView$PenSelectVibrator;

    .line 9438
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mQCLocation:I

    .line 9439
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mQCstate:I

    .line 9440
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsQCShown:Z

    .line 9445
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    .line 9599
    new-instance v14, Landroid/widget/AbsListView$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1130
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 1132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1134
    sget-object v14, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1137
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1138
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 1139
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1142
    :cond_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1145
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 1146
    .local v11, "stackFromBottom":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 1148
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 1149
    .local v9, "scrollingCacheEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1151
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 1152
    .local v13, "useTextFilter":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 1154
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 1156
    .local v12, "transcriptMode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 1158
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 1159
    .local v5, "color":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 1161
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1162
    .local v7, "enableFastScroll":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1164
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1165
    .local v8, "fastScrollStyle":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 1167
    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1168
    .local v10, "smoothScrollbar":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1170
    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1171
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1174
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1179
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v14, :cond_1

    .line 1180
    const-string v14, "AbsListView"

    const-string v15, "Get MotionRecognitionManager"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const-string v14, "motion_recognition"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/motion/MotionRecognitionManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1185
    :cond_1
    new-instance v14, Landroid/widget/AbsListView$PenSelectVibrator;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$PenSelectVibrator;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mPenSelectVibrator:Landroid/widget/AbsListView$PenSelectVibrator;

    .line 1187
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 2388
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/AbsListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 132
    iput p1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic access$1202(Landroid/widget/AbsListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/widget/AbsListView$CheckForLongPress;

    .prologue
    .line 132
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1702(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 132
    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 132
    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 132
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 132
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/widget/AbsListView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4500(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4600(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5200(Landroid/widget/AbsListView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollTo:I

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollNext:I

    return v0
.end method

.method static synthetic access$5802(Landroid/widget/AbsListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 132
    iput p1, p0, Landroid/widget/AbsListView;->mQCScrollNext:I

    return p1
.end method

.method static synthetic access$5900(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollFrom:I

    return v0
.end method

.method static synthetic access$6000(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$6008(Landroid/widget/AbsListView;)I
    .locals 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$6100(Landroid/widget/AbsListView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollDirection:I

    return v0
.end method

.method static synthetic access$6300(Landroid/widget/AbsListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic access$800(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method private addToPressItemListArray(II)V
    .locals 4
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 9316
    const/4 v0, 0x0

    .line 9318
    .local v0, "checkCount":I
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-nez v2, :cond_0

    .line 9360
    :goto_0
    return-void

    .line 9322
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 9323
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9324
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9359
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0

    .line 9326
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9329
    :cond_3
    if-ge p1, p2, :cond_5

    .line 9330
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 9331
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_1

    .line 9332
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9333
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9337
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 9331
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9335
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 9339
    .end local v1    # "i":I
    :cond_5
    if-le p1, p2, :cond_7

    .line 9340
    sub-int v2, p1, p2

    add-int/lit8 v0, v2, 0x1

    .line 9341
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_1

    .line 9342
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9343
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9347
    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 9341
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 9345
    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 9350
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9351
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9353
    :cond_8
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private canScrollDown()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2713
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 2716
    .local v2, "count":I
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v2

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v5, v6, :cond_1

    move v0, v3

    .line 2719
    .local v0, "canScrollDown":Z
    :goto_0
    if-nez v0, :cond_0

    if-lez v2, :cond_0

    .line 2720
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2721
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    move v0, v3

    .line 2724
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .end local v0    # "canScrollDown":Z
    :cond_1
    move v0, v4

    .line 2716
    goto :goto_0

    .restart local v0    # "canScrollDown":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    move v0, v4

    .line 2721
    goto :goto_1
.end method

.method private canScrollUp()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2698
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    move v0, v2

    .line 2701
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2702
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 2703
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2704
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_2

    move v0, v2

    .line 2708
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .end local v0    # "canScrollUp":Z
    :cond_1
    move v0, v3

    .line 2698
    goto :goto_0

    .restart local v0    # "canScrollUp":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    move v0, v3

    .line 2704
    goto :goto_1
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 6831
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6832
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 6833
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 6849
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 6851
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1694
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1695
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1698
    :cond_0
    :goto_0
    return v1

    .line 1696
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1698
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzContentFits(Landroid/widget/AbsListView;)Z

    move-result v1

    return v1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6823
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6824
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 6825
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 6826
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 6828
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 7862
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 7863
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, #android:style@Animation.TypingFilter#t

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, #android:style@Animation.TypingFilterRestore#t

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 7504
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 7505
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7507
    :cond_0
    return-void
.end method

.method private doScrollToBottomEnd()V
    .locals 1

    .prologue
    .line 9586
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollDirection:I

    .line 9587
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollFrom:I

    .line 9588
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollTo:I

    .line 9589
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollNext:I

    .line 9590
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    .line 9592
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 9593
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 9596
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 9597
    return-void
.end method

.method private doScrollToTopEnd()V
    .locals 1

    .prologue
    .line 9572
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollDirection:I

    .line 9573
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollFrom:I

    .line 9574
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollTo:I

    .line 9575
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollNext:I

    .line 9576
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    .line 9578
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 9579
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 9582
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 9583
    return-void
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 9552
    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-ne v2, v5, :cond_3

    .line 9553
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 9554
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9555
    .local v0, "restoreCount":I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9557
    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-ne v2, v4, :cond_2

    .line 9558
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9563
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9565
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsQCShown:Z

    .line 9569
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :goto_1
    return-void

    .line 9559
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollY":I
    :cond_2
    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-ne v2, v5, :cond_1

    .line 9560
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 9567
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsQCShown:Z

    goto :goto_1
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3199
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3200
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 3201
    .local v1, "selectedChild":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3202
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3203
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3204
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3208
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    .line 3210
    iget-object v5, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3211
    .local v2, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3213
    if-eqz v1, :cond_1

    .line 3214
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3215
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3216
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3221
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "selectedPosition":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 8103
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 8104
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 8105
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 8107
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 7550
    sparse-switch p2, :sswitch_data_0

    .line 7583
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7552
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 7553
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7554
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7555
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7587
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 7588
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 7589
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 7558
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7559
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 7560
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7561
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 7562
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7564
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 7565
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7566
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 7567
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7568
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7570
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7571
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 7572
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7573
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7574
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7577
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7578
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7579
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7580
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7581
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7550
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 7883
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 7884
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7885
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, #android:layout@typing_filter#t

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 7890
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 7892
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7893
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7895
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9058
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 9257
    :cond_0
    :goto_0
    return-void

    .line 9060
    :pswitch_0
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 9061
    invoke-virtual {p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 9064
    :pswitch_1
    const/4 v7, 0x0

    .line 9066
    .local v7, "offset":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 9067
    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 9069
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-eqz v9, :cond_1

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v10, v12

    iget-wide v12, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_0

    .line 9071
    :cond_1
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    if-eqz v9, :cond_2

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v10, v12

    iget-wide v12, p0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_0

    .line 9075
    :cond_2
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    if-nez v9, :cond_4

    .line 9076
    iget-object v9, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v9, :cond_3

    .line 9077
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 9078
    iget-object v9, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v10, 0x1

    invoke-interface {v9, p0, v10}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 9081
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 9084
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 9089
    .local v5, "count":I
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v9, v10, :cond_e

    const/4 v1, 0x1

    .line 9091
    .local v1, "canScrollDown":Z
    :goto_1
    if-nez v1, :cond_6

    if-lez v5, :cond_6

    .line 9092
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9093
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_f

    :cond_5
    const/4 v1, 0x1

    .line 9098
    .end local v3    # "child":Landroid/view/View;
    :cond_6
    :goto_2
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v9, :cond_10

    const/4 v2, 0x1

    .line 9100
    .local v2, "canScrollUp":Z
    :goto_3
    if-nez v2, :cond_7

    .line 9101
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_7

    .line 9102
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9103
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_11

    const/4 v2, 0x1

    .line 9107
    .end local v3    # "child":Landroid/view/View;
    :cond_7
    :goto_4
    const/4 v9, 0x1

    iget v10, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    iget-object v11, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 9110
    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x2

    cmp-long v9, v10, v12

    if-lez v9, :cond_12

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x4

    cmp-long v9, v10, v12

    if-gez v9, :cond_12

    .line 9111
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    int-to-double v10, v10

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 9118
    :cond_8
    :goto_5
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_14

    .line 9119
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v7, v9, -0x1

    .line 9120
    iget-object v9, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    if-nez v9, :cond_9

    iget-object v9, p0, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    if-nez v9, :cond_a

    :cond_9
    iget v9, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-eq v9, v10, :cond_b

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 9121
    :cond_a
    iget-object v9, p0, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    iput-object v9, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 9122
    iget v9, p0, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildBottom:I

    iput v9, p0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 9123
    iget v9, p0, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    iput v9, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 9124
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput v9, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 9125
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 9138
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 9142
    if-gez v7, :cond_c

    if-nez v2, :cond_d

    :cond_c
    if-lez v7, :cond_17

    if-eqz v1, :cond_17

    .line 9143
    :cond_d
    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 9144
    iget-object v9, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    iget v11, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v12, v11

    invoke-virtual {v9, v10, v12, v13}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9089
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 9093
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 9098
    .end local v3    # "child":Landroid/view/View;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 9103
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 9112
    .end local v3    # "child":Landroid/view/View;
    :cond_12
    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x4

    cmp-long v9, v10, v12

    if-ltz v9, :cond_13

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x5

    cmp-long v9, v10, v12

    if-gez v9, :cond_13

    .line 9113
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    int-to-double v10, v10

    const-wide v12, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    goto :goto_5

    .line 9114
    :cond_13
    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x5

    cmp-long v9, v10, v12

    if-ltz v9, :cond_8

    .line 9115
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    int-to-double v10, v10

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_5

    .line 9128
    :cond_14
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v7, v9, 0x1

    .line 9129
    iget-object v9, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    if-nez v9, :cond_15

    iget-object v9, p0, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    if-nez v9, :cond_16

    :cond_15
    iget v9, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-eq v9, v10, :cond_b

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 9130
    :cond_16
    iget-object v9, p0, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    iput-object v9, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 9131
    iget v9, p0, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildTop:I

    iput v9, p0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 9132
    iget v9, p0, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    iput v9, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 9133
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput v9, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 9134
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    goto/16 :goto_6

    .line 9147
    :cond_17
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v8

    .line 9148
    .local v8, "overscrollMode":I
    if-eqz v8, :cond_18

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1d

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v9

    if-nez v9, :cond_1d

    :cond_18
    const/4 v0, 0x1

    .line 9151
    .local v0, "canOverscroll":Z
    :goto_7
    if-eqz v0, :cond_1c

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_1c

    .line 9152
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1e

    .line 9153
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9154
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_19

    .line 9155
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9164
    :cond_19
    :goto_8
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_1b

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1b

    .line 9165
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 9168
    :cond_1b
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 9171
    :cond_1c
    if-nez v0, :cond_0

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_0

    .line 9172
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 9148
    .end local v0    # "canOverscroll":Z
    :cond_1d
    const/4 v0, 0x0

    goto :goto_7

    .line 9157
    .restart local v0    # "canOverscroll":Z
    :cond_1e
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    .line 9158
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9159
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_19

    .line 9160
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_8

    .line 9180
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v5    # "count":I
    .end local v7    # "offset":I
    .end local v8    # "overscrollMode":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 9182
    .local v4, "childCount":I
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 9187
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v4

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v9, v10, :cond_24

    const/4 v1, 0x1

    .line 9189
    .restart local v1    # "canScrollDown":Z
    :goto_9
    if-nez v1, :cond_20

    if-lez v4, :cond_20

    .line 9190
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9191
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_1f

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_25

    :cond_1f
    const/4 v1, 0x1

    .line 9196
    .end local v3    # "child":Landroid/view/View;
    :cond_20
    :goto_a
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v9, :cond_26

    const/4 v2, 0x1

    .line 9198
    .restart local v2    # "canScrollUp":Z
    :goto_b
    if-nez v2, :cond_21

    .line 9199
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_21

    .line 9200
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9201
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_27

    const/4 v2, 0x1

    .line 9205
    .end local v3    # "child":Landroid/view/View;
    :cond_21
    :goto_c
    const/4 v9, 0x1

    const/high16 v10, 0x41f00000    # 30.0f

    iget-object v11, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 9208
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_28

    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    neg-int v6, v9

    .line 9210
    .local v6, "distanceToMove":I
    :goto_d
    if-gez v6, :cond_22

    if-nez v2, :cond_23

    :cond_22
    if-lez v6, :cond_29

    if-eqz v1, :cond_29

    .line 9212
    :cond_23
    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 9213
    iget-object v9, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v10, 0x2

    iget v11, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v12, v11

    invoke-virtual {v9, v10, v12, v13}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9187
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v6    # "distanceToMove":I
    :cond_24
    const/4 v1, 0x0

    goto :goto_9

    .line 9191
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_25
    const/4 v1, 0x0

    goto :goto_a

    .line 9196
    .end local v3    # "child":Landroid/view/View;
    :cond_26
    const/4 v2, 0x0

    goto :goto_b

    .line 9201
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_27
    const/4 v2, 0x0

    goto :goto_c

    .line 9208
    .end local v3    # "child":Landroid/view/View;
    :cond_28
    iget v6, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    goto :goto_d

    .line 9216
    .restart local v6    # "distanceToMove":I
    :cond_29
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v8

    .line 9217
    .restart local v8    # "overscrollMode":I
    if-eqz v8, :cond_2a

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2f

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v9

    if-nez v9, :cond_2f

    :cond_2a
    const/4 v0, 0x1

    .line 9220
    .restart local v0    # "canOverscroll":Z
    :goto_e
    if-eqz v0, :cond_2e

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_2e

    .line 9221
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_30

    .line 9222
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9223
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2b

    .line 9224
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9233
    :cond_2b
    :goto_f
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_2d

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_2c

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2d

    .line 9234
    :cond_2c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 9237
    :cond_2d
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 9240
    :cond_2e
    if-nez v0, :cond_0

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_0

    .line 9241
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 9217
    .end local v0    # "canOverscroll":Z
    :cond_2f
    const/4 v0, 0x0

    goto :goto_e

    .line 9226
    .restart local v0    # "canOverscroll":Z
    :cond_30
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2b

    .line 9227
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9228
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2b

    .line 9229
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_f

    .line 9247
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v4    # "childCount":I
    .end local v6    # "distanceToMove":I
    .end local v8    # "overscrollMode":I
    :pswitch_3
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_31

    .line 9248
    invoke-direct {p0}, Landroid/widget/AbsListView;->doScrollToTopEnd()V

    goto/16 :goto_0

    .line 9249
    :cond_31
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 9250
    invoke-direct {p0}, Landroid/widget/AbsListView;->doScrollToBottomEnd()V

    goto/16 :goto_0

    .line 9058
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1191
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 1192
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 1193
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 1194
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1195
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1197
    iget-object v6, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 1198
    iget-object v6, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1199
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1200
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 1201
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 1202
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 1203
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 1206
    .end local v1    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1207
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    iput v6, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 1211
    :cond_1
    new-instance v6, Landroid/view/HapticPreDrawListener;

    invoke-direct {v6}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1214
    iget-object v6, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_3

    .line 1215
    iget-object v6, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "finger_air_view"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v4, v5

    :cond_2
    iput-boolean v4, p0, Landroid/widget/AbsListView;->AIR_VIEW_WINSET:Z

    .line 1219
    :cond_3
    const-class v0, Ldalvik/system/VMRuntime;

    .line 1221
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v4, "pauseGc"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1222
    const-string/jumbo v4, "resumeGc"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    :goto_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1229
    .local v3, "value":Landroid/util/TypedValue;
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_5

    .line 1230
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v6, #android:attr@twListMultiSelectBackground#t

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 1232
    .local v2, "resolved":Z
    if-eqz v2, :cond_4

    .line 1233
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1237
    :cond_4
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v6, #android:attr@twDragBlockImage#t

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 1239
    if-eqz v2, :cond_5

    .line 1240
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    .end local v2    # "resolved":Z
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->initExtFlymeFields(Landroid/widget/AbsListView;)V

    return-void

    .end local v3    # "value":Landroid/util/TypedValue;
    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 6039
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6040
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6044
    :goto_0
    return-void

    .line 6042
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 6047
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6048
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6050
    :cond_0
    return-void
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1808
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQCSupported()Z
    .locals 2

    .prologue
    .line 9451
    sget v0, Landroid/widget/AbsListView;->sSpenUspLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 9452
    const/4 v0, 0x1

    .line 9454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 9271
    const-string v0, "AbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9272
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5765
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 5766
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 5769
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    const/16 v14, 0x9

    if-ne v1, v14, :cond_3

    :cond_0
    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    .line 5770
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 5776
    :cond_1
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_5

    .line 5777
    const/4 v14, 0x3

    if-ne v11, v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 5890
    :cond_2
    :goto_2
    return-void

    .line 5771
    :cond_3
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    .line 5772
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    goto :goto_0

    .line 5777
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 5780
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 5783
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    .line 5788
    const/16 v14, 0x9

    if-ne v1, v14, :cond_6

    .line 5789
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_2

    .line 5790
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 5795
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isMultiWindows()Z

    move-result v14

    if-nez v14, :cond_2

    .line 5799
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 5800
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5801
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 5805
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    const/4 v6, 0x1

    .line 5810
    .local v6, "isFingerAirView":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const/4 v7, 0x1

    .line 5813
    .local v7, "isFingerAirViewPreview":Z
    :goto_4
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 5816
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v14

    if-nez v14, :cond_9

    .line 5817
    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    .line 5818
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setFingerHovered(Z)V

    .line 5820
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setHovered(Z)V

    .line 5822
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 5823
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 5824
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    .line 5825
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    if-eq v14, v9, :cond_e

    const/4 v2, 0x1

    .line 5826
    .local v2, "bChanged":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelectorDefault()Z

    move-result v10

    .line 5828
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 5830
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_f

    .line 5831
    if-nez v10, :cond_a

    .line 5832
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 5835
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_b

    .line 5836
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5837
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 5838
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5840
    :cond_b
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 5886
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v4

    .line 5887
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 5805
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    .line 5810
    .restart local v6    # "isFingerAirView":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 5825
    .restart local v7    # "isFingerAirViewPreview":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 5844
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 5846
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5848
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 5850
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 5864
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_12

    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    .line 5865
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5866
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5873
    :cond_10
    :goto_6
    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_11

    .line 5874
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 5875
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 5878
    :cond_11
    const/16 v14, 0xa

    if-ne v1, v14, :cond_2

    if-nez v10, :cond_2

    .line 5879
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5880
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 5881
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 5882
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5883
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 5884
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    goto/16 :goto_2

    .line 5868
    :cond_12
    if-nez v10, :cond_10

    .line 5869
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 6171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 6173
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 6174
    .local v1, "pointerId":I
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 6178
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 6179
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 6180
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 6181
    iput v3, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 6182
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6188
    iget v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 6190
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 6178
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzOnTouchCancel(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5712
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 5725
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5726
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 5727
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5728
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5729
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5731
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5732
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5733
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5736
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 5737
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5738
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5740
    :cond_1
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5741
    iput v3, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 5742
    return-void

    .line 5714
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 5715
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5717
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 5712
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 5430
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5431
    iget v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 5433
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 5435
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5436
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v4, :cond_0

    .line 5437
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5439
    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5442
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5443
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5444
    iput v6, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 5487
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzOnTouchDown(Landroid/widget/AbsListView;)V

    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5489
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5491
    :cond_1
    return-void

    .line 5446
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 5447
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 5448
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 5450
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 5451
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 5453
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 5454
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5455
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5456
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v0

    .line 5457
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 5475
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 5477
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5478
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5481
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5482
    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5483
    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5484
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_0

    .line 5458
    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5462
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5465
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v4, :cond_6

    .line 5466
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 5469
    :cond_6
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 5470
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 5471
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 5494
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 5495
    .local v1, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 5496
    const/4 v1, 0x0

    .line 5497
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5500
    :cond_0
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 5503
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 5506
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    .line 5508
    .local v3, "y":I
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 5537
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 5514
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4, v3, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5519
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 5520
    .local v2, "x":F
    int-to-float v4, v3

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v2, v4, v5}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5521
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 5522
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5523
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 5524
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 5526
    :cond_3
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    :goto_1
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5528
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5529
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    .line 5526
    :cond_4
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    goto :goto_1

    .line 5534
    .end local v0    # "motionView":Landroid/view/View;
    .end local v2    # "x":F
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4, v3, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 5508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5540
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 5683
    :cond_0
    :cond_flyme_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 5685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 5686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5687
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5691
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5692
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5693
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5695
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5696
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mPointerCount:I

    .line 5705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 5706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 5707
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 5709
    :cond_2
    :goto_1
    return-void

    .line 5544
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5545
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5546
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_e

    .line 5547
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 5548
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5551
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 5552
    .local v16, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_9

    const/4 v10, 0x1

    .line 5553
    .local v10, "inList":Z
    :goto_2
    if-eqz v10, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_e

    .line 5554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 5555
    new-instance v17, Landroid/widget/AbsListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 5558
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 5559
    .local v14, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v13, v14, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 5560
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 5562
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5564
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 5565
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v17, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5567
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5568
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 5569
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5570
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 5571
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 5572
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5573
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5574
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 5575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 5576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 5577
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 5578
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 5580
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 5582
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 5583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5585
    :cond_8
    new-instance v17, Landroid/widget/AbsListView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 5597
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 5552
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 5565
    .restart local v10    # "inList":Z
    .restart local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 5600
    :cond_b
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5601
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5602
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5603
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto/16 :goto_1

    .line 5607
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 5608
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 5612
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v16    # "x":F
    :cond_e
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5613
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 5616
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 5617
    .local v5, "childCount":I
    if-lez v5, :cond_15

    .line 5618
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v9

    .line 5619
    .local v9, "firstChildTop":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 5620
    .local v12, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 5621
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 5622
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    if-lt v9, v7, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    sub-int v17, v17, v6

    move/from16 v0, v17

    if-gt v12, v0, :cond_f

    .line 5625
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5626
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5628
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5629
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5631
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5637
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_13

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move/from16 v0, v17

    if-eq v12, v0, :cond_13

    .line 5642
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    .line 5643
    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5645
    :cond_12
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5647
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 5649
    :cond_13
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5650
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5651
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    .line 5652
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5654
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 5655
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    .line 5660
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v9    # "firstChildTop":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildBottom":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_15
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5661
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5666
    .end local v5    # "childCount":I
    :pswitch_3
    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzOnTouchUpForOverScroll(Landroid/widget/AbsListView;)Z

    move-result v17

    if-nez v17, :cond_flyme_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_16

    .line 5667
    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5669
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5670
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5671
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5673
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5674
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_17

    .line 5675
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 5677
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 5540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 7523
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7524
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 7525
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 7528
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 7529
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7530
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7535
    :goto_0
    return-void

    .line 7533
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 6053
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 6054
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6055
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6057
    :cond_0
    return-void
.end method

.method private registerMotionListener()V
    .locals 1

    .prologue
    .line 8990
    const-string v0, "[registerDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsListView;->log(Ljava/lang/String;)V

    .line 8995
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1010
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    .line 1011
    invoke-static {v1}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 1012
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 1014
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4098
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v33, p2, v3

    .line 4099
    .local v33, "rawDeltaY":I
    const/16 v35, 0x0

    .line 4100
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    .line 4101
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 4102
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    .line 4104
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, v3, p2

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4106
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v33, v33, v3

    .line 4107
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    .line 4108
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v34, v3, v4

    .line 4109
    if-eqz p3, :cond_1

    .line 4110
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4111
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4114
    :cond_1
    move/from16 v20, v33

    .line 4115
    .local v20, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, p2, v3

    add-int v21, v3, v34

    .line 4117
    .local v21, "incrementalDeltaY":I
    :goto_1
    const/16 v22, 0x0

    .line 4119
    .local v22, "lastYCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 4127
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    .line 4129
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4132
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    .line 4136
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 4138
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 4139
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_3

    .line 4140
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4145
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_b

    .line 4146
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v23, v3, v4

    .line 4153
    .local v23, "motionIndex":I
    :goto_2
    const/16 v26, 0x0

    .line 4154
    .local v26, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4155
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_4

    .line 4156
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v26

    .line 4160
    :cond_4
    const/16 v18, 0x0

    .line 4161
    .local v18, "atEdge":Z
    if-eqz v21, :cond_5

    .line 4162
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 4166
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4167
    if-eqz v25, :cond_7

    .line 4170
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    .line 4171
    .local v27, "motionViewRealTop":I
    if-eqz v18, :cond_6

    .line 4174
    move/from16 v0, v21

    neg-int v3, v0

    sub-int v4, v27, v26

    sub-int v7, v3, v4

    .line 4176
    .local v7, "overscroll":I
    const/4 v4, 0x0

    sub-int v5, v7, v21

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4178
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int v22, v22, v3

    .line 4179
    if-eqz p3, :cond_6

    .line 4180
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4181
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4221
    .end local v7    # "overscroll":I
    :cond_6
    :goto_3
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4223
    .end local v27    # "motionViewRealTop":I
    :cond_7
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 4296
    .end local v18    # "atEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    :cond_8
    :goto_4
    return-void

    .line 4104
    .end local v20    # "deltaY":I
    .end local v21    # "incrementalDeltaY":I
    .end local v22    # "lastYCorrection":I
    :cond_9
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_0

    .restart local v20    # "deltaY":I
    :cond_a
    move/from16 v21, v20

    .line 4115
    goto/16 :goto_1

    .line 4150
    .restart local v21    # "incrementalDeltaY":I
    .restart local v22    # "lastYCorrection":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto/16 :goto_2

    .line 4184
    .restart local v7    # "overscroll":I
    .restart local v18    # "atEdge":Z
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevTop":I
    .restart local v27    # "motionViewRealTop":I
    :cond_c
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 4187
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    .line 4189
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 4192
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    .line 4193
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4196
    :cond_e
    if-nez v19, :cond_f

    .line 4197
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 4198
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4200
    :cond_f
    if-lez v21, :cond_11

    .line 4201
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4203
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_10

    .line 4204
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4206
    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_3

    .line 4208
    :cond_11
    if-gez v21, :cond_6

    .line 4209
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4211
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12

    .line 4212
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4214
    :cond_12
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_3

    .line 4225
    .end local v7    # "overscroll":I
    .end local v18    # "atEdge":Z
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    .end local v27    # "motionViewRealTop":I
    .end local v31    # "overscrollMode":I
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 4226
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    .line 4227
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v30, v0

    .line 4228
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 4229
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-le v0, v3, :cond_1c

    const/16 v28, 0x1

    .line 4231
    .local v28, "newDirection":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_14

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/widget/AbsListView$FlymeInjector;->mzScrollIfNeeded(Landroid/widget/AbsListView;I)I

    move-result v21

    move/from16 v0, v21

    neg-int v10, v0

    .local v10, "overScrollDistance":I
    if-gez v29, :cond_15

    if-gez v30, :cond_16

    :cond_15
    if-lez v29, :cond_1d

    if-gtz v30, :cond_1d

    .line 4237
    :cond_16
    move/from16 v0, v30

    neg-int v10, v0

    .line 4238
    add-int v21, v21, v10

    .line 4243
    :goto_6
    if-eqz v10, :cond_19

    .line 4244
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v17}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 4246
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    .line 4247
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_17

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_19

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_19

    .line 4250
    :cond_17
    if-lez v33, :cond_1e

    .line 4251
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4253
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_18

    .line 4254
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4256
    :cond_18
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .end local v31    # "overscrollMode":I
    :cond_19
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/widget/AbsListView$FlymeInjector;->mzScrollIfNeeded3(Landroid/widget/AbsListView;I)I

    move-result v21

    if-eqz v21, :cond_1b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 4280
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4284
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v24

    .line 4286
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4287
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4288
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_20

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4289
    add-int v3, p2, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4290
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4292
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_1b
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 4293
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzScrollIfNeeded2(Landroid/widget/AbsListView;)V

    goto/16 :goto_4

    .line 4229
    .end local v10    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_1c
    const/16 v28, -0x1

    goto/16 :goto_5

    .line 4240
    .restart local v10    # "overScrollDistance":I
    .restart local v28    # "newDirection":I
    :cond_1d
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 4258
    .restart local v31    # "overscrollMode":I
    :cond_1e
    if-gez v33, :cond_19

    .line 4259
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4261
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 4262
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4264
    :cond_1f
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_7

    .line 4288
    .end local v31    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_20
    const/4 v3, 0x0

    goto :goto_8
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1799
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1802
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1735
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 1736
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1742
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 1744
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1745
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1747
    :cond_1
    return-void

    .line 1737
    :cond_2
    if-eqz p1, :cond_0

    .line 1738
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 1739
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2867
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2869
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 2870
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2877
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 2878
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2880
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2881
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2882
    return-void

    .line 2871
    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2872
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    move-object v0, v1

    .line 2874
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0
.end method

.method private setupQuickController(I)V
    .locals 21
    .param p1, "where"    # I

    .prologue
    .line 9458
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v15

    .line 9459
    .local v15, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    .line 9460
    .local v9, "h":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v16, v0

    sub-int v16, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    move/from16 v17, v0

    sub-int v7, v16, v17

    .line 9461
    .local v7, "contentW":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v16, v0

    div-int/lit8 v17, v7, 0x2

    add-int v5, v16, v17

    .line 9463
    .local v5, "centerX":I
    const/4 v14, 0x0

    .line 9464
    .local v14, "paddingTop":I
    const/4 v13, 0x0

    .line 9466
    .local v13, "paddingBottom":I
    const/4 v4, 0x0

    .line 9467
    .local v4, "btnW":I
    const/4 v3, 0x0

    .line 9469
    .local v3, "btnH":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/AbsListView;->mQCLocation:I

    .line 9470
    .local v11, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCLocation:I

    .line 9472
    const/4 v6, 0x1

    .line 9473
    .local v6, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 9474
    .local v2, "basePkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v16, "cocktailbarservice"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 9477
    const/4 v6, 0x0

    .line 9482
    :cond_0
    if-eqz v6, :cond_2

    .line 9483
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    .line 9484
    .local v10, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 9485
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 9488
    .local v8, "dm":Landroid/util/DisplayMetrics;
    const/16 v16, 0x0

    aget v16, v10, v16

    if-gez v16, :cond_1

    .line 9489
    const/16 v16, 0x0

    aget v16, v10, v16

    move/from16 v0, v16

    neg-int v12, v0

    .line 9490
    .local v12, "overlappedW":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v12, v0, :cond_1

    .line 9491
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v16, v16, 0x2

    add-int v5, v5, v16

    .line 9496
    .end local v12    # "overlappedW":I
    :cond_1
    const/16 v16, 0x0

    aget v16, v10, v16

    add-int v16, v16, v15

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 9497
    const/16 v16, 0x0

    aget v16, v10, v16

    add-int v16, v16, v15

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    sub-int v12, v16, v17

    .line 9498
    .restart local v12    # "overlappedW":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v12, v0, :cond_2

    .line 9499
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v16, v16, 0x2

    sub-int v5, v5, v16

    .line 9504
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "locOnScr":[I
    .end local v12    # "overlappedW":I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 9505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Rect;->top:I

    .line 9506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 9511
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 9547
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9549
    return-void

    .line 9508
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 9509
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    goto :goto_0

    .line 9513
    :pswitch_0
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 9517
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v11, :cond_4

    .line 9518
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, #android:drawable@list_menu_controller_up#t

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 9519
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, #android:drawable@list_menu_controller_up_pressed#t

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 9522
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 9523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 9524
    new-instance v16, Landroid/graphics/Rect;

    div-int/lit8 v17, v4, 0x2

    sub-int v17, v5, v17

    add-int/lit8 v18, v14, 0x0

    div-int/lit8 v19, v4, 0x2

    add-int v19, v19, v5

    add-int v20, v3, v14

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 9528
    :pswitch_2
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 9532
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v11, :cond_5

    .line 9533
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, #android:drawable@list_menu_controller_down#t

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 9534
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, #android:drawable@list_menu_controller_down_pressed#t

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 9537
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 9538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 9539
    new-instance v16, Landroid/graphics/Rect;

    div-int/lit8 v17, v4, 0x2

    sub-int v17, v5, v17

    sub-int v18, v9, v3

    sub-int v18, v18, v13

    div-int/lit8 v19, v4, 0x2

    add-int v19, v19, v5

    sub-int v20, v9, v13

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 9483
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 9511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPointerIcon(I)Z
    .locals 4
    .param p1, "iconId"    # I

    .prologue
    .line 9261
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9263
    const/4 v1, 0x1

    .line 9266
    :goto_0
    return v1

    .line 9264
    :catch_0
    move-exception v0

    .line 9265
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9266
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 7514
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7515
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 7516
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 7518
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 7520
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4052
    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v1, p2, v7

    .line 4053
    .local v1, "deltaY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4054
    .local v2, "distance":I
    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v7, :cond_2

    move v5, v8

    .line 4055
    .local v5, "overscroll":Z
    :goto_0
    invoke-static {p0, p2}, Landroid/widget/AbsListView$FlymeInjector;->mzStartScrollIfNeeded2(Landroid/widget/AbsListView;I)Z

    move-result v7

    if-nez v7, :cond_flyme_0

    const/4 v7, 0x0

    return v7

    :cond_flyme_0
    if-nez v5, :cond_0

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_7

    .line 4057
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4058
    if-eqz v5, :cond_3

    .line 4059
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4060
    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4065
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4066
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4067
    iget v7, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4068
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 4069
    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4072
    :cond_1
    iget v7, p0, Landroid/widget/AbsListView;->mPointerCount:I

    if-le v7, v8, :cond_5

    .line 4078
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4079
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v9

    .line 4054
    goto :goto_0

    .line 4062
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4063
    if-lez v1, :cond_4

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 4083
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4086
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 4087
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 4088
    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4090
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzStartScrollIfNeeded(Landroid/widget/AbsListView;)V

    move v7, v8

    .line 4094
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_4
    return v7

    :cond_7
    move v7, v9

    goto :goto_4
.end method

.method private twNotifyMultiSelectState(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1558
    const/4 v0, 0x0

    .line 1559
    .local v0, "handledNotifyMultiSelect":Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Landroid/widget/AdapterView;->twNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    .line 1561
    return v0
.end method

.method private unregisterMotionListener()V
    .locals 1

    .prologue
    .line 9001
    const-string v0, "[unregisterDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsListView;->log(Ljava/lang/String;)V

    .line 9005
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1570
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1571
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1572
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1574
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1575
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1576
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1578
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1579
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1574
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1572
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1580
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    invoke-static {p0, v0}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateOnScreenCheckedViews(Landroid/widget/AbsListView;Landroid/view/View;)V

    .line 1581
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1584
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2112
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #android:drawable@list_selector_background#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2114
    return-void
.end method


# virtual methods
.method public addExtraPaddingInBottomHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4416
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 4419
    return-void
.end method

.method public addExtraPaddingInTopHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4407
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 4410
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6197
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 6198
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6199
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 6201
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 6212
    :cond_0
    return-void

    .line 6205
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 6206
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6207
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6208
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6210
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6205
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 7981
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 7940
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6873
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6874
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 6886
    :cond_0
    :goto_0
    return v6

    .line 6878
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6879
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 6880
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 6881
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 6882
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 6883
    .local v4, "lastPosition":I
    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 6885
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 6886
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7853
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8009
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1392
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1393
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1395
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1396
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 7902
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 7903
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7904
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 7905
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7906
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 7909
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2482
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2483
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 2484
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 2485
    mul-int/lit8 v2, v1, 0x64

    .line 2487
    .local v2, "extent":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2488
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2489
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2490
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2491
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2494
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2495
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2496
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2497
    if-lez v3, :cond_1

    .line 2498
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2506
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 2503
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 2506
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2511
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2512
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2513
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 2514
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2515
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2516
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2517
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2518
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2519
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2535
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 2524
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2525
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2526
    const/4 v4, 0x0

    .line 2532
    .local v4, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 2527
    .end local v4    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 2528
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_1

    .line 2530
    .end local v4    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 2541
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2542
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2543
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2545
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2550
    :cond_0
    :goto_0
    return v0

    .line 2548
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 7288
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7290
    const/4 v2, 0x0

    .line 7291
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 7292
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 7293
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 7295
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 7296
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 7298
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 7299
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 7300
    .local v10, "end":I
    const/4 v11, 0x0

    .line 7301
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 7302
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 7303
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 7304
    const/4 v11, 0x1

    .line 7305
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7306
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7311
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 7312
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 7313
    add-int/lit8 v9, v9, -0x1

    .line 7314
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 7315
    const/4 v2, 0x1

    .line 7316
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 7317
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 7291
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 7301
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 7322
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 7326
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 7327
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 7329
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3598
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 6576
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 8155
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8156
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 4762
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    .line 4764
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    .line 4765
    .local v5, "cd":Landroid/content/ClipDescription;
    if-eqz v5, :cond_0

    const-string v13, "cropUri"

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 4766
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    .line 4914
    :goto_0
    return v13

    .line 4770
    :cond_1
    const/4 v13, 0x1

    if-ne v2, v13, :cond_4

    .line 4771
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_2

    .line 4772
    const/4 v13, 0x1

    const/high16 v14, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 4776
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_3
    const/4 v13, 0x1

    goto :goto_0

    .line 4779
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 4780
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 4781
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 4782
    .local v7, "childCount":I
    const/4 v8, 0x0

    .line 4783
    .local v8, "contentBottom":I
    const/4 v10, 0x0

    .line 4784
    .local v10, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    .line 4788
    .local v9, "count":I
    if-eqz v7, :cond_5

    .line 4789
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    .line 4793
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v13, v14, :cond_f

    const/4 v3, 0x1

    .line 4795
    .local v3, "canScrollDown":Z
    :goto_1
    if-nez v3, :cond_7

    if-lez v9, :cond_7

    .line 4796
    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4797
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mBottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_10

    :cond_6
    const/4 v3, 0x1

    .line 4802
    .end local v6    # "child":Landroid/view/View;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v13, :cond_11

    const/4 v4, 0x1

    .line 4804
    .local v4, "canScrollUp":Z
    :goto_3
    if-nez v4, :cond_8

    .line 4805
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    if-lez v13, :cond_8

    .line 4806
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4807
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_12

    const/4 v4, 0x1

    .line 4812
    .end local v6    # "child":Landroid/view/View;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-le v12, v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_a

    :cond_9
    if-lez v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v13

    if-gt v11, v13, :cond_a

    if-nez v4, :cond_13

    if-nez v3, :cond_13

    .line 4815
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 4816
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4819
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_d

    .line 4820
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4823
    :cond_d
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4824
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4825
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4828
    const/4 v13, 0x2

    if-ne v2, v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_e

    .line 4829
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4830
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4833
    :cond_e
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 4793
    .end local v3    # "canScrollDown":Z
    .end local v4    # "canScrollUp":Z
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 4797
    .restart local v3    # "canScrollDown":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 4802
    .end local v6    # "child":Landroid/view/View;
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 4807
    .restart local v4    # "canScrollUp":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_12
    const/4 v4, 0x0

    goto :goto_4

    .line 4837
    .end local v6    # "child":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v13, :cond_14

    .line 4838
    new-instance v13, Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 4840
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_15

    .line 4841
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4843
    :cond_15
    packed-switch v2, :pswitch_data_0

    .line 4914
    :cond_16
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 4845
    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4846
    if-ltz v12, :cond_17

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_17

    .line 4848
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4849
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4851
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4852
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 4854
    :cond_17
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_16

    if-gt v12, v8, :cond_16

    .line 4856
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4857
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4858
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4859
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4860
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 4866
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_18

    .line 4867
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4870
    :cond_18
    if-ltz v12, :cond_19

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_19

    .line 4872
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4873
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4875
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4876
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 4878
    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_16

    if-gt v12, v8, :cond_16

    .line 4880
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4881
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4882
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4883
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4884
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 4891
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_1a

    .line 4892
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4893
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4899
    :cond_1a
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 4900
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4902
    :cond_1b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4904
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4905
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4906
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4907
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    .line 4843
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    .line 3063
    const/4 v4, 0x0

    .line 3064
    .local v4, "saveCount":I
    const/4 v7, 0x0

    .line 3065
    .local v7, "trackChildTop":I
    const/4 v2, 0x0

    .line 3066
    .local v2, "firstChildPosition":I
    const/4 v3, 0x0

    .line 3068
    .local v3, "lastChildPosition":I
    iget v9, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v9, v9, 0x22

    const/16 v10, 0x22

    if-ne v9, v10, :cond_5

    move v0, v8

    .line 3069
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3070
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3071
    iget v5, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 3072
    .local v5, "scrollX":I
    iget v6, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3073
    .local v6, "scrollY":I
    iget v9, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v10, v6

    iget v11, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v11, v5

    iget v12, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v12, v6

    iget v13, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v12, v13

    iget v13, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v9, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v9, v9, -0x23

    iput v9, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .end local v5    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v9, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/lit8 v9, v9, 0x22

    iput v9, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    :cond_3
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-ne v9, v8, :cond_4

    iget v8, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    if-nez v8, :cond_6

    iget v8, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    if-nez v8, :cond_6

    :cond_4
    :goto_1
    invoke-static/range {p0 .. p1}, Landroid/widget/AbsListView$FlymeInjector;->mzDispatchDraw(Landroid/widget/AbsListView;Landroid/graphics/Canvas;)V

    return-void

    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 3099
    .restart local v0    # "clipToPadding":Z
    .restart local v1    # "drawSelectorOnTop":Z
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 3100
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    .line 3102
    iget v8, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    if-lt v8, v2, :cond_8

    iget v8, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    if-gt v8, v3, :cond_8

    .line 3103
    iget v8, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 3104
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_7

    .line 3105
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    .line 3107
    :cond_7
    iget v8, p0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 3110
    :cond_8
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    iget v9, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    if-ge v8, v9, :cond_9

    iget v8, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    :goto_2
    iput v8, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 3111
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    iget v9, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    if-le v8, v9, :cond_a

    iget v8, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    :goto_3
    iput v8, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 3113
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    iget v10, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    iget v11, p0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    iget v12, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3114
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3115
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 3110
    :cond_9
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    goto :goto_2

    .line 3111
    :cond_a
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    goto :goto_3
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4423
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 4425
    .local v4, "action":I
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4426
    invoke-static {}, Landroid/text/MultiSelection;->isTextViewHovered()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 4428
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 4430
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 4436
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 4439
    const/16 v22, 0x9

    move/from16 v0, v22

    if-ne v4, v0, :cond_c

    .line 4440
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    .line 4442
    .local v19, "toolType":I
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 4445
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHoveringUIEnabled()Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 4446
    :cond_0
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 4450
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 4452
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "pen_hovering"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    const/4 v14, 0x1

    .line 4454
    .local v14, "isHoveringOn":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "pen_hovering_list_scroll"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    const/4 v13, 0x1

    .line 4456
    .local v13, "isHoverListScrollOn":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "car_mode_on"

    const/16 v24, 0x0

    const/16 v25, -0x3

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    const/4 v12, 0x1

    .line 4459
    .local v12, "isCarModeOn":Z
    :goto_3
    if-eqz v14, :cond_2

    if-eqz v12, :cond_3

    .line 4460
    :cond_2
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 4463
    :cond_3
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 4465
    const/16 v22, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->showPointerIcon(I)Z

    .line 4466
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 4469
    :cond_4
    if-nez v13, :cond_5

    .line 4470
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 4475
    .end local v12    # "isCarModeOn":Z
    .end local v13    # "isHoverListScrollOn":Z
    .end local v14    # "isHoveringOn":Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 4476
    const/16 v16, 0x0

    .line 4477
    .local v16, "isMouseHoveringOn":Z
    const/4 v15, 0x0

    .line 4479
    .local v15, "isMouseHoverListScrollOn":Z
    if-eqz v16, :cond_6

    if-nez v15, :cond_7

    .line 4480
    :cond_6
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 4501
    .end local v15    # "isMouseHoverListScrollOn":Z
    .end local v16    # "isMouseHoveringOn":Z
    .end local v19    # "toolType":I
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    move/from16 v22, v0

    if-nez v22, :cond_11

    .line 4502
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    .line 4749
    :goto_5
    return v22

    .line 4433
    :cond_8
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    goto/16 :goto_0

    .line 4452
    .restart local v19    # "toolType":I
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 4454
    .restart local v14    # "isHoveringOn":Z
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 4456
    .restart local v13    # "isHoverListScrollOn":Z
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 4483
    .end local v13    # "isHoverListScrollOn":Z
    .end local v14    # "isHoveringOn":Z
    .end local v19    # "toolType":I
    :cond_c
    const/16 v22, 0x7

    move/from16 v0, v22

    if-ne v4, v0, :cond_10

    .line 4484
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 4486
    :cond_e
    const/16 v22, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->showPointerIcon(I)Z

    .line 4487
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto :goto_4

    .line 4488
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 4489
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->showPointerIcon(I)Z

    .line 4490
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    .line 4493
    :cond_10
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v4, v0, :cond_7

    .line 4494
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 4495
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->showPointerIcon(I)Z

    .line 4496
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    .line 4506
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 4507
    .local v20, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 4508
    .local v21, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .line 4509
    .local v8, "childCount":I
    const/4 v10, 0x0

    .line 4510
    .local v10, "contentTop":I
    const/4 v9, 0x0

    .line 4511
    .local v9, "contentBottom":I
    const/16 v18, 0x0

    .line 4512
    .local v18, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v11

    .line 4517
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    if-nez v22, :cond_12

    .line 4518
    new-instance v22, Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 4521
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v22, v0

    if-lez v22, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v22, v0

    if-gtz v22, :cond_14

    .line 4522
    :cond_13
    const/16 v22, 0x1

    const/high16 v23, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 4530
    const/16 v22, 0x1

    const/high16 v23, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 4539
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_27

    .line 4540
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 4541
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v9, v22, v23

    .line 4548
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    add-int v22, v22, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_28

    const/4 v5, 0x1

    .line 4550
    .local v5, "canScrollDown":Z
    :goto_7
    if-nez v5, :cond_16

    if-lez v11, :cond_16

    .line 4551
    add-int/lit8 v22, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4552
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_15

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_29

    :cond_15
    const/4 v5, 0x1

    .line 4557
    .end local v7    # "child":Landroid/view/View;
    :cond_16
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    if-lez v22, :cond_2a

    const/4 v6, 0x1

    .line 4559
    .local v6, "canScrollUp":Z
    :goto_9
    if-nez v6, :cond_17

    .line 4560
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v22

    if-lez v22, :cond_17

    .line 4561
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4562
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2b

    const/4 v6, 0x1

    .line 4566
    .end local v7    # "child":Landroid/view/View;
    :cond_17
    :goto_a
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2c

    const/16 v17, 0x1

    .line 4568
    .local v17, "isPossibleTooltype":Z
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1d

    :cond_18
    if-lez v20, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-gt v0, v1, :cond_1d

    if-nez v6, :cond_19

    if-eqz v5, :cond_1d

    :cond_19
    move/from16 v0, v21

    if-lt v0, v10, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_1a

    if-nez v6, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v22, v0

    if-nez v22, :cond_1d

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1b

    move/from16 v0, v21

    if-gt v0, v9, :cond_1b

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v22, v0

    if-nez v22, :cond_1d

    :cond_1b
    if-eqz v17, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1d

    :cond_1c
    if-eqz v17, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLockScreenMode()Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 4575
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 4576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4577
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->showPointerIcon(I)Z

    .line 4580
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 4581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4584
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_21

    :cond_20
    if-lez v20, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_22

    .line 4585
    :cond_21
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4588
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_24

    .line 4589
    :cond_23
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->showPointerIcon(I)Z

    .line 4591
    :cond_24
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4592
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4593
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4594
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 4596
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v4, v0, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    move/from16 v22, v0

    if-eqz v22, :cond_25

    .line 4597
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 4598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_25

    .line 4599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4604
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v22, v0

    if-eqz v22, :cond_26

    .line 4605
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    .line 4606
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 4609
    :cond_26
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_5

    .line 4543
    .end local v5    # "canScrollDown":Z
    .end local v6    # "canScrollUp":Z
    .end local v17    # "isPossibleTooltype":Z
    :cond_27
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 4544
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    move/from16 v23, v0

    sub-int v9, v22, v23

    goto/16 :goto_6

    .line 4548
    :cond_28
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 4552
    .restart local v5    # "canScrollDown":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_29
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 4557
    .end local v7    # "child":Landroid/view/View;
    :cond_2a
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 4562
    .restart local v6    # "canScrollUp":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_2b
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 4566
    .end local v7    # "child":Landroid/view/View;
    :cond_2c
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 4612
    .restart local v17    # "isPossibleTooltype":Z
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v22, v0

    if-nez v22, :cond_2e

    .line 4613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4616
    :cond_2e
    packed-switch v4, :pswitch_data_0

    .line 4749
    :cond_2f
    :goto_c
    :pswitch_0
    const/16 v22, 0x1

    goto/16 :goto_5

    .line 4618
    :pswitch_1
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4620
    move/from16 v0, v21

    if-lt v0, v10, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_30

    .line 4622
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_2f

    .line 4623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4624
    const/16 v22, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->showPointerIcon(I)Z

    .line 4626
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4627
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4630
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->isQCSupported()Z

    move-result v22

    if-eqz v22, :cond_2f

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->canScrollVertically(I)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 4631
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->setupQuickController(I)V

    .line 4632
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    goto :goto_c

    .line 4635
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2f

    move/from16 v0, v21

    if-gt v0, v9, :cond_2f

    .line 4637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_2f

    .line 4638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4639
    const/16 v22, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->showPointerIcon(I)Z

    .line 4641
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4645
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->isQCSupported()Z

    move-result v22

    if-eqz v22, :cond_2f

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->canScrollVertically(I)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 4646
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->setupQuickController(I)V

    .line 4647
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    goto/16 :goto_c

    .line 4655
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v22, v0

    if-nez v22, :cond_31

    .line 4656
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4657
    const/16 v22, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4658
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_5

    .line 4661
    :cond_31
    move/from16 v0, v21

    if-lt v0, v10, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_34

    .line 4663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_2f

    .line 4664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4667
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_33

    .line 4668
    :cond_32
    const/16 v22, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->showPointerIcon(I)Z

    .line 4671
    :cond_33
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4675
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->isQCSupported()Z

    move-result v22

    if-eqz v22, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v22, v0

    if-nez v22, :cond_2f

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->canScrollVertically(I)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 4676
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->setupQuickController(I)V

    .line 4677
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    goto/16 :goto_c

    .line 4680
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_37

    move/from16 v0, v21

    if-gt v0, v9, :cond_37

    .line 4682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_2f

    .line 4683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4686
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_36

    .line 4687
    :cond_35
    const/16 v22, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->showPointerIcon(I)Z

    .line 4690
    :cond_36
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4694
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->isQCSupported()Z

    move-result v22

    if-eqz v22, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v22, v0

    if-nez v22, :cond_2f

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->canScrollVertically(I)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 4695
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->setupQuickController(I)V

    .line 4696
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    goto/16 :goto_c

    .line 4701
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_38

    .line 4702
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4705
    :cond_38
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->showPointerIcon(I)Z

    .line 4707
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4708
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4709
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4710
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4711
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    goto/16 :goto_c

    .line 4717
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_39

    .line 4718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4721
    :cond_39
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->showPointerIcon(I)Z

    .line 4723
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4724
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4725
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4726
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4727
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 4730
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3a

    .line 4734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->QC_ICON_HIDE_DELAY:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4737
    :cond_3a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    move/from16 v22, v0

    if-eqz v22, :cond_3b

    .line 4738
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 4739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3b

    .line 4740
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4744
    :cond_3b
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_5

    .line 4616
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 3941
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4924
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 4925
    .local v25, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 4926
    .local v26, "y":I
    const/4 v13, 0x0

    .line 4927
    .local v13, "contentTop":I
    const/4 v12, 0x0

    .line 4928
    .local v12, "contentBottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 4929
    .local v6, "action":I
    const/16 v20, 0x0

    .line 4931
    .local v20, "needToScroll":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 4932
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    .line 4935
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 4936
    new-instance v27, Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 4939
    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 4940
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v20

    .line 4942
    const/16 v27, 0xd3

    move/from16 v0, v27

    if-ne v6, v0, :cond_3

    .line 4943
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 4944
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "car_mode_on"

    const/16 v29, 0x0

    const/16 v30, -0x3

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    .line 4947
    .local v18, "isCarModeOn":Z
    :goto_0
    if-eqz v18, :cond_2

    .line 4948
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 4950
    :cond_2
    sget-boolean v27, Landroid/widget/AbsListView;->IS_DEVICE_H:Z

    if-eqz v27, :cond_3

    .line 4951
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 4955
    .end local v18    # "isCarModeOn":Z
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 4956
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 4959
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v27, v0

    if-lez v27, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v27, v0

    if-gtz v27, :cond_6

    .line 4960
    :cond_5
    const/16 v27, 0x1

    const/high16 v28, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    invoke-static/range {v27 .. v29}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    const/high16 v28, 0x3f000000    # 0.5f

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 4964
    const/16 v27, 0x1

    const/high16 v28, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    invoke-static/range {v27 .. v29}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    const/high16 v28, 0x3f000000    # 0.5f

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 4969
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 4970
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 4971
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v12, v27, v28

    .line 4977
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    move/from16 v0, v26

    if-lt v0, v13, :cond_7

    move/from16 v0, v26

    if-le v0, v12, :cond_a

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    const/16 v28, 0xd4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_a

    .line 4979
    const/16 v27, 0x1

    .line 5311
    :goto_2
    return v27

    .line 4944
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 4973
    :cond_9
    const/4 v13, 0x0

    .line 4974
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    goto :goto_1

    .line 4982
    :cond_a
    sparse-switch v6, :sswitch_data_0

    .line 5311
    :cond_b
    :goto_3
    :sswitch_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    goto :goto_2

    .line 4985
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 4986
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsQCShown:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 4987
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 4988
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4990
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 4991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4995
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4997
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    .line 4998
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 4999
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 5002
    :cond_e
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    goto/16 :goto_3

    .line 5010
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 5012
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 5016
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2a

    .line 5017
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v14

    .line 5019
    .local v14, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_13

    .line 5020
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 5021
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 5022
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStart(II)V

    .line 5023
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 5025
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 5027
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    .line 5028
    const/16 v24, 0x0

    .line 5029
    .local v24, "oldDistanceFromTop":I
    const/16 v23, 0x0

    .line 5030
    .local v23, "oldDistanceFromBottom":I
    const/16 v22, 0x0

    .line 5031
    .local v22, "newDistanceFromTop":I
    const/16 v21, 0x0

    .line 5033
    .local v21, "newDistanceFromBottom":I
    add-int/lit8 v16, v14, -0x1

    .local v16, "i":I
    :goto_4
    if-ltz v16, :cond_f

    .line 5034
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5035
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_1f

    .line 5036
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    .line 5037
    .local v11, "childTop":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5040
    .local v8, "childBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v11, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v8, :cond_1e

    .line 5041
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 5042
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v16

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 5069
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v11    # "childTop":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_11

    .line 5070
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    .line 5071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 5072
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildTop:I

    .line 5075
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    .line 5076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    .line 5077
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildBottom:I

    .line 5084
    .end local v16    # "i":I
    .end local v21    # "newDistanceFromBottom":I
    .end local v22    # "newDistanceFromTop":I
    .end local v23    # "oldDistanceFromBottom":I
    .end local v24    # "oldDistanceFromTop":I
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_12

    .line 5085
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 5087
    :cond_12
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 5090
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    if-nez v27, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    if-nez v27, :cond_14

    .line 5091
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 5092
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 5093
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStart(II)V

    .line 5094
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 5097
    :cond_14
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 5098
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 5100
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    if-gez v27, :cond_23

    .line 5101
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 5106
    :cond_15
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 5108
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    :goto_7
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 5109
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    :goto_8
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 5110
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v27, v0

    :goto_9
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 5111
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    :goto_a
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 5113
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v14, :cond_29

    .line 5114
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5115
    .restart local v7    # "child":Landroid/view/View;
    if-eqz v7, :cond_1d

    .line 5116
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5117
    .local v9, "childLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    .line 5118
    .restart local v11    # "childTop":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    .line 5119
    .local v10, "childRight":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5121
    .restart local v8    # "childBottom":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-nez v27, :cond_1d

    .line 5122
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v11, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v8, :cond_1c

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v10, :cond_19

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v9, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v9, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v10, :cond_28

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v11, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v8, :cond_1c

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v11, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v11, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v8, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v8, :cond_28

    .line 5126
    :cond_1c
    add-int/lit8 v27, v9, 0x1

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 5127
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1d

    .line 5128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5129
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 5130
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 5113
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    :cond_1d
    :goto_c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_b

    .line 5047
    .restart local v8    # "childBottom":I
    .restart local v11    # "childTop":I
    .restart local v21    # "newDistanceFromBottom":I
    .restart local v22    # "newDistanceFromTop":I
    .restart local v23    # "oldDistanceFromBottom":I
    .restart local v24    # "oldDistanceFromTop":I
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    sub-int v27, v27, v11

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v22

    .line 5048
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    sub-int v27, v27, v8

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v21

    .line 5050
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_20

    .line 5051
    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    .line 5052
    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    .line 5053
    move/from16 v24, v22

    .line 5054
    move/from16 v23, v21

    .line 5033
    .end local v8    # "childBottom":I
    .end local v11    # "childTop":I
    :cond_1f
    :goto_d
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_4

    .line 5056
    .restart local v8    # "childBottom":I
    .restart local v11    # "childTop":I
    :cond_20
    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_21

    .line 5057
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v16

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    .line 5058
    move/from16 v24, v22

    .line 5061
    :cond_21
    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_1f

    .line 5062
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v16

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    .line 5063
    move/from16 v23, v21

    goto :goto_d

    .line 5081
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v11    # "childTop":I
    .end local v16    # "i":I
    .end local v21    # "newDistanceFromBottom":I
    .end local v22    # "newDistanceFromTop":I
    .end local v23    # "oldDistanceFromBottom":I
    .end local v24    # "oldDistanceFromTop":I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    goto/16 :goto_5

    .line 5102
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v12, :cond_15

    .line 5103
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    goto/16 :goto_6

    .line 5108
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v27, v0

    goto/16 :goto_7

    .line 5109
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    goto/16 :goto_8

    .line 5110
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    goto/16 :goto_9

    .line 5111
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    goto/16 :goto_a

    .line 5133
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childBottom":I
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    .restart local v11    # "childTop":I
    .restart local v16    # "i":I
    :cond_28
    add-int/lit8 v27, v9, 0x1

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 5134
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1d

    .line 5135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5136
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 5137
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto/16 :goto_c

    .line 5143
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    :cond_29
    const/16 v20, 0x1

    .line 5146
    .end local v14    # "count":I
    .end local v16    # "i":I
    :cond_2a
    if-eqz v20, :cond_33

    .line 5147
    add-int/lit8 v27, v13, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v27, v0

    add-int v27, v27, v13

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_2e

    .line 5148
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_2b

    .line 5149
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2b

    .line 5153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5157
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2c

    .line 5158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5159
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5194
    :cond_2c
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2d

    .line 5195
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5203
    :cond_2d
    :goto_f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    goto/16 :goto_3

    .line 5162
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v27, v0

    sub-int v27, v12, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_30

    move/from16 v0, v26

    if-gt v0, v12, :cond_30

    .line 5163
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_2f

    .line 5164
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5167
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2f

    .line 5168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5172
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2c

    .line 5173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5174
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 5178
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_31

    .line 5179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5182
    :cond_31
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5183
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5184
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_32

    .line 5188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5191
    :cond_32
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_e

    .line 5197
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2d

    .line 5199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_2d

    .line 5200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_f

    .line 5208
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_36

    .line 5210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_34

    .line 5211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5214
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_35

    .line 5215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5218
    :cond_35
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 5221
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    .line 5222
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 5223
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 5228
    :cond_36
    :sswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-nez v27, :cond_3e

    .line 5229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_37

    .line 5230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5233
    :cond_37
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5234
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5235
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5236
    const/16 v19, 0x0

    .line 5238
    .local v19, "isNeedActionMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    .line 5240
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    move/from16 v27, v0

    if-eqz v27, :cond_3e

    .line 5241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3d

    .line 5243
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_39
    :goto_10
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 5244
    .local v15, "dragSelectedViewPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_39

    .line 5245
    const/16 v19, 0x1

    goto :goto_10

    .line 5249
    .end local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    :cond_3a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3b

    .line 5250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move-object/from16 v27, v0

    if-nez v27, :cond_3b

    const/16 v27, 0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_3b

    .line 5251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 5255
    :cond_3b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsTwOnClickEnabled:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3d

    .line 5256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3c
    :goto_11
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 5257
    .restart local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_3c

    .line 5258
    const/16 v27, 0x0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v30

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-wide/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_11

    .line 5263
    .end local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPenSelectVibrator:Landroid/widget/AbsListView$PenSelectVibrator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView$PenSelectVibrator;->playVibrator()V

    .line 5264
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStop(II)V

    .line 5269
    .end local v19    # "isNeedActionMode":Z
    :cond_3e
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 5270
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 5271
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 5273
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 5274
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 5275
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 5276
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 5278
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 5279
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 5280
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 5281
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 5283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 5284
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    .line 5285
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 5286
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 5288
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 5289
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 5290
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    .line 5291
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    .line 5292
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildTop:I

    .line 5293
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    .line 5294
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    .line 5295
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildBottom:I

    .line 5297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3f

    .line 5298
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5302
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 5303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_3

    .line 4982
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_5
        0xd5 -> :sswitch_3
    .end sparse-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 5989
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 5990
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_3

    .line 5991
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5992
    .local v4, "scrollY":I
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 5993
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 5994
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    .line 5996
    .local v5, "width":I
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v6, v4

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5997
    .local v1, "edgeY":I
    int-to-float v6, v1

    invoke-virtual {p1, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5998
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5999
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6000
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v9, v9, v6, v7}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 6003
    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6005
    .end local v1    # "edgeY":I
    .end local v3    # "restoreCount":I
    .end local v5    # "width":I
    :cond_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 6006
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 6007
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    .line 6008
    .restart local v5    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    .line 6010
    .local v2, "height":I
    neg-int v0, v5

    .line 6011
    .local v0, "edgeX":I
    iget v6, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v6, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6012
    .restart local v1    # "edgeY":I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6013
    const/high16 v6, 0x43340000    # 180.0f

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 6014
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6015
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6016
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0, v9, v6, v7, v8}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 6020
    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6025
    .end local v0    # "edgeX":I
    .end local v1    # "edgeY":I
    .end local v2    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "scrollY":I
    .end local v5    # "width":I
    :cond_3
    iget v6, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eqz v6, :cond_4

    .line 6026
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 6028
    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3347
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3348
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3349
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 9022
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9024
    return-void
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 7141
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7142
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 7147
    :cond_0
    :goto_0
    return v1

    .line 7146
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 7147
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 2023
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2033
    .end local p0    # "this":Landroid/widget/AbsListView;
    :goto_0
    return-object p0

    .line 2030
    .restart local p0    # "this":Landroid/widget/AbsListView;
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2031
    const/4 p0, 0x0

    goto :goto_0

    .line 2033
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 5935
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5936
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5938
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5939
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 5940
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 7993
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7999
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8004
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2672
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2673
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 2674
    check-cast p1, Landroid/view/View;

    .line 2675
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2678
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2679
    const/4 p1, 0x0

    .line 2682
    .end local p1    # "focusedView":Landroid/view/View;
    :cond_1
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2572
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2573
    .local v1, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2574
    .local v2, "fadeEdge":F
    if-nez v1, :cond_1

    .line 2584
    .end local v2    # "fadeEdge":F
    :cond_0
    :goto_0
    return v2

    .line 2577
    .restart local v2    # "fadeEdge":F
    :cond_1
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2578
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2581
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2582
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 2583
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2584
    .local v3, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 3142
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 8070
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1370
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1371
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1382
    :cond_1
    return-object v3

    .line 1374
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1375
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1376
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1378
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1379
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1338
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1339
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1342
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1355
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1592
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzGetChoiceMode(Landroid/widget/AbsListView;)I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3785
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2099
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2100
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2103
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2104
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2109
    :goto_0
    return-void

    .line 2107
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 7084
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 7074
    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 8904
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 8905
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8906
    .local v0, "childCount":I
    sub-int v3, p1, v1

    .line 8907
    .local v3, "index":I
    if-ltz v3, :cond_0

    if-ge v3, v0, :cond_0

    .line 8909
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 8910
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 8917
    :goto_0
    return v2

    .line 8913
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 8914
    .restart local v4    # "view":Landroid/view/View;
    iget v5, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 8915
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 8916
    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 3127
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2758
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2770
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2782
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2746
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 3137
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2730
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2731
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2733
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1982
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 1983
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 1992
    :goto_0
    :pswitch_0
    return v1

    .line 1987
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1990
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 1983
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3270
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 8038
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2425
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2426
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2428
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2555
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2556
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2557
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2566
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2560
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2561
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2564
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2565
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2566
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 3132
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 1075
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 8033
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1827
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1830
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 7333
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 7334
    .local v1, "count":I
    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 7335
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 7338
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iget v11, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 7340
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    .line 7341
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 7342
    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 7346
    :cond_0
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7347
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 7351
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7353
    if-lez v1, :cond_f

    .line 7358
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v10, :cond_8

    .line 7360
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 7361
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 7363
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 7364
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7480
    :cond_2
    :goto_0
    return-void

    .line 7366
    :cond_3
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    .line 7367
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_4

    .line 7368
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 7369
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .line 7372
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7373
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 7374
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7375
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7376
    .local v2, "lastBottom":I
    :goto_1
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_6

    if-gt v2, v5, :cond_6

    .line 7378
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2    # "lastBottom":I
    :cond_5
    move v2, v5

    .line 7375
    goto :goto_1

    .line 7383
    .restart local v2    # "lastBottom":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 7386
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_7
    iget v10, p0, Landroid/widget/AbsListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 7434
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    .line 7436
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 7439
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9

    .line 7440
    add-int/lit8 v6, v1, -0x1

    .line 7442
    :cond_9
    if-gez v6, :cond_a

    .line 7443
    const/4 v6, 0x0

    .line 7447
    :cond_a
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7449
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d

    .line 7450
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 7388
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 7393
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7394
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    goto :goto_0

    .line 7400
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 7401
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8

    .line 7403
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7404
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8

    .line 7406
    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 7408
    iget-wide v8, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 7411
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7419
    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7415
    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_2

    .line 7427
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7428
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    goto/16 :goto_0

    .line 7454
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_d
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7455
    if-ltz v7, :cond_f

    .line 7456
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7463
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_2

    .line 7471
    :cond_f
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7472
    iput v13, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 7473
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 7474
    iput v13, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 7475
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 7476
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 7477
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 7478
    iput v13, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 7479
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_10
    move v8, v9

    .line 7471
    goto :goto_3

    .line 7386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 7915
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 7098
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 7099
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 7100
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7102
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 7103
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7105
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 7106
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 7107
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 7109
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 7154
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 7155
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 7156
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 7157
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 7158
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1931
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1932
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 1934
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1935
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1937
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1938
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1818
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v2, :cond_2

    .line 1819
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 1821
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1819
    goto :goto_0

    .line 1821
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1841
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1842
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1844
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 7594
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1321
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 7

    .prologue
    .line 4338
    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 4339
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 4340
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 4342
    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 4343
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 4344
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_0

    .line 4352
    :cond_0
    const/4 v1, 0x0

    .line 4353
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 4355
    :goto_0
    return v1

    .line 4353
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 9301
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    .prologue
    .line 1901
    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 3122
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2047
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1914
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2124
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2094
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .locals 1

    .prologue
    .line 6682
    invoke-super {p0}, Landroid/widget/AdapterView;->isTwShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTwUsingAdapterView()Z
    .locals 1

    .prologue
    .line 6707
    const/4 v0, 0x1

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1870
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3392
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3393
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3394
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3278
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3315
    :cond_0
    :goto_0
    return-void

    .line 3282
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3283
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3284
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3287
    iget v5, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3289
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3290
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3291
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3293
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3295
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 3296
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3297
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 3298
    if-eqz v1, :cond_5

    .line 3299
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3305
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 3306
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_6

    .line 3307
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 3311
    :goto_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3312
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3302
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 3309
    :cond_6
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2664
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const-wide/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2798
    const-string/jumbo v5, "obtainView"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2800
    aput-boolean v7, p2, v7

    .line 2804
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 2805
    .local v3, "transientView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 2806
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2809
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v5, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 2810
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2813
    .local v4, "updatedView":Landroid/view/View;
    if-eq v4, v3, :cond_0

    .line 2814
    invoke-direct {p0, v4, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2815
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2820
    .end local v4    # "updatedView":Landroid/view/View;
    :cond_0
    aput-boolean v8, p2, v7

    .line 2863
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v3    # "transientView":Landroid/view/View;
    :goto_0
    return-object v3

    .line 2824
    .restart local v3    # "transientView":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 2825
    .local v2, "scrapView":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2826
    .local v0, "child":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2827
    if-eq v0, v2, :cond_3

    .line 2829
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2838
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 2839
    const/4 v3, 0x0

    goto :goto_0

    .line 2831
    :cond_3
    aput-boolean v8, p2, v7

    .line 2833
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1

    .line 2842
    :cond_4
    iget v5, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v5, :cond_5

    .line 2843
    iget v5, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2846
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_6

    .line 2847
    invoke-virtual {v0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2850
    :cond_6
    invoke-direct {p0, v0, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2852
    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2853
    iget-object v5, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v5, :cond_7

    .line 2854
    new-instance v5, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2856
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v5

    if-nez v5, :cond_8

    .line 2857
    iget-object v5, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2861
    :cond_8
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    move-object v3, v0

    .line 2863
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 3398
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3400
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 3401
    .local v1, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3404
    iget-boolean v2, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_0

    .line 3405
    iget-object v2, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3409
    :cond_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v2, :cond_1

    .line 3410
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3413
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v2, :cond_2

    .line 3414
    new-instance v2, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3415
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3418
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3419
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 3420
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 3423
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_3

    .line 3424
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3427
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_4

    .line 3428
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Landroid/preference/PreferenceGroupAdapter;

    iget v0, v2, Landroid/preference/PreferenceGroupAdapter;->mTwNeedPaddingTop:I

    .line 3429
    .local v0, "extraPaddingTop":I
    iget v2, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-nez v2, :cond_4

    if-lez v0, :cond_4

    .line 3430
    iput v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .line 3433
    .end local v0    # "extraPaddingTop":I
    :cond_4
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3603
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3604
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3605
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3607
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3608
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3610
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3611
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3613
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3614
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3616
    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 3354
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3356
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3382
    :cond_0
    :goto_0
    return-object v3

    .line 3362
    :cond_1
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3367
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3368
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3369
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3370
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3371
    move v0, v2

    .line 3377
    :cond_2
    if-ltz v0, :cond_0

    .line 3378
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    .line 3369
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 7689
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7690
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 7691
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7692
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 7694
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7695
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7696
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 7698
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3437
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3439
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3442
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3445
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3447
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3448
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3449
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3450
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3451
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3454
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3455
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3456
    iput-object v4, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3459
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3460
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3461
    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3464
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3465
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3466
    iput-object v4, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3469
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3470
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3473
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3474
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3477
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3478
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3481
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3482
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3485
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3486
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3487
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3490
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v1, v5, :cond_9

    .line 3491
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3495
    :cond_9
    iget-boolean v1, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a

    .line 3496
    iget-object v1, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3501
    :cond_a
    iget v1, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eqz v1, :cond_b

    .line 3502
    iput v3, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 3505
    :cond_b
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 3506
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3507
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 7484
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 7485
    sparse-switch p1, :sswitch_data_0

    .line 7497
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 7498
    return-void

    .line 7487
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7488
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 7492
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7493
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 7497
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 7485
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 7985
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 7986
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7987
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 7989
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2433
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2434
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2435
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2438
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2439
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2440
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2442
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 2444
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 5908
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5922
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 5910
    :pswitch_0
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 5911
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 5912
    .local v1, "vscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 5913
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 5914
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5915
    const/4 v2, 0x1

    goto :goto_0

    .line 5908
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 7920
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7922
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 7923
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 7932
    :cond_0
    :goto_0
    return-void

    .line 7927
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7928
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1961
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1962
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1963
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 1967
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1968
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1969
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1970
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1972
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1974
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1975
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1976
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1979
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2965
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2966
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 2992
    :cond_0
    :goto_0
    return-void

    .line 2971
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2972
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    .line 2976
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 2977
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2978
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2983
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2984
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2985
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2988
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2989
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2990
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 2980
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6069
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6070
    const/4 v0, 0x1

    .line 6073
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6078
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6081
    .local v0, "actionMasked":I
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v9, :cond_0

    .line 6082
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v9}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 6085
    :cond_0
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v9, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    move v7, v8

    .line 6167
    :cond_2
    :goto_0
    return v7

    .line 6093
    :cond_3
    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v9, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 6097
    :cond_4
    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    move v7, v8

    .line 6167
    goto :goto_0

    .line 6099
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6100
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_6

    const/4 v9, 0x5

    if-ne v3, v9, :cond_7

    .line 6101
    :cond_6
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_0

    .line 6105
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 6106
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 6107
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6109
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 6110
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_8

    if-ltz v1, :cond_8

    .line 6113
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6114
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 6115
    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 6116
    iput v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 6117
    iput v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6118
    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6119
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 6121
    .end local v4    # "v":Landroid/view/View;
    :cond_8
    const/high16 v9, -0x80000000

    iput v9, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 6122
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 6123
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6124
    iput v8, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 6125
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 6126
    if-ne v3, v11, :cond_5

    goto :goto_0

    .line 6133
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    .line 6135
    :pswitch_3
    iget v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 6136
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_9

    .line 6137
    const/4 v2, 0x0

    .line 6138
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6140
    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v6, v9

    .line 6141
    .restart local v6    # "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 6142
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6143
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v10}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_0

    .line 6153
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_4
    iput v10, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6154
    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6155
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 6156
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6157
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 6162
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 6097
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 6133
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 3830
    sparse-switch p1, :sswitch_data_0

    .line 3845
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3833
    :sswitch_0
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 3837
    :sswitch_1
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 3840
    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-ne v0, v1, :cond_0

    .line 3841
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto :goto_0

    .line 3830
    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_2
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 3850
    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3851
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 3853
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3854
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3934
    :goto_0
    return v3

    .line 3857
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3861
    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3862
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3863
    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v6, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v6, v7}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3864
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3866
    :cond_1
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    goto :goto_0

    .line 3871
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 3934
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 3877
    :sswitch_0
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_4

    .line 3878
    iget v4, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    if-nez v4, :cond_6

    .line 3879
    iput p1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 3885
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 3889
    iget v4, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3891
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_5

    if-eqz v1, :cond_5

    .line 3892
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    .line 3893
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3894
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3895
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3898
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 3899
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 3908
    :cond_5
    :goto_3
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    .line 3909
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    goto :goto_1

    .line 3881
    :cond_6
    iput p1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    goto :goto_2

    .line 3901
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3902
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3904
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    goto :goto_3

    .line 3916
    :sswitch_1
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    .line 3920
    :sswitch_2
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 3921
    iput v8, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 3922
    iput v8, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 3923
    iput v6, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 3924
    iput v6, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    goto :goto_1

    .line 3927
    :sswitch_3
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-ne v4, v3, :cond_3

    .line 3928
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto/16 :goto_1

    .line 3871
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1f -> :sswitch_3
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x71 -> :sswitch_1
        0x72 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzOnLayout(Landroid/widget/AbsListView;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 2638
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzOnLayout2(Landroid/widget/AbsListView;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2591
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2592
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2594
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2595
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2596
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2597
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2598
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2601
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2602
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2603
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2604
    .local v3, "listBottom":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2605
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2606
    .local v1, "lastBottom":I
    :goto_0
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2609
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_1
    return-void

    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_2
    move v1, v3

    .line 2605
    goto :goto_0

    .line 2606
    .restart local v1    # "lastBottom":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 5972
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5973
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 5975
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5976
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 5977
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5979
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5980
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 5982
    :cond_1
    const/4 v1, 0x1

    .line 5984
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 5956
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 5957
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5958
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 5959
    .local v8, "oldTop":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p5

    neg-int v3, p5

    invoke-virtual {p0, v0, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5960
    :cond_0
    move v4, p5

    .line 5961
    .local v4, "myUnconsumed":I
    const/4 v2, 0x0

    .line 5962
    .local v2, "myConsumed":I
    if-eqz v7, :cond_1

    .line 5963
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, v8

    .line 5964
    sub-int/2addr v4, v2

    .line 5966
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 5968
    .end local v2    # "myConsumed":I
    .end local v4    # "myUnconsumed":I
    :cond_2
    return-void

    .end local v8    # "oldTop":I
    :cond_3
    move v8, v1

    .line 5958
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 5949
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 5950
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 5951
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 5896
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 5897
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzOnOverScrolled(Landroid/widget/AbsListView;)V

    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 8163
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 8164
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8165
    const-string v1, "ViewSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRemoteAdapter() #2 getCount()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8166
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 8167
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 8168
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8175
    :cond_0
    :goto_0
    return v0

    .line 8171
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 8172
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 8173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 8188
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2340
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 2342
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2343
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2345
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 2347
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_4

    .line 2348
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2349
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2350
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2351
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2352
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2353
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2367
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2369
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 2370
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2373
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 2374
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2377
    :cond_2
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 2379
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 2381
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2384
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2385
    return-void

    .line 2354
    :cond_4
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 2355
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2357
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2358
    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2359
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2360
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2361
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2362
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2363
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2364
    iput v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3580
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3581
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 3582
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3584
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 2248
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2250
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2252
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2254
    .local v8, "ss":Landroid/widget/AbsListView$SavedState;
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v12, :cond_1

    .line 2256
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2257
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2258
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2259
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->position:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2260
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->height:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2261
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2262
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v12, v12, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2263
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2264
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2265
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2335
    :cond_0
    :goto_0
    return-object v8

    .line 2269
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_4

    iget v12, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v12, :cond_4

    const/4 v3, 0x1

    .line 2270
    .local v3, "haveChildren":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v6

    .line 2271
    .local v6, "selectedId":J
    iput-wide v6, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2272
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2274
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_5

    .line 2276
    iget v12, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2277
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2278
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2305
    :goto_2
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2306
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v12, :cond_2

    .line 2307
    iget-object v10, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2308
    .local v10, "textFilter":Landroid/widget/EditText;
    if-eqz v10, :cond_2

    .line 2309
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2310
    .local v1, "filterText":Landroid/text/Editable;
    if-eqz v1, :cond_2

    .line 2311
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2316
    .end local v1    # "filterText":Landroid/text/Editable;
    .end local v10    # "textFilter":Landroid/widget/EditText;
    :cond_2
    iget v12, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    iget-object v12, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2318
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_3

    .line 2319
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2321
    :cond_3
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_a

    .line 2322
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2323
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2324
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_9

    .line 2325
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2324
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2269
    .end local v0    # "count":I
    .end local v3    # "haveChildren":Z
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6    # "selectedId":J
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 2280
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_5
    if-eqz v3, :cond_7

    iget v12, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v12, :cond_7

    .line 2290
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2291
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2292
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2293
    .local v2, "firstPos":I
    iget v12, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v2, v12, :cond_6

    .line 2294
    iget v12, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 2296
    :cond_6
    iput v2, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2297
    iget-object v12, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_2

    .line 2299
    .end local v2    # "firstPos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_7
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2300
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2301
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_2

    .line 2316
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 2327
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    iput-object v5, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2329
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_a
    iget v12, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2331
    iget-object v12, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v12, :cond_0

    .line 2332
    iget-object v12, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v12}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3147
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3149
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 3152
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 3153
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 3155
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzOnSizeChanged(Landroid/widget/AbsListView;)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 5944
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 7949
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7950
    invoke-direct {p0, v4}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 7951
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7952
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 7953
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 7955
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 7956
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 7962
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 7963
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 7965
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 7966
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 7973
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 7957
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 7959
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 7960
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 7968
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5327
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 5330
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move v9, v10

    .line 5426
    :cond_1
    :goto_0
    return v9

    .line 5333
    :cond_2
    iget-object v11, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v11, :cond_3

    .line 5334
    iget-object v11, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v11}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5337
    :cond_3
    iget-boolean v11, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v11, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    iget-object v11, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v11, :cond_4

    iget-object v11, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v11, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .local v4, "intercepted":Z
    if-eqz v4, :cond_4

    move v9, v10

    goto :goto_0

    .end local v4    # "intercepted":Z
    :cond_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-static/range {p0 .. p1}, Landroid/widget/AbsListView$FlymeInjector;->mzOnTouchEvent(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "actionMasked":I
    if-nez v0, :cond_5

    iput v9, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    :cond_5
    const/4 v11, 0x0

    iget v12, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5362
    packed-switch v0, :pswitch_data_0

    .line 5422
    :goto_1
    :pswitch_0
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_6

    .line 5423
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5425
    :cond_6
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    move v9, v10

    .line 5426
    goto :goto_0

    .line 5364
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5369
    :pswitch_2
    invoke-direct {p0, p1, v6}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5374
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5379
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    goto :goto_1

    .line 5384
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 5385
    iget v7, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5386
    .local v7, "x":I
    iget v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5387
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 5388
    .local v5, "motionPosition":I
    if-ltz v5, :cond_7

    .line 5390
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5391
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5392
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5394
    .end local v1    # "child":Landroid/view/View;
    :cond_7
    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5395
    iget v9, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto :goto_1

    .line 5401
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 5402
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 5403
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 5404
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v8, v11

    .line 5405
    .restart local v8    # "y":I
    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5406
    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5407
    iput v7, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5408
    iput v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5409
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 5410
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_8

    .line 5412
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5413
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5414
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5416
    .end local v1    # "child":Landroid/view/View;
    :cond_8
    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5417
    iget v9, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto :goto_1

    .line 5362
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 4300
    if-eqz p1, :cond_2

    .line 4302
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4306
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4309
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4311
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4330
    :cond_1
    :goto_0
    return-void

    .line 4313
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4314
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4315
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4316
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4318
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 4319
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4322
    :cond_5
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 4323
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4324
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 4325
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 4326
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 9009
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 9010
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 9012
    if-nez p2, :cond_0

    .line 9016
    :goto_0
    return-void

    .line 9014
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3511
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3516
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 3518
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .local v0, "touchMode":I
    :goto_0
    invoke-static/range {p0 .. p1}, Landroid/widget/AbsListView$FlymeInjector;->mzOnWindowFocusChanged(Landroid/widget/AbsListView;Z)V

    if-nez p1, :cond_6

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    iput v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v2, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :cond_2
    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eqz v2, :cond_3

    iput v1, p0, Landroid/widget/AbsListView;->mQCstate:I

    :cond_3
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-nez p1, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    :cond_4
    return-void

    .end local v0    # "touchMode":I
    :cond_5
    move v0, v2

    .line 3518
    goto :goto_0

    .line 3550
    .restart local v0    # "touchMode":I
    :cond_6
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_7

    .line 3552
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3556
    :cond_7
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_3

    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 3558
    if-ne v0, v2, :cond_8

    .line 3560
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 3564
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3565
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3566
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1998
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2017
    :goto_0
    return v1

    .line 2001
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 2017
    goto :goto_0

    .line 2003
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 2004
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2005
    .local v0, "viewportHeight":I
    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportHeight":I
    :cond_1
    move v1, v2

    .line 2008
    goto :goto_0

    .line 2010
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v3, :cond_2

    .line 2011
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2012
    .restart local v0    # "viewportHeight":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportHeight":I
    :cond_2
    move v1, v2

    .line 2015
    goto :goto_0

    .line 2001
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1478
    const/4 v8, 0x0

    .line 1479
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1480
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1482
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v3, :cond_f

    .line 1483
    const/4 v8, 0x1

    .line 1484
    const/4 v0, 0x0

    .line 1486
    .local v0, "checkedStateChanged":Z
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 1488
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_6

    move v6, v1

    .line 1489
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1490
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1491
    if-eqz v6, :cond_7

    .line 1492
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1497
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 1498
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1502
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1503
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1505
    const/4 v7, 0x0

    .line 1507
    :cond_2
    const/4 v0, 0x1

    .line 1524
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1525
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1535
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 1536
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1539
    :cond_5
    return v8

    .restart local v0    # "checkedStateChanged":Z
    :cond_6
    move v6, v2

    .line 1488
    goto :goto_0

    .line 1494
    .restart local v6    # "checked":Z
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1500
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1508
    .end local v6    # "checked":Z
    :cond_9
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v3, v1, :cond_3

    .line 1509
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_c

    move v6, v1

    .line 1510
    .restart local v6    # "checked":Z
    :goto_5
    if-eqz v6, :cond_d

    .line 1511
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1512
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1513
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1514
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1515
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1517
    :cond_a
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1521
    :cond_b
    :goto_6
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v2

    .line 1509
    goto :goto_5

    .line 1518
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1519
    :cond_e
    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_6

    .line 1527
    .end local v0    # "checkedStateChanged":Z
    .end local v6    # "checked":Z
    :cond_f
    if-eqz p1, :cond_4

    .line 1529
    iget-boolean v1, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_4

    .line 1530
    const/16 v1, 0x4e84

    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_4
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    invoke-static/range {p0 .. p4}, Landroid/widget/AbsListView$FlymeInjector;->mzPerformLongPress(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    const/4 v6, 0x1

    return v6

    :cond_flyme_0
    const/4 v1, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3755
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_2

    .line 3756
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 3759
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    .line 3760
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 3762
    :cond_0
    invoke-virtual {p0, p2, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3763
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3780
    :cond_1
    :goto_0
    return v6

    .line 3768
    :cond_2
    const/4 v6, 0x0

    .line 3769
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    .line 3770
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3773
    :cond_3
    if-nez v6, :cond_4

    .line 3774
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3775
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3777
    :cond_4
    if-eqz v6, :cond_1

    .line 3778
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 3952
    iget-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3953
    .local v4, "frame":Landroid/graphics/Rect;
    if-nez v4, :cond_0

    .line 3954
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3955
    iget-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3957
    :cond_0
    instance-of v6, p0, Landroid/widget/ListView;

    if-eqz v6, :cond_3

    move-object v6, p0

    check-cast v6, Landroid/widget/ListView;

    iget v2, v6, Landroid/widget/ListView;->mDividerHeight:I

    .line 3958
    .local v2, "dividerHeight":I
    :goto_0
    if-lez v2, :cond_1

    move-object v6, p0

    check-cast v6, Landroid/widget/ListView;

    iget-object v6, v6, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 3960
    .local v3, "drawDividers":Z
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3961
    .local v1, "count":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    .line 3962
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3963
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 3964
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzPointToPosition(Landroid/widget/AbsListView;)V

    .line 3965
    if-eqz v3, :cond_2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 3967
    :cond_2
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3968
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 3972
    .end local v0    # "child":Landroid/view/View;
    :goto_2
    return v6

    .end local v1    # "count":I
    .end local v2    # "dividerHeight":I
    .end local v3    # "drawDividers":Z
    .end local v5    # "i":I
    :cond_3
    move v2, v3

    .line 3957
    goto :goto_0

    .line 3961
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "dividerHeight":I
    .restart local v3    # "drawDividers":Z
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 3972
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    const/4 v6, -0x1

    goto :goto_2
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3985
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3986
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 3987
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3989
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v7, -0x1

    .line 3030
    if-eq p1, v7, :cond_0

    .line 3031
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 3034
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3035
    .local v2, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 3036
    instance-of v3, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 3037
    check-cast v3, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v3, v2}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 3041
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 3042
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 3043
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 3044
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v5, p2, Landroid/view/View;->mTwExtraPaddingBottomForPreference:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 3047
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3048
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 3049
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3052
    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 3053
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eq v3, v0, :cond_3

    .line 3054
    if-nez v0, :cond_4

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v3

    if-eq v3, v7, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    :cond_3
    invoke-static/range {p0 .. p2}, Landroid/widget/AbsListView$FlymeInjector;->mzPositionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)Z

    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3011
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3012
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    iget v7, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v7, p1, :cond_2

    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    move v1, v5

    .line 3014
    .local v1, "manageState":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3015
    invoke-virtual {v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3018
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3020
    if-eqz v1, :cond_1

    .line 3021
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3022
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 3023
    .local v3, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 3024
    .local v4, "y":F
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3025
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3027
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    return-void

    .end local v1    # "manageState":Z
    :cond_2
    move v1, v6

    .line 3012
    goto :goto_0

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "manageState":Z
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_3
    move v5, v6

    .line 3024
    goto :goto_1
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 2998
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 3000
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3001
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3003
    :cond_0
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8081
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 8082
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    # getter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$4800(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 8085
    .local v3, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8086
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8087
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 8089
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8090
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8091
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8092
    if-eqz v3, :cond_0

    .line 8094
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 8085
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8098
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 8099
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 8100
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 7117
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 7118
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 7119
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7121
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7122
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7123
    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    .prologue
    .line 1044
    invoke-direct {p0}, Landroid/widget/AbsListView;->registerMotionListener()V

    .line 1045
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setMotionEvent(Z)V

    .line 1046
    return-void
.end method

.method public registerIRMotion()V
    .locals 0

    .prologue
    .line 1022
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 8
    .param p1, "newState"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6222
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_8

    .line 6224
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-ne v0, v7, :cond_2

    .line 6225
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 6227
    :try_start_0
    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 6231
    :goto_0
    iput v5, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 6233
    :cond_1
    invoke-static {v5}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6234
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 6236
    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_7

    iget v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eq v0, v7, :cond_7

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTwScrollingByScrollbar:Z

    if-nez v0, :cond_7

    .line 6237
    if-eqz p1, :cond_5

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-nez v0, :cond_5

    .line 6239
    iget v0, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 6241
    :try_start_1
    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 6245
    :goto_1
    iput v5, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 6247
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    .line 6249
    :try_start_2
    iget-object v0, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AbsListScroll"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mDVFSCookie:I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 6254
    :cond_4
    :goto_2
    invoke-static {v6}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6255
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 6257
    :cond_5
    if-nez p1, :cond_7

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_7

    .line 6259
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_7

    .line 6260
    iget v0, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    .line 6262
    :try_start_3
    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6266
    :goto_3
    iput v5, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 6268
    :cond_6
    invoke-static {v5}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6269
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 6274
    :cond_7
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 6275
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_8

    iget v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eq v0, v7, :cond_8

    .line 6277
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 6280
    :cond_8
    return-void

    .line 6264
    :catch_0
    move-exception v0

    goto :goto_3

    .line 6263
    :catch_1
    move-exception v0

    goto :goto_3

    .line 6251
    :catch_2
    move-exception v0

    goto :goto_2

    .line 6250
    :catch_3
    move-exception v0

    goto :goto_2

    .line 6243
    :catch_4
    move-exception v0

    goto :goto_1

    .line 6242
    :catch_5
    move-exception v0

    goto :goto_1

    .line 6229
    :catch_6
    move-exception v0

    goto/16 :goto_0

    .line 6228
    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 6061
    if-eqz p1, :cond_0

    .line 6062
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 6064
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 6065
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2448
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2449
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2451
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2142
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2143
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 2144
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2145
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2147
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2457
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2458
    iput v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2461
    iget-boolean v0, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2462
    iput v2, p0, Landroid/widget/AbsListView;->mLastPosition:I

    .line 2466
    :cond_0
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2467
    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2468
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2469
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2470
    iput v2, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 2471
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 2472
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2473
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2474
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2475
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2476
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2477
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2478
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 2

    .prologue
    .line 9366
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    .line 9376
    :cond_0
    :goto_0
    return-void

    .line 9369
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 9371
    .local v0, "checkCount":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 9374
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9375
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 7185
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 7187
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    .line 7188
    const/16 v17, 0x0

    .line 7283
    :goto_0
    return v17

    .line 7191
    :cond_0
    const/4 v13, 0x0

    .line 7193
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 7194
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 7195
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7196
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7197
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 7199
    .local v6, "down":Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 7200
    move v12, v14

    .line 7202
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7203
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 7204
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 7207
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_3

    .line 7208
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 7264
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 7267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7269
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 7270
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 7271
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 7272
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 7273
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 7274
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7275
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 7276
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 7277
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 7281
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7283
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 7209
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_3
    if-le v11, v4, :cond_1

    .line 7210
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 7214
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 7216
    move v12, v7

    .line 7217
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 7218
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7219
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7221
    .local v15, "top":I
    if-nez v8, :cond_6

    .line 7223
    move v13, v15

    .line 7225
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 7228
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 7231
    :cond_6
    if-lt v15, v5, :cond_7

    .line 7233
    add-int v12, v7, v8

    .line 7234
    move v13, v15

    .line 7235
    goto/16 :goto_1

    .line 7217
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 7239
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 7240
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 7241
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 7243
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    .line 7244
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7245
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7246
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7248
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 7249
    move v13, v15

    .line 7250
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 7251
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 7255
    :cond_a
    if-gt v2, v4, :cond_b

    .line 7256
    add-int v12, v7, v8

    .line 7257
    move v13, v15

    .line 7258
    goto/16 :goto_1

    .line 7243
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 7279
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 7283
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 7165
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7166
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 7167
    const/4 v0, 0x1

    .line 7169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 6860
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 6861
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 1945
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1946
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1947
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1948
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1957
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_0
    return-void

    .line 1952
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1953
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1956
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x3b

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 7606
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 7681
    :cond_0
    :goto_0
    return v2

    .line 7610
    :cond_1
    const/4 v2, 0x0

    .line 7611
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 7612
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 7644
    :goto_1
    if-eqz v3, :cond_0

    .line 7645
    invoke-direct {p0, v8}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 7647
    move-object v1, p3

    .line 7648
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 7649
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7652
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7653
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7655
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7656
    if-eq p1, v10, :cond_3

    if-ne p1, v11, :cond_7

    .line 7657
    :cond_3
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 7619
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 7620
    goto :goto_1

    .line 7622
    :sswitch_1
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7623
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 7625
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7626
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_4

    .line 7627
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7629
    :cond_4
    const/4 v2, 0x1

    .line 7636
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 7637
    goto :goto_1

    .line 7630
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 7632
    const/4 v2, 0x1

    .line 7633
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7640
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    .line 7658
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_0

    .line 7659
    :cond_8
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7664
    :pswitch_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7665
    if-eq p1, v10, :cond_9

    if-ne p1, v11, :cond_a

    .line 7666
    :cond_9
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 7667
    iput v5, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 7668
    iput v5, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 7669
    iput v9, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 7670
    iput v9, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    goto/16 :goto_0

    .line 7671
    :cond_a
    const/16 v6, 0x71

    if-eq p1, v6, :cond_b

    const/16 v6, 0x72

    if-ne p1, v6, :cond_0

    .line 7672
    :cond_b
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7677
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 7612
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 7653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 132
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1267
    if-eqz p1, :cond_0

    .line 1268
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 1269
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1271
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1275
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 1276
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1279
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1280
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1284
    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 1285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    .line 1286
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 1287
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 1290
    :cond_3
    return-void
.end method

.method public setAirScrollEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1036
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 5760
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 5761
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 8052
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 8053
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 8054
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8055
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8056
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8055
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8058
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 8060
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 5
    .param p1, "choiceMode"    # I

    .prologue
    invoke-static/range {p0 .. p1}, Landroid/widget/AbsListView$FlymeInjector;->mzSetChoiceMode(Landroid/widget/AbsListView;I)I

    move-result p1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1605
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1606
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1608
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1610
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1611
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1612
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1614
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1615
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1618
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_3

    .line 1619
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1620
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1624
    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1625
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 1632
    :cond_4
    :goto_0
    return-void

    .line 1626
    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_6

    .line 1627
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1628
    :cond_6
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_4

    .line 1629
    :cond_7
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 3233
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 3234
    return-void
.end method

.method public setEnableDragBlock(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 9294
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 9295
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 9282
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 9283
    return-void
.end method

.method public setEnableOnclickInMultiSelectMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 9312
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsTwOnClickEnabled:Z

    .line 9313
    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4400
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 4401
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1778
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1779
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1780
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1783
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1785
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1786
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1796
    :cond_1
    :goto_0
    return-void

    .line 1788
    :cond_2
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1718
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1719
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1721
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1722
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1732
    :cond_0
    :goto_0
    return-void

    .line 1724
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 1756
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1757
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    .line 1761
    :goto_0
    return-void

    .line 1759
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2400
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2401
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2404
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2405
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2406
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2408
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2409
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2410
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2414
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2415
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2418
    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 3645
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 3646
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2645
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2647
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2651
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2652
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2653
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2657
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2651
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 6556
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6557
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6559
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    # getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$2100(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 6560
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 4393
    iput p1, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 4394
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 4367
    if-eqz p1, :cond_0

    .line 4368
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 4372
    :goto_0
    return-void

    .line 4370
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 1
    .param p1, "hoverspeed"    # I

    .prologue
    .line 4382
    int-to-float v0, p1

    iput v0, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    .line 4383
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1407
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v2, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    if-eqz p2, :cond_4

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_4

    .line 1413
    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1415
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1419
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1422
    :cond_4
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_c

    .line 1423
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1424
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1425
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1426
    if-eqz p2, :cond_a

    .line 1427
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1432
    :cond_6
    :goto_1
    if-eq v0, p2, :cond_7

    .line 1433
    if-eqz p2, :cond_b

    .line 1434
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1439
    :cond_7
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1440
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1441
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1468
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_8
    :goto_3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 1469
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-nez v1, :cond_9

    .line 1470
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1471
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1472
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto/16 :goto_0

    .line 1429
    .restart local v0    # "oldValue":Z
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1436
    :cond_b
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1445
    .end local v0    # "oldValue":Z
    :cond_c
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_10

    move v7, v8

    .line 1448
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1449
    :cond_d
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1450
    if-eqz v7, :cond_e

    .line 1451
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1456
    :cond_e
    if-eqz p2, :cond_11

    .line 1457
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1458
    if-eqz v7, :cond_f

    .line 1459
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1461
    :cond_f
    iput v8, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_10
    move v7, v1

    .line 1445
    goto :goto_4

    .line 1462
    .restart local v7    # "updateIds":Z
    :cond_11
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1463
    :cond_12
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMotionEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1067
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 1068
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 1644
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1645
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1647
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1648
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 9383
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 9388
    :goto_0
    return-void

    .line 9386
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 9387
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 1923
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1924
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1925
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "rightPadding"    # I

    .prologue
    .line 6034
    iput p1, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    .line 6035
    iput p2, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    .line 6036
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1249
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1250
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1251
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1252
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1253
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1259
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 1260
    return-void

    .line 1256
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1257
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 8212
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    # setter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$4802(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 8213
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8117
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1

    .line 8118
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 8119
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 8121
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8132
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    :goto_0
    return-void

    .line 8125
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8127
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 8128
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8129
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8130
    const-string v2, "ViewSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteAdapter #1 getCount()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v4}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 8144
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 8145
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 8147
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1858
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1859
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1862
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 3318
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 3319
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 3320
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2064
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2065
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 2067
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 2068
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 8931
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 8958
    :cond_0
    :goto_0
    return-void

    .line 8935
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8936
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 8937
    if-ltz p1, :cond_2

    .line 8938
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 8944
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 8945
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8946
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 8948
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 8949
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 8950
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 8953
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_4

    .line 8954
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 8956
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_0

    .line 8941
    :cond_5
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 3244
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3245
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3248
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3249
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3250
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3252
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3253
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3254
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3255
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 3256
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 3257
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 3258
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 3259
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3260
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3261
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1892
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1893
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2135
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2136
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 2137
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 2139
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 2081
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 2082
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1083
    iput p1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1084
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 8023
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 8024
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 6569
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 6570
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1850
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1851
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1854
    :cond_0
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 8195
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 8196
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 8198
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3181
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 3182
    .local v0, "isFingerAirView":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    .line 3187
    .local v1, "isFingerAirViewPreview":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFingerHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    return v3

    .end local v0    # "isFingerAirView":Z
    .end local v1    # "isFingerAirViewPreview":Z
    :cond_4
    move v0, v3

    .line 3181
    goto :goto_0

    .restart local v0    # "isFingerAirView":Z
    :cond_5
    move v1, v3

    .line 3182
    goto :goto_1
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    .prologue
    .line 3194
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

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

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3791
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    .line 3792
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3793
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3794
    .local v2, "id":J
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3795
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3796
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3797
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3802
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :goto_0
    return v4

    .line 3800
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3802
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3807
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3808
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 3809
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3810
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3812
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3813
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3816
    :cond_0
    if-nez v6, :cond_1

    .line 3817
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3820
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3825
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 6651
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 6652
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 6761
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 6762
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6766
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6767
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 6768
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 6769
    .local v3, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    .line 6770
    .local v4, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 6772
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_2

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v3, v5, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_4

    if-lez p1, :cond_4

    .line 6776
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 6777
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_3

    .line 6778
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 6784
    :cond_3
    :goto_0
    return-void

    .line 6781
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6782
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 6790
    const/4 v2, -0x1

    .line 6791
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 6792
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 6797
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 6798
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6799
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 6800
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6801
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6803
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 6804
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 6805
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 6806
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 6807
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 6810
    add-int/lit8 v2, v2, 0x1

    .line 6817
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 6820
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 6793
    :cond_3
    if-lez p1, :cond_0

    .line 6794
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 6811
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 6814
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6585
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6586
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6588
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 6589
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6639
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6640
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6642
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 6643
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6622
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6623
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6625
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 6626
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 6604
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6605
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6607
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 6608
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3163
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3168
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3166
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 31
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 6899
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .line 6900
    .local v8, "childCount":I
    if-nez v8, :cond_0

    .line 6901
    const/16 v29, 0x1

    .line 7064
    :goto_0
    return v29

    .line 6904
    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v16

    .line 6905
    .local v16, "firstTop":I
    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 6907
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 6912
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 6913
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    .line 6914
    .local v12, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 6915
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 6916
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 6920
    :cond_1
    sub-int v25, v13, v16

    .line 6921
    .local v25, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v14, v29, v12

    .line 6922
    .local v14, "end":I
    sub-int v26, v22, v14

    .line 6924
    .local v26, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v19, v29, v30

    .line 6925
    .local v19, "height":I
    if-gez p1, :cond_3

    .line 6926
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6931
    :goto_1
    if-gez p2, :cond_4

    .line 6932
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6937
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6940
    .local v15, "firstPosition":I
    if-nez v15, :cond_5

    .line 6941
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v16, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 6945
    :goto_3
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 6946
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 6951
    :goto_4
    if-nez v15, :cond_7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 6953
    .local v5, "cannotScrollDown":Z
    :goto_5
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v22

    move/from16 v1, v29

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v6, 0x1

    .line 6956
    .local v6, "cannotScrollUp":Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v6, :cond_a

    .line 6957
    :cond_2
    if-eqz p2, :cond_9

    const/16 v29, 0x1

    goto/16 :goto_0

    .line 6928
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_3
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 6934
    :cond_4
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 6943
    .restart local v15    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 6948
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 6951
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 6953
    .restart local v5    # "cannotScrollDown":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 6957
    .restart local v6    # "cannotScrollUp":Z
    :cond_9
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 6960
    :cond_a
    if-gez p2, :cond_14

    const/4 v11, 0x1

    .line 6962
    .local v11, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v21

    .line 6963
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_b

    .line 6964
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 6967
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 6968
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    .line 6970
    .local v17, "footerViewsStart":I
    const/16 v27, 0x0

    .line 6971
    .local v27, "start":I
    const/4 v10, 0x0

    .line 6973
    .local v10, "count":I
    if-eqz v11, :cond_18

    .line 6974
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v28, v0

    .line 6975
    .local v28, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 6976
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    .line 6978
    :cond_c
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_d

    .line 6979
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6980
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_15

    .line 7020
    .end local v7    # "child":Landroid/view/View;
    .end local v28    # "top":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 7022
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 7024
    if-lez v10, :cond_e

    .line 7025
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 7026
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 7031
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v29

    if-nez v29, :cond_f

    .line 7032
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 7035
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 7037
    if-eqz v11, :cond_10

    .line 7038
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7041
    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 7042
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v25

    if-lt v0, v3, :cond_11

    move/from16 v0, v26

    if-ge v0, v3, :cond_12

    .line 7043
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 7046
    :cond_12
    if-nez v21, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1c

    .line 7047
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 7048
    .local v9, "childIndex":I
    if-ltz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_13

    .line 7049
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 7060
    .end local v9    # "childIndex":I
    :cond_13
    :goto_9
    invoke-static/range {p0 .. p2}, Landroid/widget/AbsListView$FlymeInjector;->mzTrackMotionScroll(Landroid/widget/AbsListView;II)V

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 7062
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 7064
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 6960
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v27    # "start":I
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 6983
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v11    # "down":Z
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v27    # "start":I
    .restart local v28    # "top":I
    :cond_15
    add-int/lit8 v10, v10, 0x1

    .line 6984
    add-int v24, v15, v20

    .line 6985
    .local v24, "position":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_17

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_17

    .line 6988
    invoke-virtual {v7}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v29

    if-eqz v29, :cond_16

    .line 6989
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6991
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6978
    :cond_17
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 6996
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v24    # "position":I
    .end local v28    # "top":I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v4, v29, p2

    .line 6997
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_19

    .line 6998
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    .line 7000
    :cond_19
    add-int/lit8 v20, v8, -0x1

    .restart local v20    # "i":I
    :goto_a
    if-ltz v20, :cond_d

    .line 7001
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7002
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_d

    .line 7005
    move/from16 v27, v20

    .line 7006
    add-int/lit8 v10, v10, 0x1

    .line 7007
    add-int v24, v15, v20

    .line 7008
    .restart local v24    # "position":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1b

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_1b

    .line 7011
    invoke-virtual {v7}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 7012
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7014
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7000
    :cond_1b
    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    .line 7051
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v24    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1d

    .line 7052
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 7053
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_13

    .line 7054
    const/16 v29, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 7057
    .end local v9    # "childIndex":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method protected twGetItemCount()I
    .locals 2

    .prologue
    .line 6694
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 6695
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public twIsSetCustomMultiChoiceMode()Z
    .locals 1

    .prologue
    .line 1686
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method public twNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1548
    const/4 v0, 0x0

    .line 1550
    .local v0, "handledNotifyKeyPress":Z
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_0

    .line 1551
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Landroid/widget/AdapterView;->twNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    .line 1553
    :cond_0
    return v0
.end method

.method public twSetCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1677
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    .line 1678
    return-void
.end method

.method public twSetSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 6720
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 6721
    return-void
.end method

.method public twShowMultiChoiceMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1657
    if-eqz p1, :cond_1

    .line 1658
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1667
    :cond_0
    :goto_0
    return-void

    .line 1662
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1664
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public twSmoothScrollBy(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 6733
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6734
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6737
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 6738
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6739
    new-instance v1, Landroid/widget/AbsListView$TwSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 6740
    const/high16 v1, 0x43160000    # 150.0f

    iget v2, p0, Landroid/widget/AbsListView;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Landroid/widget/AbsListView;->mTwScrollAmount:I

    .line 6743
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 6744
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Landroid/widget/AbsListView;->mTwScrollAmount:I

    if-le v1, v2, :cond_3

    .line 6745
    if-lez p1, :cond_2

    .line 6746
    :goto_0
    sget v1, Landroid/widget/AbsListView;->mTwScrollAmount:I

    if-le p1, v1, :cond_3

    .line 6747
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/AbsListView;->mTwScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6746
    sget v1, Landroid/widget/AbsListView;->mTwScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 6750
    :cond_2
    :goto_1
    sget v1, Landroid/widget/AbsListView;->mTwScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    .line 6751
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/AbsListView;->mTwScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6750
    sget v1, Landroid/widget/AbsListView;->mTwScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 6755
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6756
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 6757
    :cond_4
    return-void
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    .prologue
    .line 1054
    invoke-direct {p0}, Landroid/widget/AbsListView;->unregisterMotionListener()V

    .line 1055
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setMotionEvent(Z)V

    .line 1056
    return-void
.end method

.method public unregisterIRMotion()V
    .locals 0

    .prologue
    .line 1029
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1093
    return-void
.end method

.method updateScrollIndicators()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2686
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2687
    iget-object v3, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2690
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2691
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2693
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2687
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2691
    goto :goto_1
.end method

.method updateSelectorState()V
    .locals 4

    .prologue
    .line 3323
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 3324
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3326
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lt v2, v3, :cond_3

    .line 3327
    iget v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3328
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3329
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3330
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3331
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3343
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_1
    :goto_0
    return-void

    .line 3333
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3336
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3340
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3387
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

.method public dispatchStatusBarTap()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsListView;->onStatusBarTapScrollTop()Z

    move-result v0

    return v0
.end method

.method public finishMultiChoice()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public getDragPosition()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    return v0
.end method

.method public getItemDragListener()Landroid/widget/AbsListView$OnItemDragListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    return-object v0
.end method

.method public getOverScrollDistance()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    return v0
.end method

.method public isDelayTopOverScrollEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDelaySpringBackEnabled:Z

    return v0
.end method

.method public isEnableLoadAllItems()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableLoadAllItems:Z

    return v0
.end method

.method protected mzCanOverScroll()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .local v0, "overscrollMode":I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected mzCanScrollSelect(I)Z
    .locals 12
    .param p1, "motionY"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .local v4, "childCount":I
    if-lez v4, :cond_0

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .local v6, "listTop":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .local v5, "listBottom":I
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v9, :cond_1

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-lt v9, v10, :cond_1

    move v2, v7

    .local v2, "atListTop":Z
    :goto_0
    iget v9, p0, Landroid/widget/AbsListView;->mListItemHeight:I

    add-int/2addr v9, v6

    if-ge p1, v9, :cond_2

    move v3, v7

    .local v3, "atTopRegion":Z
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .end local v2    # "atListTop":Z
    .end local v3    # "atTopRegion":Z
    .end local v5    # "listBottom":I
    .end local v6    # "listTop":I
    :cond_0
    :goto_2
    return v8

    .restart local v5    # "listBottom":I
    .restart local v6    # "listTop":I
    :cond_1
    move v2, v8

    goto :goto_0

    .restart local v2    # "atListTop":Z
    :cond_2
    move v3, v8

    goto :goto_1

    .restart local v3    # "atTopRegion":Z
    :cond_3
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v10

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_6

    move v1, v7

    .local v1, "atListBottom":Z
    :goto_3
    iget v9, p0, Landroid/widget/AbsListView;->mListItemHeight:I

    sub-int v9, v5, v9

    if-le p1, v9, :cond_7

    move v0, v7

    .local v0, "atBottomRegion":Z
    :goto_4
    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    :cond_4
    if-nez v3, :cond_5

    if-eqz v0, :cond_0

    :cond_5
    move v8, v7

    goto :goto_2

    .end local v0    # "atBottomRegion":Z
    .end local v1    # "atListBottom":Z
    :cond_6
    move v1, v8

    goto :goto_3

    .restart local v1    # "atListBottom":Z
    :cond_7
    move v0, v8

    goto :goto_4
.end method

.method protected mzCheckForLongPressForMeiZu(IJLandroid/view/View;)Z
    .locals 4
    .param p1, "longPressPosition"    # I
    .param p2, "longPressId"    # J
    .param p4, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .local v0, "perforLongPress":Z
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    instance-of v1, v1, Landroid/widget/AbsListView$DragItemFilter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    check-cast v1, Landroid/widget/AbsListView$DragItemFilter;

    invoke-interface {v1, p4, p1, p2, p3}, Landroid/widget/AbsListView$DragItemFilter;->isItemDragable(Landroid/view/View;IJ)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method protected mzCreateScrollingCache()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    return-void
.end method

.method protected mzDoActionItemDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    .locals 7
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x1

    iget-object v1, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    invoke-interface {v1, p2}, Landroid/widget/AbsListView$OnItemDragListener;->getActionItemType(Landroid/view/MenuItem;)I

    move-result v0

    .local v0, "state":I
    if-ne v0, v6, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, v6}, Landroid/view/ActionMode;->setDragDismissAnimating(Z)V

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    iget v2, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v4, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface {v1, p2, v2, v4, v5}, Landroid/widget/AbsListView$OnItemDragListener;->onActionItemDrop(Landroid/view/MenuItem;IJ)V

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mHasActionDrop:Z

    goto :goto_0

    .end local v0    # "state":I
    :pswitch_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mDelayUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    invoke-interface {v1, p2}, Landroid/widget/AbsListView$OnItemDragListener;->getActionItemType(Landroid/view/MenuItem;)I

    move-result v0

    .restart local v0    # "state":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mShadowBuilder:Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->setDragingState(I)V

    if-ne v0, v6, :cond_3

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->notifyDragDropAnimType(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzUpdateDrag()V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->notifyDragDropAnimType(I)V

    goto :goto_1

    .end local v0    # "state":I
    :pswitch_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mShadowBuilder:Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->setDragingState(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->notifyDragDropAnimType(I)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mDelayUpdate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method mzEnsureCheckRegion(Z)V
    .locals 3
    .param p1, "forceUpdate"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_1

    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/widget/AbsListView;->mDefaultCheckWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method mzGetFieldActivePointerId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method mzGetFieldContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method mzGetFieldFlingRunnable()Landroid/widget/AbsListView$FlingRunnable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-object v0
.end method

.method mzGetFieldMaximumVelocity()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method mzGetFieldMinimumVelocity()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method mzGetFieldPerformClick()Landroid/widget/AbsListView$PerformClick;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    return-object v0
.end method

.method mzGetFieldScrollY()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method mzGetFieldTouchFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method mzGetFieldTouchSlop()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return v0
.end method

.method mzGetFieldVelocityTracker()Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method protected mzIsChildOutOfBounds(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gt v1, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-lt v1, p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mzIsHeaderOrFooter(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mzIsItemSelectable(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v1, p1

    .local v1, "pos":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v1, p1, v2

    :cond_0
    instance-of v2, v0, Lcom/meizu/widget/ListSelectFilter;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/meizu/widget/ListSelectFilter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, v1}, Lcom/meizu/widget/ListSelectFilter;->isSelectable(I)Z

    move-result v2

    :goto_0
    return v2

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method mzOnCreateActionMode(Landroid/view/ActionMode;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getActionItemDragListener()Landroid/view/ActionMode$OnActionItemDragListener;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/AbsListView$MzActionItemDragListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/AbsListView$MzActionItemDragListener;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setActionItemDragListener(Landroid/view/ActionMode$OnActionItemDragListener;)V

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method mzOnDestroyActionMode()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setBackPressListener(Landroid/view/ActionMode$BackPressedListener;)V

    :cond_0
    return-void
.end method

.method protected mzPerformClick()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .local v2, "motionPosition":I
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .local v0, "id":J
    instance-of v5, p0, Landroid/widget/ListView;

    if-eqz v5, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->mzIsHeaderOrFooter(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p0, v2}, Landroid/widget/AbsListView$FlymeInjector;->mzIsItemCheckable(Landroid/widget/AbsListView;I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mInCheckRegion:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .end local v0    # "id":J
    :cond_1
    :goto_0
    return v4

    .restart local v0    # "id":J
    :cond_2
    iget v5, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->mzIsHeaderOrFooter(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->mzIsItemSelectable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    move v4, v3

    goto :goto_0

    .end local v0    # "id":J
    :cond_4
    move v4, v3

    goto :goto_0
.end method

.method mzSetFieldActivePointerId(I)V
    .locals 0
    .param p1, "pointerId"    # I

    .prologue
    iput p1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return-void
.end method

.method mzSetFieldFlingRunnable(Landroid/widget/AbsListView$FlingRunnable;)V
    .locals 0
    .param p1, "runnable"    # Landroid/widget/AbsListView$FlingRunnable;

    .prologue
    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-void
.end method

.method mzSetFieldPerformClick(Landroid/widget/AbsListView$PerformClick;)V
    .locals 0
    .param p1, "performClick"    # Landroid/widget/AbsListView$PerformClick;

    .prologue
    iput-object p1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    return-void
.end method

.method mzSetFieldTouchFrame(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    return-void
.end method

.method protected mzUpdateDrag()V
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/widget/AbsListView;->mShadowBuilder:Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mDragSurface:Landroid/view/Surface;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mDragSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Landroid/widget/AbsListView;->mShadowBuilder:Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "View"

    const-string v3, "Unable to initiate drag"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Landroid/widget/AbsListView;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->destroy()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Landroid/widget/AbsListView;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    iget v6, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    if-ne v6, v11, :cond_1

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mHasActionDrop:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    .local v5, "retval":Z
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v8, v5

    .end local v5    # "retval":Z
    :cond_0
    :goto_1
    return v8

    .restart local v5    # "retval":Z
    :sswitch_0
    iget-object v6, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v6, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v6, v12, v13}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v5, 0x1

    goto :goto_0

    .end local v5    # "retval":Z
    :cond_1
    const/4 v1, 0x0

    .local v1, "child":Landroid/view/View;
    iget v6, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    int-to-long v2, v6

    .local v2, "dragItemId":J
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    invoke-interface {v6, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    iget-object v6, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    iget v9, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    invoke-interface {v6, v9, v2, v3}, Landroid/widget/AbsListView$OnItemDragListener;->onActionItemDragStart(IJ)I

    move-result v4

    .local v4, "flag":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_5

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mCanNfcShare:Z

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mCanNfcShare:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->notifyStatusBarNfcShareEnabled(ZZ)V

    .end local v4    # "flag":I
    :cond_3
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    move v8, v7

    goto :goto_1

    .restart local v4    # "flag":I
    :cond_5
    move v6, v8

    goto :goto_2

    .end local v4    # "flag":I
    :sswitch_3
    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v6, v8}, Landroid/view/ActionMode;->setDragDismissAnimating(Z)V

    :cond_6
    iget v6, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1, v7}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result v6

    if-nez v6, :cond_d

    iget v6, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_7
    :goto_3
    iput v11, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    iput-object v10, p0, Landroid/widget/AbsListView;->mCurrentDragChild:Landroid/view/View;

    iput-object v10, p0, Landroid/widget/AbsListView;->mDragShawdowView:Landroid/view/View;

    iput-boolean v8, p0, Landroid/widget/AbsListView;->mHasActionDrop:Z

    iget-object v6, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    iget v7, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    invoke-interface {v6, v7, v2, v3}, Landroid/widget/AbsListView$OnItemDragListener;->onActionItemDragEnd(IJ)V

    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v6

    if-gtz v6, :cond_9

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v6}, Landroid/view/ActionMode;->finish()V

    :cond_9
    iget-object v6, p0, Landroid/widget/AbsListView;->mDragSurface:Landroid/view/Surface;

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/widget/AbsListView;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    iput-object v10, p0, Landroid/widget/AbsListView;->mDragSurface:Landroid/view/Surface;

    :cond_a
    iget-object v6, p0, Landroid/widget/AbsListView;->mShadowBuilder:Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    if-eqz v6, :cond_b

    iput-object v10, p0, Landroid/widget/AbsListView;->mShadowBuilder:Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    :cond_b
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mCanNfcShare:Z

    if-eqz v6, :cond_c

    invoke-virtual {p0, v8, v8}, Landroid/widget/AbsListView;->notifyStatusBarNfcShareEnabled(ZZ)V

    iput-boolean v8, p0, Landroid/widget/AbsListView;->mCanNfcShare:Z

    :cond_c
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v6, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v6, v12, v13}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_d
    if-eqz v1, :cond_7

    const v6, #android:id@checkbox#t

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "checkbox":Landroid/view/View;
    if-eqz v0, :cond_e

    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_e

    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateViews()V

    goto :goto_3

    :sswitch_4
    iget v6, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {p0, v1, v7}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    const v6, #android:id@checkbox#t

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "checkbox":Landroid/view/View;
    if-eqz v0, :cond_f

    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_f

    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v6

    if-gtz v6, :cond_10

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_10

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v6}, Landroid/view/ActionMode;->finish()V

    :cond_10
    iput v11, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    iput-object v10, p0, Landroid/widget/AbsListView;->mCurrentDragChild:Landroid/view/View;

    iput-object v10, p0, Landroid/widget/AbsListView;->mDragShawdowView:Landroid/view/View;

    iget-object v6, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    if-eqz v6, :cond_11

    iget-object v6, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    iget v7, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    invoke-interface {v6, v7, v2, v3}, Landroid/widget/AbsListView$OnItemDragListener;->onActionItemDragEnd(IJ)V

    :cond_11
    iget-object v6, p0, Landroid/widget/AbsListView;->mDragSurface:Landroid/view/Surface;

    if-eqz v6, :cond_12

    iget-object v6, p0, Landroid/widget/AbsListView;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    iput-object v10, p0, Landroid/widget/AbsListView;->mDragSurface:Landroid/view/Surface;

    :cond_12
    iget-object v6, p0, Landroid/widget/AbsListView;->mShadowBuilder:Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    if-eqz v6, :cond_13

    iput-object v10, p0, Landroid/widget/AbsListView;->mShadowBuilder:Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    :cond_13
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mCanNfcShare:Z

    if-eqz v6, :cond_14

    invoke-virtual {p0, v8, v8}, Landroid/widget/AbsListView;->notifyStatusBarNfcShareEnabled(ZZ)V

    iput-boolean v8, p0, Landroid/widget/AbsListView;->mCanNfcShare:Z

    :cond_14
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v6, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v6, v12, v13}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x64 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .local v8, "count":I
    const/4 v7, 0x0

    .local v7, "contentFits":Z
    if-nez v8, :cond_0

    const/4 v7, 0x1

    :goto_0
    if-eqz v7, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-super/range {v0 .. v6}, Landroid/widget/AdapterView;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    :goto_1
    return-void

    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eq v8, v1, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x22

    const/16 v2, 0x22

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    if-gt v1, v2, :cond_2

    move v7, v0

    :goto_2
    goto :goto_0

    :cond_2
    move v7, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_4

    move v7, v0

    :goto_3
    goto :goto_0

    :cond_4
    move v7, v3

    goto :goto_3

    :cond_5
    invoke-super/range {p0 .. p6}, Landroid/widget/AdapterView;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_1
.end method

.method protected onStatusBarTapScrollTop()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v2, v3, :cond_0

    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v2}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_3
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "flag":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    :cond_0
    return v0
.end method

.method protected performItemLongPress(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public setCenterListContent(Z)V
    .locals 0
    .param p1, "centerContent"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mCenterContent:Z

    return-void
.end method

.method public setDelayTopOverScrollEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDelaySpringBackEnabled:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meizu/widget/MzListHoldIndicator;

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/meizu/widget/MzListHoldIndicator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    iget v1, p0, Landroid/widget/AbsListView;->mHoldIndicatorOffset:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MzListHoldIndicator;->setExtraOffset(I)V

    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/widget/AbsListView$FlymeInjector;->mzOnSizeChanged(Landroid/widget/AbsListView;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsListAtWindowTop:Z

    goto :goto_0
.end method

.method public setDelayTopOverScrollOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    iput p1, p0, Landroid/widget/AbsListView;->mHoldIndicatorOffset:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzListHoldIndicator;->setExtraOffset(I)V

    :cond_0
    return-void
.end method

.method public setDragItemBackgroundResources([I)V
    .locals 3
    .param p1, "bgres"    # [I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Landroid/widget/AbsListView;->mDragViewBackground:I

    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    aget v0, p1, v1

    iput v0, p0, Landroid/widget/AbsListView;->mDragViewBackgroundFilter:I

    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_2

    aget v0, p1, v2

    iput v0, p0, Landroid/widget/AbsListView;->mDragViewBackgroundDelete:I

    :cond_2
    return-void
.end method

.method public setEnableForEditTextPreference(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setIgnoreIm(Z)V

    return-void
.end method

.method public setEnableLoadAllItems(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mEnableLoadAllItems:Z

    return-void
.end method

.method public setEnablePressStateOnCheck(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mEnablePressStateOnCheck:Z

    return-void
.end method

.method public setItemDragListener(Landroid/widget/AbsListView$OnItemDragListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnItemDragListener;

    .prologue
    iput-object p1, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    return-void
.end method

.method public setOnTouchOutOfItemListener(Landroid/widget/AbsListView$onTouchOutOfItemListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$onTouchOutOfItemListener;

    .prologue
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    return-void
.end method

.method public setOverscrollDistance(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$dimen;->mz_pullRefresh_overscrollheight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .local v0, "defalut":I
    if-ge p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    iput p1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    goto :goto_0
.end method

.method public springBackDelay(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startMultiChoice()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getBackPressListener()Landroid/view/ActionMode$BackPressedListener;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    new-instance v1, Landroid/widget/AbsListView$MzBackPressedListener;

    invoke-direct {v1, p0, v4}, Landroid/widget/AbsListView$MzBackPressedListener;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setBackPressListener(Landroid/view/ActionMode$BackPressedListener;)V

    :cond_3
    new-instance v0, Landroid/widget/AbsListView$MzRequestLayoutRunnable;

    invoke-direct {v0, p0, v4}, Landroid/widget/AbsListView$MzRequestLayoutRunnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

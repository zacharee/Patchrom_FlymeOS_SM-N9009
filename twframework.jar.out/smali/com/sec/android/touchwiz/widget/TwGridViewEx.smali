.class public Lcom/sec/android/touchwiz/widget/TwGridViewEx;
.super Landroid/widget/GridView;
.source "TwGridViewEx.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;,
        Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;,
        Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;,
        Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;
    }
.end annotation


# static fields
.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field public static final MAX_COLUMNS_NUM:I = 0x5

.field private static final MINIMUM_FLING_VELOCITY:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "GridViewEx"


# instance fields
.field private final MAX_PINCH_DISTANCE:F

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

.field private mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

.field private mCloneView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

.field private mCurrentAnimationProgress:F

.field private mCurrentSpan:F

.field private mEnableAlphaAnimation:Z

.field private mHorizontalSpacing:I

.field private mInvokeStartAnimation:Z

.field private mIsEnableSizeAnimation:Z

.field private mIsEnabledMoveAnimation:Z

.field private mIsLayouted:Z

.field private mIsNeedToRecoverColumNum:Z

.field private mIsNeedToRecoverScrollPos:Z

.field private mIsOnLayoutAnimation:Z

.field private mIsOnPinchOperation:Z

.field private mIsPinchFlicked:Z

.field private mLayoutAnimationDuration:I

.field private mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

.field private mMaxColumnCount:I

.field private mMoveAnimationDuration:I

.field private final mMoveAnimationThreshold:F

.field private mNeedToLayoutAnimation:Z

.field private mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

.field private final mPinchFlickThreadholdTime:J

.field private mPinchStartTime:J

.field private mPrevCulNum:I

.field private mPrevFirstIndex:I

.field private mPrevFirstViewTop:I

.field private mPrevSpan:F

.field private mRecoverLayoutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mTouchCancelEvent:Landroid/view/MotionEvent;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 55
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    .line 60
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    .line 61
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    .line 62
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAdapter:Landroid/widget/ListAdapter;

    .line 67
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    .line 68
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnableSizeAnimation:Z

    .line 70
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    .line 71
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    .line 72
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    .line 74
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    .line 75
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    .line 77
    const/16 v0, 0x29a

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    .line 78
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationDuration:I

    .line 79
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    .line 84
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    .line 85
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    .line 90
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationThreshold:F

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    .line 92
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchFlickThreadholdTime:J

    .line 93
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    .line 94
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->MAX_PINCH_DISTANCE:F

    .line 95
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 96
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    .line 97
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    .line 98
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    .line 99
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mTouchCancelEvent:Landroid/view/MotionEvent;

    .line 100
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 103
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    .line 108
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    .line 109
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverScrollPos:Z

    .line 110
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    .line 111
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    .line 123
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    .line 133
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    .line 150
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->init()V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    .line 60
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    .line 61
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    .line 62
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAdapter:Landroid/widget/ListAdapter;

    .line 67
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    .line 68
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnableSizeAnimation:Z

    .line 70
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    .line 71
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    .line 72
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    .line 74
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    .line 75
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    .line 77
    const/16 v0, 0x29a

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    .line 78
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationDuration:I

    .line 79
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    .line 84
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    .line 85
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    .line 90
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationThreshold:F

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    .line 92
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchFlickThreadholdTime:J

    .line 93
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    .line 94
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->MAX_PINCH_DISTANCE:F

    .line 95
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 96
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    .line 97
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    .line 98
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    .line 99
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mTouchCancelEvent:Landroid/view/MotionEvent;

    .line 100
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 103
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    .line 108
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    .line 109
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverScrollPos:Z

    .line 110
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    .line 111
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    .line 123
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    .line 133
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    .line 144
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->init()V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    .line 60
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    .line 61
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    .line 62
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAdapter:Landroid/widget/ListAdapter;

    .line 67
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    .line 68
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnableSizeAnimation:Z

    .line 70
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    .line 71
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    .line 72
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    .line 74
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    .line 75
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    .line 77
    const/16 v0, 0x29a

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    .line 78
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationDuration:I

    .line 79
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    .line 84
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    .line 85
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    .line 90
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationThreshold:F

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    .line 92
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchFlickThreadholdTime:J

    .line 93
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    .line 94
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->MAX_PINCH_DISTANCE:F

    .line 95
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 96
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    .line 97
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    .line 98
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    .line 99
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mTouchCancelEvent:Landroid/view/MotionEvent;

    .line 100
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 103
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    .line 108
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    .line 109
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverScrollPos:Z

    .line 110
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    .line 111
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    .line 123
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    .line 133
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    .line 138
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->init()V

    .line 139
    return-void
.end method

.method private addCloneViewsInLayout(II)Z
    .locals 6
    .param p1, "start"    # I
    .param p2, "last"    # I

    .prologue
    .line 1156
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-le p1, p2, :cond_1

    .line 1157
    :cond_0
    const/4 v3, 0x0

    .line 1171
    :goto_0
    return v3

    .line 1159
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1160
    .local v1, "count":I
    move v2, p1

    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_3

    if-ge v2, v1, :cond_3

    .line 1162
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v0

    .line 1163
    .local v0, "cloneView":Landroid/view/View;
    if-nez v0, :cond_2

    .line 1165
    const-string v3, "GridViewEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showCurrentCloneViews : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item is not cloned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1168
    :cond_2
    const/4 v3, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_2

    .line 1171
    .end local v0    # "cloneView":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z
    .locals 12
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "startView"    # Landroid/view/View;
    .param p3, "endView"    # Landroid/view/View;
    .param p4, "duration"    # I
    .param p5, "expandSize"    # Z

    .prologue
    .line 1352
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1353
    :cond_0
    const/4 v10, 0x0

    .line 1405
    :goto_0
    return v10

    .line 1355
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v11

    if-ne v10, v11, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 1356
    invoke-direct/range {p0 .. p4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createScaleAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v10

    goto :goto_0

    .line 1358
    :cond_2
    const/4 v5, 0x0

    .line 1359
    .local v5, "groupTarget":Landroid/view/ViewGroup;
    instance-of v10, p1, Landroid/view/ViewGroup;

    if-eqz v10, :cond_3

    move-object v5, p1

    .line 1360
    check-cast v5, Landroid/view/ViewGroup;

    .line 1362
    :cond_3
    if-nez v5, :cond_4

    .line 1363
    invoke-direct/range {p0 .. p4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createScaleAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v10

    goto :goto_0

    .line 1365
    :cond_4
    const/4 v7, -0x1

    .local v7, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v7, v10, :cond_7

    .line 1367
    const/4 v2, 0x0

    .line 1368
    .local v2, "childView":Landroid/view/View;
    const/4 v10, -0x1

    if-eq v7, v10, :cond_6

    .line 1369
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1373
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 1375
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    .line 1376
    .local v1, "childId":I
    invoke-direct {p0, p2, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->findViewByIdRecursive(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    .line 1377
    .local v8, "startChildView":Landroid/view/View;
    invoke-direct {p0, p3, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->findViewByIdRecursive(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 1379
    .local v3, "endChildView":Landroid/view/View;
    if-eqz v8, :cond_5

    if-eqz v3, :cond_5

    .line 1381
    move/from16 v0, p4

    invoke-direct {p0, v2, v8, v3, v0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createScaleAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    .line 1382
    move/from16 v0, p4

    invoke-direct {p0, v2, v8, v3, v0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    .line 1365
    .end local v1    # "childId":I
    .end local v3    # "endChildView":Landroid/view/View;
    .end local v8    # "startChildView":Landroid/view/View;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1371
    :cond_6
    move-object v2, v5

    goto :goto_2

    .line 1387
    .end local v2    # "childView":Landroid/view/View;
    :cond_7
    const/4 v10, 0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_9

    .line 1389
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1390
    .local v9, "width":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1392
    .local v6, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    if-ge v10, v9, :cond_8

    .line 1394
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int v4, v9, v10

    .line 1395
    .local v4, "gap":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {p1, v10}, Landroid/view/View;->setRight(I)V

    .line 1398
    .end local v4    # "gap":I
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ge v10, v6, :cond_9

    .line 1400
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int v4, v6, v10

    .line 1401
    .restart local v4    # "gap":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {p1, v10}, Landroid/view/View;->setBottom(I)V

    .line 1405
    .end local v4    # "gap":I
    .end local v6    # "height":I
    .end local v9    # "width":I
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private createMoveAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "startView"    # Landroid/view/View;
    .param p3, "endView"    # Landroid/view/View;
    .param p4, "duration"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1271
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return v2

    .line 1274
    :cond_1
    new-array v1, v5, [F

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    aput v3, v1, v4

    .line 1275
    .local v1, "startPos":[F
    new-array v0, v5, [F

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v3

    aput v3, v0, v2

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v0, v4

    .line 1277
    .local v0, "endPos":[F
    invoke-direct {p0, p1, v1, v0, p4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    move-result v2

    goto :goto_0
.end method

.method private createMoveAnimation(Landroid/view/View;[F[FI)Z
    .locals 8
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "startPos"    # [F
    .param p3, "endPos"    # [F
    .param p4, "duration"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1282
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v4, v5

    .line 1296
    :goto_0
    return v4

    .line 1285
    :cond_1
    array-length v6, p2

    if-lt v6, v7, :cond_2

    array-length v6, p3

    if-ge v6, v7, :cond_3

    :cond_2
    move v4, v5

    .line 1286
    goto :goto_0

    .line 1288
    :cond_3
    aget v2, p2, v5

    .line 1289
    .local v2, "prevX":F
    aget v0, p3, v5

    .line 1290
    .local v0, "nextX":F
    aget v3, p2, v4

    .line 1291
    .local v3, "prevY":F
    aget v1, p3, v4

    .line 1293
    .local v1, "nextY":F
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v5, p1, p4, v2, v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createTransXAnimation(Landroid/view/View;IFF)Z

    .line 1294
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v5, p1, p4, v3, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createTransYAnimation(Landroid/view/View;IFF)Z

    goto :goto_0
.end method

.method private createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 7
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "startView"    # Landroid/view/View;
    .param p3, "endView"    # Landroid/view/View;
    .param p4, "duration"    # I

    .prologue
    .line 1326
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1327
    :cond_0
    const/4 v4, 0x0

    .line 1347
    :goto_0
    return v4

    .line 1329
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 1331
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1332
    .local v2, "right":I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v3, v2, v4

    .line 1333
    .local v3, "start":I
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v1, v2, v4

    .line 1335
    .local v1, "end":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    int-to-float v5, v3

    int-to-float v6, v1

    invoke-virtual {v4, p1, p4, v5, v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createRightAnimation(Landroid/view/View;IFF)Z

    .line 1338
    .end local v1    # "end":I
    .end local v2    # "right":I
    .end local v3    # "start":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1340
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1341
    .local v0, "bottom":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v3, v0, v4

    .line 1342
    .restart local v3    # "start":I
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v1, v0, v4

    .line 1344
    .restart local v1    # "end":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    int-to-float v5, v3

    int-to-float v6, v1

    invoke-virtual {v4, p1, p4, v5, v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createBottomAnimation(Landroid/view/View;IFF)Z

    .line 1347
    .end local v0    # "bottom":I
    .end local v1    # "end":I
    .end local v3    # "start":I
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private createRightAndBottomAnimation(Landroid/view/View;[I[II)Z
    .locals 7
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "startSize"    # [I
    .param p3, "endSize"    # [I
    .param p4, "duration"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1301
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v3, v4

    .line 1321
    :cond_1
    :goto_0
    return v3

    .line 1304
    :cond_2
    array-length v5, p2

    if-lt v5, v6, :cond_3

    array-length v5, p3

    if-ge v5, v6, :cond_4

    :cond_3
    move v3, v4

    .line 1305
    goto :goto_0

    .line 1307
    :cond_4
    aget v5, p2, v4

    aget v6, p3, v4

    if-eq v5, v6, :cond_5

    .line 1309
    aget v5, p2, v4

    aget v4, p2, v4

    sub-int v1, v5, v4

    .line 1310
    .local v1, "gap":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1311
    .local v2, "right":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    int-to-float v5, v2

    add-int v6, v2, v1

    int-to-float v6, v6

    invoke-virtual {v4, p1, p4, v5, v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createRightAnimation(Landroid/view/View;IFF)Z

    .line 1314
    .end local v1    # "gap":I
    .end local v2    # "right":I
    :cond_5
    aget v4, p2, v3

    aget v5, p3, v3

    if-eq v4, v5, :cond_1

    .line 1316
    aget v4, p2, v3

    aget v5, p2, v3

    sub-int v1, v4, v5

    .line 1317
    .restart local v1    # "gap":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1318
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    int-to-float v5, v0

    add-int v6, v0, v1

    int-to-float v6, v6

    invoke-virtual {v4, p1, p4, v5, v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createBottomAnimation(Landroid/view/View;IFF)Z

    goto :goto_0
.end method

.method private createScaleAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 7
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "startView"    # Landroid/view/View;
    .param p3, "endView"    # Landroid/view/View;
    .param p4, "duration"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1410
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1428
    :cond_0
    :goto_0
    return v2

    .line 1413
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_3

    .line 1415
    :cond_2
    const-string v3, "GridViewEx"

    const-string v4, "createScaleAnimation : start view hasn\'t be layouted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1419
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_5

    .line 1421
    :cond_4
    const-string v3, "GridViewEx"

    const-string v4, "createScaleAnimation : end view hasn\'t be layouted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1425
    :cond_5
    new-array v1, v6, [I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v5

    .line 1426
    .local v1, "startSize":[I
    new-array v0, v6, [I

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v0, v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v5

    .line 1428
    .local v0, "endSize":[I
    invoke-direct {p0, p1, v1, v0, p4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createScaleAnimation(Landroid/view/View;[I[II)Z

    move-result v2

    goto :goto_0
.end method

.method private createScaleAnimation(Landroid/view/View;[I[II)Z
    .locals 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "startSize"    # [I
    .param p3, "endSize"    # [I
    .param p4, "duration"    # I

    .prologue
    .line 1433
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createScaleAnimation(Landroid/view/View;[I[IIZ)Z

    move-result v0

    return v0
.end method

.method private createScaleAnimation(Landroid/view/View;[I[IIZ)Z
    .locals 10
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "startSize"    # [I
    .param p3, "endSize"    # [I
    .param p4, "duration"    # I
    .param p5, "expandSize"    # Z

    .prologue
    .line 1438
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1439
    :cond_0
    const/4 v7, 0x0

    .line 1472
    :goto_0
    return v7

    .line 1441
    :cond_1
    array-length v7, p2

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    array-length v7, p3

    const/4 v8, 0x2

    if-ge v7, v8, :cond_3

    .line 1442
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1444
    :cond_3
    const/4 v7, 0x0

    aget v7, p2, v7

    int-to-float v5, v7

    .line 1445
    .local v5, "prevWidth":F
    const/4 v7, 0x0

    aget v7, p3, v7

    int-to-float v3, v7

    .line 1446
    .local v3, "nextWidth":F
    const/4 v7, 0x1

    aget v7, p2, v7

    int-to-float v4, v7

    .line 1447
    .local v4, "prevHeight":F
    const/4 v7, 0x1

    aget v7, p3, v7

    int-to-float v2, v7

    .line 1449
    .local v2, "nextHeight":F
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v5, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v3, v9

    invoke-virtual {v7, p1, p4, v8, v9}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createScaleXAnimation(Landroid/view/View;IFF)Z

    .line 1450
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v4, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v2, v9

    invoke-virtual {v7, p1, p4, v8, v9}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createScaleYAnimation(Landroid/view/View;IFF)Z

    .line 1451
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    .line 1452
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    .line 1454
    const/4 v7, 0x1

    if-ne p5, v7, :cond_5

    .line 1456
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v6, v7

    .line 1457
    .local v6, "width":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v1, v7

    .line 1459
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 1461
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v0, v6, v7

    .line 1462
    .local v0, "gap":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1, v7}, Landroid/view/View;->setRight(I)V

    .line 1465
    .end local v0    # "gap":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    if-ge v7, v1, :cond_5

    .line 1467
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v0, v1, v7

    .line 1468
    .restart local v0    # "gap":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1, v7}, Landroid/view/View;->setBottom(I)V

    .line 1472
    .end local v0    # "gap":I
    .end local v1    # "height":I
    .end local v6    # "width":I
    :cond_5
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private findViewByIdRecursive(Landroid/view/View;I)Landroid/view/View;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 1233
    move-object v4, p1

    .line 1234
    .local v4, "targetView":Landroid/view/View;
    const/4 v0, 0x0

    .line 1235
    .local v0, "childView":Landroid/view/View;
    const/4 v2, 0x0

    .line 1237
    .local v2, "group":Landroid/view/ViewGroup;
    if-nez p1, :cond_1

    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    move-object v1, v0

    .line 1266
    :cond_0
    :goto_0
    return-object v1

    .line 1240
    :cond_1
    if-nez p1, :cond_2

    .line 1241
    const/4 v1, 0x0

    goto :goto_0

    .line 1243
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, p2, :cond_4

    .line 1245
    move-object v0, p1

    :cond_3
    move-object v1, v0

    .line 1266
    goto :goto_0

    .line 1247
    :cond_4
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    move-object v2, p1

    .line 1249
    check-cast v2, Landroid/view/ViewGroup;

    .line 1250
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v1, v0

    .line 1252
    goto :goto_0

    .line 1256
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1258
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1259
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->findViewByIdRecursive(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1260
    .local v1, "findView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1256
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getCloneView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 502
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 504
    const-string v2, "GridViewEx"

    const-string v3, "getCloneView : Has no clone view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    :goto_0
    return-object v1

    .line 508
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    .line 512
    .local v0, "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    if-eqz v0, :cond_0

    .line 515
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    goto :goto_0
.end method

.method private getView(II)Landroid/view/View;
    .locals 2
    .param p1, "col"    # I
    .param p2, "row"    # I

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v0

    .line 522
    .local v0, "aCurColNum":I
    if-gt v0, p1, :cond_0

    .line 524
    const/4 v1, 0x0

    .line 527
    :goto_0
    return-object v1

    :cond_0
    mul-int v1, v0, p2

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 218
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    .line 219
    new-instance v2, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-direct {v2}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    .line 220
    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 221
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    .line 222
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mTouchCancelEvent:Landroid/view/MotionEvent;

    .line 223
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 224
    return-void
.end method

.method private makeLayoutAnimationList()Z
    .locals 47

    .prologue
    .line 850
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    .line 852
    const-string v4, "GridViewEx"

    const-string v7, "makeLayoutAnimationList : on layout animation"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v4, 0x0

    .line 1104
    :goto_0
    return v4

    .line 856
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 858
    const-string v4, "GridViewEx"

    const-string v7, "makeLayoutAnimationList : Has no clone view"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v4, 0x0

    goto :goto_0

    .line 863
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v20

    .line 868
    .local v20, "childCount":I
    if-nez v20, :cond_2

    .line 870
    const-string v4, "GridViewEx"

    const-string v7, "makeLayoutAnimationList : Any child view is added"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v4, 0x0

    goto :goto_0

    .line 874
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v29

    .line 875
    .local v29, "currentColNum":I
    const/16 v16, 0x0

    .line 876
    .local v16, "addCloneViewCount":I
    const/16 v42, 0x0

    .line 877
    .local v42, "skipClonViewAniCount":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    .line 878
    .local v8, "duration":I
    const/16 v28, 0x0

    .local v28, "curRowY":I
    const/16 v27, 0x0

    .line 879
    .local v27, "curColX":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v0, v4

    move/from16 v45, v0

    .line 880
    .local v45, "unitMoveX":F
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v0, v4

    move/from16 v46, v0

    .line 881
    .local v46, "unitMoveY":F
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 884
    .local v23, "childViewToFade":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 885
    .local v22, "childViewFirst":Landroid/view/View;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v24

    .line 886
    .local v24, "cloneViewFirst":Landroid/view/View;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v44, v4, v7

    .line 888
    .local v44, "topDistance":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnableSizeAnimation:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    if-lez v4, :cond_3

    const/16 v37, 0x1

    .line 889
    .local v37, "needSizeAnimation":Z
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getFirstVisiblePosition()I

    move-result v7

    if-ne v4, v7, :cond_4

    const/16 v38, 0x1

    .line 892
    .local v38, "needSkipFirstRowAni":Z
    :goto_2
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v33

    if-ge v0, v4, :cond_12

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    .line 895
    .local v32, "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    if-nez v32, :cond_5

    .line 897
    const-string v4, "GridViewEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeLayoutAnimationList : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " item is not cloned"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :goto_4
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .line 888
    .end local v32    # "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    .end local v33    # "i":I
    .end local v37    # "needSizeAnimation":Z
    .end local v38    # "needSkipFirstRowAni":Z
    :cond_3
    const/16 v37, 0x0

    goto :goto_1

    .line 889
    .restart local v37    # "needSizeAnimation":Z
    :cond_4
    const/16 v38, 0x0

    goto :goto_2

    .line 901
    .restart local v32    # "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    .restart local v33    # "i":I
    .restart local v38    # "needSkipFirstRowAni":Z
    :cond_5
    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    .line 902
    .local v6, "cloneView":Landroid/view/View;
    move-object/from16 v0, v32

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->col:I

    move/from16 v25, v0

    .line 903
    .local v25, "col":I
    move-object/from16 v0, v32

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->row:I

    move/from16 v41, v0

    .line 904
    .local v41, "row":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getView(II)Landroid/view/View;

    move-result-object v5

    .line 905
    .local v5, "childView":Landroid/view/View;
    if-eqz v5, :cond_c

    .line 907
    if-eqz v38, :cond_8

    if-nez v41, :cond_8

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    if-nez v37, :cond_7

    const/4 v9, 0x1

    :goto_5
    move-object/from16 v4, p0

    move-object v7, v5

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    .line 911
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v5, v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    .line 913
    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_6

    .line 915
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v5, v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    .line 918
    :cond_6
    const/4 v4, 0x4

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 919
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 920
    add-int/lit8 v42, v42, 0x1

    .line 994
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 910
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 925
    :cond_8
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v40, v0

    const/4 v4, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    aput v7, v40, v4

    const/4 v4, 0x1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    aput v7, v40, v4

    .line 926
    .local v40, "prevSize":[I
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v39, v0

    const/4 v4, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v39, v4

    const/4 v4, 0x1

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v7

    aput v7, v39, v4

    .line 928
    .local v39, "prevPos":[F
    if-nez v37, :cond_a

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v9, p0

    move-object v10, v6

    move-object v11, v6

    move-object v12, v5

    move v13, v8

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    .line 929
    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_9

    .line 931
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v6, v5, v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    .line 934
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v6, v5, v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    .line 936
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    const/4 v7, 0x1

    if-ne v4, v7, :cond_b

    .line 938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    div-int/lit8 v7, v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v7, v9, v10}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFF)Z

    .line 945
    :goto_8
    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 947
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 948
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 950
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    move-object/from16 v2, v39

    invoke-direct {v0, v5, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;-><init>(Landroid/view/View;[I[F)V

    .line 951
    .local v17, "aniHolder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->cloneView:Landroid/view/View;

    .line 952
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 928
    .end local v17    # "aniHolder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    :cond_a
    const/4 v14, 0x0

    goto :goto_7

    .line 942
    :cond_b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    div-int/lit8 v11, v8, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    int-to-long v14, v8

    move-object v10, v6

    invoke-virtual/range {v9 .. v15}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFFJ)Z

    goto :goto_8

    .line 955
    .end local v39    # "prevPos":[F
    .end local v40    # "prevSize":[I
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    move/from16 v0, v29

    if-le v4, v0, :cond_11

    .line 957
    if-nez v27, :cond_f

    if-nez v28, :cond_f

    .line 962
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v43, v0

    const/4 v4, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v43, v4

    const/4 v4, 0x1

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v7

    aput v7, v43, v4

    .line 963
    .local v43, "startPos":[F
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    const/4 v7, 0x0

    aget v7, v43, v7

    move/from16 v0, v25

    int-to-float v9, v0

    mul-float v9, v9, v45

    add-float/2addr v7, v9

    aput v7, v30, v4

    const/4 v4, 0x1

    const/4 v7, 0x1

    aget v7, v43, v7

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move/from16 v0, v41

    int-to-float v10, v0

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    move/from16 v0, v44

    int-to-float v9, v0

    add-float/2addr v7, v9

    aput v7, v30, v4

    .line 965
    .local v30, "endPos":[F
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v30

    invoke-direct {v0, v6, v1, v2, v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    .line 966
    if-nez v37, :cond_e

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v9, p0

    move-object v10, v6

    move-object v11, v6

    move-object/from16 v12, v22

    move v13, v8

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    .line 978
    :goto_a
    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_d

    .line 980
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v6, v1, v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    .line 983
    :cond_d
    const/16 v27, 0x0

    .line 984
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 966
    :cond_e
    const/4 v14, 0x0

    goto :goto_9

    .line 971
    .end local v30    # "endPos":[F
    .end local v43    # "startPos":[F
    :cond_f
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v43, v0

    const/4 v4, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v43, v4

    const/4 v4, 0x1

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v7

    aput v7, v43, v4

    .line 972
    .restart local v43    # "startPos":[F
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    move/from16 v0, v27

    int-to-float v7, v0

    aput v7, v30, v4

    const/4 v4, 0x1

    move/from16 v0, v28

    int-to-float v7, v0

    aput v7, v30, v4

    .line 974
    .restart local v30    # "endPos":[F
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v30

    invoke-direct {v0, v6, v1, v2, v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    .line 975
    if-nez v37, :cond_10

    const/4 v14, 0x1

    :goto_b
    move-object/from16 v9, p0

    move-object v10, v6

    move-object v11, v6

    move-object/from16 v12, v22

    move v13, v8

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    goto :goto_a

    :cond_10
    const/4 v14, 0x0

    goto :goto_b

    .line 988
    .end local v30    # "endPos":[F
    .end local v43    # "startPos":[F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    if-nez v4, :cond_13

    .line 998
    .end local v5    # "childView":Landroid/view/View;
    .end local v6    # "cloneView":Landroid/view/View;
    .end local v25    # "col":I
    .end local v32    # "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    .end local v41    # "row":I
    :cond_12
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    .line 1000
    .local v35, "itemHolder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    .line 1001
    .restart local v5    # "childView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    const/4 v7, 0x1

    if-ne v4, v7, :cond_15

    .line 1003
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v31, v0

    const/4 v4, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    aput v7, v31, v4

    const/4 v4, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    aput v7, v31, v4

    .line 1004
    .local v31, "endSize":[I
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v30, v4

    const/4 v4, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    aput v7, v30, v4

    .line 1006
    .restart local v30    # "endPos":[F
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1008
    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    mul-int/lit8 v7, v8, 0x2

    div-int/lit8 v7, v7, 0x3

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v7, v9, v10}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFF)Z

    .line 1010
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevPos:[F

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v4, v1, v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    .line 1012
    instance-of v4, v5, Landroid/view/ViewGroup;

    if-eqz v4, :cond_14

    .line 1014
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    move-object/from16 v0, v35

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->cloneView:Landroid/view/View;

    const/4 v14, 0x1

    move-object/from16 v9, p0

    move-object v10, v5

    move-object v12, v5

    move v13, v8

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    goto/16 :goto_c

    .line 991
    .end local v30    # "endPos":[F
    .end local v31    # "endSize":[I
    .end local v34    # "i$":Ljava/util/Iterator;
    .end local v35    # "itemHolder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    .restart local v6    # "cloneView":Landroid/view/View;
    .restart local v25    # "col":I
    .restart local v32    # "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    .restart local v41    # "row":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v8, v7, v9}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFF)Z

    goto/16 :goto_6

    .line 1019
    .end local v6    # "cloneView":Landroid/view/View;
    .end local v25    # "col":I
    .end local v32    # "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    .end local v41    # "row":I
    .restart local v30    # "endPos":[F
    .restart local v31    # "endSize":[I
    .restart local v34    # "i$":Ljava/util/Iterator;
    .restart local v35    # "itemHolder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    :cond_14
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevSize:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v5, v4, v1, v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createScaleAnimation(Landroid/view/View;[I[II)Z

    goto/16 :goto_c

    .line 1024
    .end local v30    # "endPos":[F
    .end local v31    # "endSize":[I
    :cond_15
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    div-int/lit8 v11, v8, 0x2

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    int-to-long v14, v8

    move-object v10, v5

    invoke-virtual/range {v9 .. v15}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFFJ)Z

    goto/16 :goto_c

    .line 1031
    .end local v5    # "childView":Landroid/view/View;
    .end local v35    # "itemHolder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    move/from16 v0, v29

    if-le v4, v0, :cond_17

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v4, v4, v42

    move/from16 v0, v20

    if-ge v4, v0, :cond_17

    .line 1033
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v33

    :goto_d
    move/from16 v0, v33

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 1035
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1036
    .restart local v5    # "childView":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1037
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v8, v7, v9}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFF)Z

    .line 1033
    add-int/lit8 v33, v33, 0x1

    goto :goto_d

    .line 1043
    .end local v5    # "childView":Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    move/from16 v0, v29

    if-ge v4, v0, :cond_1d

    .line 1045
    const/16 v18, 0x0

    .line 1046
    .local v18, "animatedViewCount":I
    const/16 v36, 0x0

    .line 1048
    .local v36, "lastPosX":I
    const/16 v33, 0x0

    :goto_e
    move/from16 v0, v33

    move/from16 v1, v20

    if-ge v0, v1, :cond_1d

    .line 1050
    const/4 v5, 0x0

    .line 1051
    .restart local v5    # "childView":Landroid/view/View;
    rem-int v4, v33, v29

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    sub-int v26, v4, v7

    .line 1053
    .local v26, "curColDistance":I
    if-ltz v26, :cond_18

    .line 1056
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1057
    div-int v21, v33, v29

    .line 1058
    .local v21, "childRow":I
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v30, v4

    const/4 v4, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    aput v7, v30, v4

    .line 1059
    .restart local v30    # "endPos":[F
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v43, v0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getWidth()I

    move-result v7

    add-int v7, v7, v36

    int-to-float v7, v7

    aput v7, v43, v4

    const/4 v4, 0x1

    const/4 v7, 0x1

    aget v7, v30, v7

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move/from16 v0, v21

    int-to-float v10, v0

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    move/from16 v0, v44

    int-to-float v9, v0

    sub-float/2addr v7, v9

    aput v7, v43, v4

    .line 1061
    .restart local v43    # "startPos":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v30

    invoke-direct {v0, v5, v1, v2, v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    .line 1063
    const/4 v14, 0x1

    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v11, v24

    move-object v12, v5

    move v13, v8

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    .line 1065
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v36, v36, v4

    .line 1048
    .end local v21    # "childRow":I
    .end local v30    # "endPos":[F
    .end local v43    # "startPos":[F
    :goto_f
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_e

    .line 1071
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v18

    if-lt v0, v4, :cond_1b

    .line 1073
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1074
    div-int v21, v33, v29

    .line 1075
    .restart local v21    # "childRow":I
    rem-int v19, v33, v29

    .line 1076
    .local v19, "childCol":I
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v30, v4

    const/4 v4, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    aput v7, v30, v4

    .line 1077
    .restart local v30    # "endPos":[F
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v43, v0

    const/4 v4, 0x0

    const/4 v7, 0x0

    aget v7, v30, v7

    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move/from16 v0, v19

    int-to-float v10, v0

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    aput v7, v43, v4

    const/4 v4, 0x1

    const/4 v7, 0x1

    aget v7, v30, v7

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move/from16 v0, v21

    int-to-float v10, v0

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    move/from16 v0, v44

    int-to-float v9, v0

    sub-float/2addr v7, v9

    aput v7, v43, v4

    .line 1079
    .restart local v43    # "startPos":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v30

    invoke-direct {v0, v5, v1, v2, v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    .line 1081
    if-nez v37, :cond_1c

    const/4 v14, 0x1

    :goto_10
    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v11, v24

    move-object v12, v5

    move v13, v8

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    .line 1083
    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_19

    .line 1085
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v5, v5, v1, v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    .line 1088
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1a

    const/4 v4, 0x1

    aget v4, v43, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1a

    .line 1090
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    const v7, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v8, v7, v9}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFF)Z

    .line 1093
    :cond_1a
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    .end local v19    # "childCol":I
    .end local v21    # "childRow":I
    .end local v30    # "endPos":[F
    .end local v43    # "startPos":[F
    :cond_1b
    add-int/lit8 v18, v18, 0x1

    .line 1096
    const/16 v36, 0x0

    goto/16 :goto_f

    .line 1081
    .restart local v19    # "childCol":I
    .restart local v21    # "childRow":I
    .restart local v30    # "endPos":[F
    .restart local v43    # "startPos":[F
    :cond_1c
    const/4 v14, 0x0

    goto :goto_10

    .line 1101
    .end local v5    # "childView":Landroid/view/View;
    .end local v18    # "animatedViewCount":I
    .end local v19    # "childCol":I
    .end local v21    # "childRow":I
    .end local v26    # "curColDistance":I
    .end local v30    # "endPos":[F
    .end local v36    # "lastPosX":I
    .end local v43    # "startPos":[F
    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->addCloneViewsInLayout(II)Z

    .line 1102
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1103
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_PINCH:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    .line 1104
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private makeNextMoveLayoutAnimationList()Z
    .locals 24

    .prologue
    .line 640
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 642
    const-string v3, "GridViewEx"

    const-string v6, "makeLayoutAnimationList : on layout animation"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v3, 0x0

    .line 731
    :goto_0
    return v3

    .line 646
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 648
    const-string v3, "GridViewEx"

    const-string v6, "makeLayoutAnimationList : Has no clone view"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v3, 0x0

    goto :goto_0

    .line 653
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 656
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getFirstVisiblePosition()I

    move-result v6

    sub-int v16, v3, v6

    .line 657
    .local v16, "indexGap":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationDuration:I

    .line 658
    .local v7, "duration":I
    const/4 v4, 0x0

    .line 659
    .local v4, "childView":Landroid/view/View;
    const/4 v5, 0x0

    .line 661
    .local v5, "cloneView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v11

    .line 662
    .local v11, "curColNum":I
    const/4 v13, 0x0

    .line 663
    .local v13, "gapCount":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v20

    .line 664
    .local v20, "unitMoveHeight":I
    const/16 v17, 0x0

    .line 665
    .local v17, "moveCount":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnableSizeAnimation:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    if-lez v3, :cond_2

    const/16 v18, 0x1

    .line 667
    .local v18, "needSizeAnimation":Z
    :goto_1
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v15, v3, :cond_3

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    .line 670
    .local v14, "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    iget-object v3, v14, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->removeViewInLayout(Landroid/view/View;)V

    .line 667
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 665
    .end local v14    # "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    .end local v15    # "i":I
    .end local v18    # "needSizeAnimation":Z
    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    .line 673
    .restart local v15    # "i":I
    .restart local v18    # "needSizeAnimation":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v9

    .line 674
    .local v9, "childCount":I
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v9, :cond_9

    .line 676
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 678
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    .line 680
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 681
    .local v10, "childHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    int-to-float v8, v10

    sub-float/2addr v6, v8

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v3, v4, v7, v6, v8}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createTransYAnimation(Landroid/view/View;IFF)Z

    .line 682
    add-int/lit8 v13, v13, 0x1

    .line 711
    .end local v10    # "childHeight":I
    :cond_4
    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 674
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 686
    :cond_5
    sub-int v3, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v5

    .line 688
    if-eqz v5, :cond_8

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v22

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v6, v8, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    if-nez v18, :cond_7

    const/4 v8, 0x1

    :goto_5
    move-object/from16 v3, p0

    move-object v6, v4

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    .line 692
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_6

    .line 694
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v4, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    .line 697
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v4, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    goto :goto_4

    .line 691
    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 701
    :cond_8
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v19, v0

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v19, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getHeight()I

    move-result v6

    mul-int v8, v20, v17

    add-int/2addr v6, v8

    int-to-float v6, v6

    aput v6, v19, v3

    .line 702
    .local v19, "startPos":[F
    const/4 v3, 0x2

    new-array v12, v3, [F

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v12, v3

    const/4 v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v12, v3

    .line 704
    .local v12, "endPos":[F
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1, v12, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    .line 706
    add-int/lit8 v3, v15, 0x1

    rem-int/2addr v3, v11

    if-nez v3, :cond_4

    .line 707
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 714
    .end local v12    # "endPos":[F
    .end local v19    # "startPos":[F
    :cond_9
    const/16 v17, 0x0

    .line 715
    sub-int v15, v9, v13

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v15, v3, :cond_b

    .line 717
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v5

    .line 718
    const/4 v3, 0x2

    new-array v12, v3, [F

    const/4 v3, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v12, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getHeight()I

    move-result v6

    mul-int v8, v20, v17

    add-int/2addr v6, v8

    int-to-float v6, v6

    aput v6, v12, v3

    .line 719
    .restart local v12    # "endPos":[F
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v19, v0

    const/4 v3, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v19, v3

    const/4 v3, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v19, v3

    .line 721
    .restart local v19    # "startPos":[F
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1, v12, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    .line 723
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 724
    const/4 v3, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v6}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 726
    add-int/lit8 v3, v15, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    rem-int/2addr v3, v6

    if-nez v3, :cond_a

    .line 727
    add-int/lit8 v17, v17, 0x1

    .line 715
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 730
    .end local v12    # "endPos":[F
    .end local v19    # "startPos":[F
    :cond_b
    sget-object v3, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_MOVE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    .line 731
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private makePreMoveLayoutAnimationList()Z
    .locals 29

    .prologue
    .line 736
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 738
    const-string v3, "GridViewEx"

    const-string v5, "makeLayoutAnimationList : on layout animation"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v3, 0x0

    .line 845
    :goto_0
    return v3

    .line 742
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 744
    const-string v3, "GridViewEx"

    const-string v5, "makeLayoutAnimationList : Has no clone view"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v3, 0x0

    goto :goto_0

    .line 749
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v15

    .line 754
    .local v15, "childCount":I
    if-nez v15, :cond_2

    .line 756
    const-string v3, "GridViewEx"

    const-string v5, "makeLayoutAnimationList : Any child view is added"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v3, 0x0

    goto :goto_0

    .line 760
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v19

    .line 761
    .local v19, "currentColNum":I
    const/4 v14, 0x0

    .line 762
    .local v14, "addCloneViewCount":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    div-int/lit8 v7, v3, 0x2

    .line 763
    .local v7, "duration":I
    const/16 v18, 0x0

    .local v18, "curRowY":I
    const/16 v17, 0x0

    .line 764
    .local v17, "curColX":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v0, v3

    move/from16 v27, v0

    .line 765
    .local v27, "unitMoveX":F
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v0, v3

    move/from16 v28, v0

    .line 768
    .local v28, "unitMoveY":F
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 769
    .local v11, "childViewFirst":Landroid/view/View;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v26, v3, v5

    .line 771
    .local v26, "topDistance":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnableSizeAnimation:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    if-lez v3, :cond_3

    const/16 v23, 0x1

    .line 774
    .local v23, "needSizeAnimation":Z
    :goto_1
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_d

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    .line 777
    .local v21, "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    if-nez v21, :cond_4

    .line 779
    const-string v3, "GridViewEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeLayoutAnimationList : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " item is not cloned"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 771
    .end local v21    # "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    .end local v22    # "i":I
    .end local v23    # "needSizeAnimation":Z
    :cond_3
    const/16 v23, 0x0

    goto :goto_1

    .line 783
    .restart local v21    # "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    .restart local v22    # "i":I
    .restart local v23    # "needSizeAnimation":Z
    :cond_4
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    .line 784
    .local v4, "cloneView":Landroid/view/View;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->col:I

    move/from16 v16, v0

    .line 785
    .local v16, "col":I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->row:I

    move/from16 v24, v0

    .line 786
    .local v24, "row":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getView(II)Landroid/view/View;

    move-result-object v6

    .line 787
    .local v6, "childView":Landroid/view/View;
    if-eqz v6, :cond_7

    .line 790
    if-nez v23, :cond_6

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v3, p0

    move-object v5, v4

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    .line 791
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_5

    .line 793
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    .line 796
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    .line 798
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 799
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 840
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 790
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    .line 801
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    move/from16 v0, v19

    if-le v3, v0, :cond_c

    .line 803
    if-nez v17, :cond_a

    if-nez v18, :cond_a

    .line 808
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v25, v0

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    aput v5, v25, v3

    const/4 v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    aput v5, v25, v3

    .line 809
    .local v25, "startPos":[F
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    aget v5, v25, v5

    move/from16 v0, v16

    int-to-float v8, v0

    mul-float v8, v8, v27

    add-float/2addr v5, v8

    aput v5, v20, v3

    const/4 v3, 0x1

    const/4 v5, 0x1

    aget v5, v25, v5

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move/from16 v0, v24

    int-to-float v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    move/from16 v0, v26

    int-to-float v8, v0

    add-float/2addr v5, v8

    aput v5, v20, v3

    .line 811
    .local v20, "endPos":[F
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v4, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    .line 812
    if-nez v23, :cond_9

    const/4 v13, 0x1

    :goto_6
    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v4

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    .line 824
    :goto_7
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_8

    .line 826
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v4, v11, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    .line 829
    :cond_8
    const/16 v17, 0x0

    .line 830
    const/16 v18, 0x0

    goto :goto_5

    .line 812
    :cond_9
    const/4 v13, 0x0

    goto :goto_6

    .line 817
    .end local v20    # "endPos":[F
    .end local v25    # "startPos":[F
    :cond_a
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v25, v0

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    aput v5, v25, v3

    const/4 v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    aput v5, v25, v3

    .line 818
    .restart local v25    # "startPos":[F
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v20, v0

    const/4 v3, 0x0

    move/from16 v0, v17

    int-to-float v5, v0

    aput v5, v20, v3

    const/4 v3, 0x1

    move/from16 v0, v18

    int-to-float v5, v0

    aput v5, v20, v3

    .line 820
    .restart local v20    # "endPos":[F
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v4, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    .line 821
    if-nez v23, :cond_b

    const/4 v13, 0x1

    :goto_8
    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v4

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    goto :goto_7

    :cond_b
    const/4 v13, 0x0

    goto :goto_8

    .line 834
    .end local v20    # "endPos":[F
    .end local v25    # "startPos":[F
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    if-nez v3, :cond_e

    .line 843
    .end local v4    # "cloneView":Landroid/view/View;
    .end local v6    # "childView":Landroid/view/View;
    .end local v16    # "col":I
    .end local v21    # "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    .end local v24    # "row":I
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->addCloneViewsInLayout(II)Z

    .line 844
    sget-object v3, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_PINCH:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    .line 845
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 837
    .restart local v4    # "cloneView":Landroid/view/View;
    .restart local v6    # "childView":Landroid/view/View;
    .restart local v16    # "col":I
    .restart local v21    # "holder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    .restart local v24    # "row":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    div-int/lit8 v5, v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v5, v8, v9}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFF)Z

    goto/16 :goto_5
.end method

.method private playLayoutAnimation(Z)Z
    .locals 6
    .param p1, "reverse"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 605
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    if-nez v3, :cond_0

    .line 607
    const-string v2, "GridViewEx"

    const-string v3, "playLayoutAnimation : GridView hasn\'t be layouted yet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_0
    return v1

    .line 611
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v3, v2, :cond_1

    .line 613
    const-string v2, "GridViewEx"

    const-string v3, "playLayoutAnimation : on Layout animation"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 619
    const-string v2, "GridViewEx"

    const-string v3, "playLayoutAnimation : Animation hasn\'t made yet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 623
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setLayoutAnimationStartPoint(Z)Z

    .line 625
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 626
    .local v0, "aniSet":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->getCurrentAnimationList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 627
    const-string v3, "GridViewEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animation size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->getCurrentAnimationList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 629
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 631
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    .line 632
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    .line 633
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    .line 634
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    move v1, v2

    .line 635
    goto :goto_0
.end method

.method private playMoveLayoutAnimation(Z)Z
    .locals 7
    .param p1, "reverse"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 553
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    if-nez v4, :cond_0

    .line 555
    const-string v3, "GridViewEx"

    const-string v4, "playMoveLayoutAnimation : GridView hasn\'t be layouted yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_0
    return v2

    .line 559
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v4, v3, :cond_1

    .line 561
    const-string v3, "GridViewEx"

    const-string v4, "playMoveLayoutAnimation : on Layout animation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v4

    if-ne v4, v3, :cond_2

    .line 567
    const-string v3, "GridViewEx"

    const-string v4, "playMoveLayoutAnimation : Animation hasn\'t made yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :cond_2
    move v1, p1

    .line 572
    .local v1, "needToReverse":Z
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    sget-object v5, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_PINCH:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    if-ne v4, v5, :cond_3

    .line 574
    if-nez v1, :cond_3

    .line 576
    const-string v4, "GridViewEx"

    const-string v5, "playMoveLayoutAnimation: Current animation mode is pinch animation. Clear animation and make move animation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->makeNextMoveLayoutAnimationList()Z

    move-result v4

    if-nez v4, :cond_3

    .line 579
    const-string v3, "GridViewEx"

    const-string v4, "playMoveLayoutAnimation: Fail to make move animation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    goto :goto_0

    .line 586
    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setLayoutAnimationStartPoint(Z)Z

    .line 588
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 589
    .local v0, "aniSet":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->getCurrentAnimationList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 590
    const-string v4, "GridViewEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animation size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->getCurrentAnimationList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 592
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 594
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    .line 595
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    .line 596
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    .line 597
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    .line 598
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    move v2, v3

    .line 600
    goto/16 :goto_0
.end method

.method private recoverPrevColNum()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 1478
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    if-gez v2, :cond_0

    .line 1480
    const-string v1, "GridViewEx"

    const-string v2, "recoverPrevColNum : Columns number to recover is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :goto_0
    return v0

    .line 1485
    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    if-eqz v2, :cond_2

    .line 1487
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setSelection(I)V

    .line 1488
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverScrollPos:Z

    .line 1492
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setNumColumnsWithoutAnimation(I)V

    .line 1495
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    .line 1496
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    .line 1497
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    move v0, v1

    .line 1499
    goto :goto_0
.end method

.method private saveCurrentScrollProperty()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1504
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 1506
    const-string v3, "GridViewEx"

    const-string v4, "saveCurrentScrollProperty : empty view"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :goto_0
    return v2

    .line 1510
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getFirstVisiblePosition()I

    move-result v0

    .line 1511
    .local v0, "firstIndex":I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1513
    .local v1, "firstView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 1515
    const-string v3, "GridViewEx"

    const-string v4, "saveCurrentScrollProperty : fail to find first visible view"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1519
    :cond_1
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    .line 1520
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    .line 1522
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private scrapCurrentViews()Z
    .locals 6

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 534
    const-string v4, "GridViewEx"

    const-string v5, "scrapCurrentView : Has no child view"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v4, 0x0

    .line 548
    :goto_0
    return v4

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v1

    .line 539
    .local v1, "colNum":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 540
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 542
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 543
    .local v0, "childView":Landroid/view/View;
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    rem-int v4, v2, v1

    div-int v5, v2, v1

    invoke-direct {v3, v0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;-><init>(Landroid/view/View;II)V

    .line 544
    .local v3, "itemHolder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 545
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 548
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "itemHolder":Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setLayoutAnimationProgress(F)Z
    .locals 8
    .param p1, "progress"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1129
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    .line 1131
    :cond_0
    const-string v5, "GridViewEx"

    const-string v6, "setLayoutAnimationProgress : Invalid progress"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :goto_0
    return v4

    .line 1135
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v6

    if-ne v6, v5, :cond_2

    .line 1137
    const-string v5, "GridViewEx"

    const-string v6, "setLayoutAnimationProgress : Animation list is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1141
    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    .line 1142
    .local v1, "duration":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->getCurrentAnimationList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .local v0, "animator":Landroid/animation/Animator;
    move-object v2, v0

    .line 1144
    check-cast v2, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    .line 1145
    .local v2, "gridExAni":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    int-to-float v4, v1

    mul-float/2addr v4, p1

    float-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    .line 1148
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v2    # "gridExAni":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    :cond_3
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    .line 1149
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->invalidate()V

    move v4, v5

    .line 1151
    goto :goto_0
.end method

.method private setLayoutAnimationStartPoint(Z)Z
    .locals 5
    .param p1, "reverse"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1109
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 1111
    const-string v3, "GridViewEx"

    const-string v4, "setLayoutAnimationProgress : Animation list is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/4 v3, 0x0

    .line 1124
    :cond_0
    return v3

    .line 1115
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->getCurrentAnimationList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .local v0, "animator":Landroid/animation/Animator;
    move-object v1, v0

    .line 1117
    check-cast v1, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    .line 1118
    .local v1, "gridExAni":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    if-ne p1, v3, :cond_2

    .line 1119
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->reversePoint()V

    goto :goto_0

    .line 1121
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartPoint()V

    goto :goto_0
.end method

.method private setNumColumnsWithAnimation(I)Z
    .locals 5
    .param p1, "numColumns"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 272
    const-string v2, "GridViewEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNumColumnsWithAnimation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    if-ge v2, p1, :cond_1

    .line 276
    const-string v1, "GridViewEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum columns number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v2, v1, :cond_2

    .line 282
    const-string v1, "GridViewEx"

    const-string v2, "setNumColumnsWithAnimation : On layout animation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 289
    if-gtz p1, :cond_3

    .line 291
    const-string v1, "GridViewEx"

    const-string v2, "setNumColumnsWithAnimation : invalid columns number is requested"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_3
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    .line 296
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    .line 297
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->saveCurrentScrollProperty()Z

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 301
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->scrapCurrentViews()Z

    .line 302
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    .line 306
    :cond_4
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    if-lez v2, :cond_5

    .line 308
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setSelection(I)V

    .line 311
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 313
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    if-eqz v2, :cond_6

    .line 314
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v4

    invoke-interface {v2, v3, v4, v0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;->onNumColumnsChanged(IIZ)V

    :cond_6
    move v0, v1

    .line 316
    goto :goto_0
.end method

.method private setNumColumnsWithoutAnimation(I)V
    .locals 3
    .param p1, "numColumns"    # I

    .prologue
    const/4 v2, 0x0

    .line 321
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    if-ge v0, p1, :cond_1

    .line 323
    const-string v0, "GridViewEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum columns number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 329
    const-string v0, "GridViewEx"

    const-string v1, "setNumColumnsWithoutAnimation : On layout animation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 336
    if-lez p1, :cond_0

    .line 339
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    .line 340
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    .line 341
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    .line 342
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->showCurrentRealView()Z

    .line 343
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method private showCurrentCloneViews()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1204
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1206
    const-string v5, "GridViewEx"

    const-string v6, "Has not be cloned"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :goto_0
    return v4

    .line 1210
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1212
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1213
    .local v0, "childView":Landroid/view/View;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1210
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1216
    .end local v0    # "childView":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1217
    .local v2, "count":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    .line 1219
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v1

    .line 1220
    .local v1, "cloneView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 1222
    const-string v5, "GridViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showCurrentCloneViews : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " item is not cloned"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1225
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1228
    .end local v1    # "cloneView":Landroid/view/View;
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private showCurrentRealView()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1176
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    if-nez v5, :cond_0

    .line 1199
    :goto_0
    return v4

    .line 1179
    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1180
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1182
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v1

    .line 1183
    .local v1, "cloneView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 1185
    const-string v5, "GridViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showCurrentRealView : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " item is not cloned"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1188
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1189
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 1192
    .end local v1    # "cloneView":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1194
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1195
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1192
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1199
    .end local v0    # "childView":Landroid/view/View;
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x43fa0000    # 500.0f

    const/4 v4, 0x1

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 436
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 471
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 472
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v5, v4, :cond_4

    .line 481
    :cond_1
    :goto_1
    return v4

    .line 439
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 440
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 443
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 444
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    const/high16 v7, 0x45fa0000    # 8000.0f

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 447
    .local v3, "pointCount":I
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    .line 449
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_0

    .line 451
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 453
    .local v2, "id":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_3

    .line 456
    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    goto :goto_0

    .line 449
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 478
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v3    # "pointCount":I
    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    if-eq v5, v4, :cond_1

    .line 481
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_1

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public enableAlphaAnimation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    .line 268
    return-void
.end method

.method public enableMoveLayoutAnimationMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    .line 263
    return-void
.end method

.method protected layoutChildren()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 416
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v0, v1, :cond_0

    .line 418
    const-string v0, "GridViewEx"

    const-string v1, "layoutChildren : On layout animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    if-ne v0, v1, :cond_1

    .line 424
    const-string v0, "GridViewEx"

    const-string v1, "layoutChildren : Already animation are made"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :cond_1
    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1715
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    .line 1718
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1720
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1721
    .local v0, "childrenView":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1723
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1724
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    .line 1725
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setRight(I)V

    goto :goto_0

    .line 1727
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1730
    .end local v0    # "childrenView":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->showCurrentRealView()Z

    .line 1731
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1733
    const-string v4, "GridViewEx"

    const-string v5, "onAnimationEnd : recoverPrevColNum"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->recoverPrevColNum()Z

    .line 1737
    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    if-eqz v4, :cond_3

    .line 1738
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    invoke-interface {v4, p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;->onAnimationEnd(Lcom/sec/android/touchwiz/widget/TwGridViewEx;)V

    .line 1740
    :cond_3
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    .line 1741
    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1742
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1747
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    .line 1750
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1752
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1753
    .local v0, "childrenView":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1755
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1756
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    .line 1757
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setRight(I)V

    goto :goto_0

    .line 1759
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1762
    .end local v0    # "childrenView":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->showCurrentRealView()Z

    .line 1763
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1765
    const-string v4, "GridViewEx"

    const-string v5, "onAnimationEnd : recoverPrevColNum"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->recoverPrevColNum()Z

    .line 1769
    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    if-eqz v4, :cond_3

    .line 1770
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    invoke-interface {v4, p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;->onAnimationEnd(Lcom/sec/android/touchwiz/widget/TwGridViewEx;)V

    .line 1772
    :cond_3
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    .line 1773
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1779
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;->onAnimationStart(Lcom/sec/android/touchwiz/widget/TwGridViewEx;)V

    .line 1786
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 349
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v1, v2, :cond_1

    .line 351
    const-string v1, "GridViewEx"

    const-string v2, "onLayout : On layout animation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    if-ne v1, v2, :cond_2

    .line 356
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAdapter:Landroid/widget/ListAdapter;

    invoke-super {p0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 358
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    .line 359
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    .line 361
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverScrollPos:Z

    if-ne v1, v2, :cond_4

    .line 363
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 367
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    .line 370
    :cond_3
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    .line 371
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverScrollPos:Z

    .line 372
    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    goto :goto_0

    .line 376
    .end local v0    # "childView":Landroid/view/View;
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    if-ne v1, v2, :cond_0

    .line 378
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    if-ne v1, v2, :cond_7

    .line 380
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    if-lez v1, :cond_5

    .line 382
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setSelection(I)V

    .line 383
    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 386
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->showCurrentCloneViews()Z

    .line 387
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->makePreMoveLayoutAnimationList()Z

    .line 388
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setLayoutAnimationProgress(F)Z

    .line 390
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    if-ne v1, v2, :cond_6

    .line 392
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->playMoveLayoutAnimation(Z)Z

    .line 393
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    .line 409
    :cond_6
    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    goto :goto_0

    .line 398
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->showCurrentCloneViews()Z

    .line 399
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->makeLayoutAnimationList()Z

    .line 400
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setLayoutAnimationProgress(F)Z

    .line 402
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    if-ne v1, v2, :cond_6

    .line 404
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->playLayoutAnimation(Z)Z

    .line 405
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    goto :goto_1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 14
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1529
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    sub-long v6, v10, v12

    .line 1531
    .local v6, "pinchDuration":J
    const/high16 v4, 0x41200000    # 10.0f

    .line 1532
    .local v4, "minDistacne":F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    .line 1534
    .local v8, "prevSpan":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    .line 1535
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    sub-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x42480000    # 50.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_0

    .line 1537
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    cmpg-float v10, v8, v10

    if-gez v10, :cond_2

    .line 1538
    const/high16 v10, 0x42480000    # 50.0f

    add-float/2addr v10, v8

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    .line 1543
    :cond_0
    :goto_0
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    sub-float v2, v10, v8

    .line 1544
    .local v2, "distance":F
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    sub-float v1, v10, v11

    .line 1547
    .local v1, "directionDistance":F
    const/4 v9, 0x0

    .line 1548
    .local v9, "validDistance":Z
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41200000    # 10.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 1550
    const/4 v9, 0x1

    .line 1551
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    .line 1552
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 1554
    sget-object v10, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_IN:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    .line 1562
    :cond_1
    :goto_1
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 1564
    const-string v10, "GridViewEx"

    const-string v11, "onScale : on layout animation"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v10, 0x1

    .line 1633
    :goto_2
    return v10

    .line 1540
    .end local v1    # "directionDistance":F
    .end local v2    # "distance":F
    .end local v9    # "validDistance":Z
    :cond_2
    const/high16 v10, 0x42480000    # 50.0f

    sub-float v10, v8, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    goto :goto_0

    .line 1558
    .restart local v1    # "directionDistance":F
    .restart local v2    # "distance":F
    .restart local v9    # "validDistance":Z
    :cond_3
    sget-object v10, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_OUT:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    goto :goto_1

    .line 1568
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v0

    .line 1569
    .local v0, "colNum":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 1571
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    sget-object v11, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_IN:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    if-ne v10, v11, :cond_7

    .line 1573
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    if-ne v0, v10, :cond_5

    .line 1574
    const/4 v10, 0x0

    goto :goto_2

    .line 1576
    :cond_5
    add-int/lit8 v10, v0, 0x1

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setNumColumnsWithAnimation(I)Z

    .line 1633
    :cond_6
    :goto_3
    const/4 v10, 0x1

    goto :goto_2

    .line 1578
    :cond_7
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    sget-object v11, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_OUT:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    if-ne v10, v11, :cond_6

    .line 1580
    const/4 v10, 0x1

    if-ne v0, v10, :cond_8

    .line 1581
    const/4 v10, 0x0

    goto :goto_2

    .line 1583
    :cond_8
    add-int/lit8 v10, v0, -0x1

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setNumColumnsWithAnimation(I)Z

    goto :goto_3

    .line 1588
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    div-float v3, v2, v10

    .line 1589
    .local v3, "distanceProgess":F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    .line 1591
    .local v5, "nextProgress":F
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    if-ge v10, v0, :cond_a

    .line 1593
    sub-float/2addr v5, v3

    .line 1600
    :goto_4
    const/4 v10, 0x0

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1601
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1603
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 1605
    const-wide/16 v10, 0x78

    cmp-long v10, v6, v10

    if-gez v10, :cond_b

    .line 1607
    const-string v10, "GridViewEx"

    const-string v11, "onScale : On checking flick"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    const/4 v10, 0x1

    goto :goto_2

    .line 1597
    :cond_a
    add-float/2addr v5, v3

    goto :goto_4

    .line 1611
    :cond_b
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-nez v10, :cond_c

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_c

    .line 1613
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->recoverPrevColNum()Z

    .line 1614
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    .line 1615
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    goto :goto_3

    .line 1617
    :cond_c
    const/high16 v10, 0x3e800000    # 0.25f

    cmpl-float v10, v5, v10

    if-lez v10, :cond_d

    .line 1619
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->makeNextMoveLayoutAnimationList()Z

    .line 1620
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->playMoveLayoutAnimation(Z)Z

    goto :goto_3

    .line 1624
    :cond_d
    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setLayoutAnimationProgress(F)Z

    goto :goto_3

    .line 1629
    :cond_e
    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setLayoutAnimationProgress(F)Z

    goto :goto_3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v2, 0x1

    .line 1639
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mTouchCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1641
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    .line 1643
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    .line 1644
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    .line 1646
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    .line 1647
    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 13
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1654
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    .line 1655
    .local v2, "lastDirection":Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;
    iget-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    .line 1656
    .local v6, "startPinchTime":J
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v8

    sub-long v4, v8, v6

    .line 1657
    .local v4, "pinchDuration":J
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    .line 1658
    .local v1, "isFlicked":Z
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    .line 1659
    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    .line 1660
    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    .line 1661
    iput-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    .line 1662
    sget-object v8, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    .line 1663
    iput-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    .line 1665
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v8, v10, :cond_0

    .line 1667
    const-string v8, "GridViewEx"

    const-string v9, "onScaleEnd : On layout animation"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :goto_0
    return-void

    .line 1671
    :cond_0
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v8

    if-ne v8, v10, :cond_1

    .line 1673
    const-string v8, "GridViewEx"

    const-string v9, "onScaleEnd : GridView hasn\'t be layouted. Invoke auto start flag to play animation after layout progress"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    goto :goto_0

    .line 1679
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v0

    .line 1680
    .local v0, "curColNum":I
    const/4 v3, 0x0

    .line 1682
    .local v3, "reverse":Z
    sget-object v8, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_OUT:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    if-ne v2, v8, :cond_2

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    if-gt v0, v8, :cond_3

    :cond_2
    sget-object v8, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_IN:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    if-ne v2, v8, :cond_4

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    if-ge v0, v8, :cond_4

    .line 1685
    :cond_3
    const-string v8, "GridViewEx"

    const-string v9, "onScaleEnd : reverse animation"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const/4 v3, 0x1

    .line 1689
    :cond_4
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    if-ne v8, v10, :cond_6

    .line 1691
    if-ne v1, v10, :cond_5

    .line 1693
    invoke-direct {p0, v11}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->playMoveLayoutAnimation(Z)Z

    .line 1694
    const/4 v3, 0x0

    .line 1702
    :goto_1
    iput-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    .line 1709
    :goto_2
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    goto :goto_0

    .line 1698
    :cond_5
    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->playMoveLayoutAnimation(Z)Z

    .line 1699
    const/4 v3, 0x1

    goto :goto_1

    .line 1706
    :cond_6
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->playLayoutAnimation(Z)Z

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 487
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v1, v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v0

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 494
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    if-eq v1, v0, :cond_0

    .line 497
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 30
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAdapter:Landroid/widget/ListAdapter;

    .line 213
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    return-void
.end method

.method public setColumnChangeAnimationDuration(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 200
    if-gtz p1, :cond_0

    .line 202
    const-string v0, "GridViewEx"

    const-string v1, "setColumnChangeAnimationDuration : Animation duration can\'t be shorter than 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    goto :goto_0
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    .line 230
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    if-gez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    .line 233
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 234
    return-void
.end method

.method public setMaxNumColumns(I)V
    .locals 2
    .param p1, "maxCol"    # I

    .prologue
    .line 161
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 163
    const-string v0, "GridViewEx"

    const-string v1, "Maximum columns number couldn\'t be bigger than 5"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    goto :goto_0
.end method

.method public setNumColumns(I)V
    .locals 0
    .param p1, "numColumns"    # I

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setNumColumnsWithoutAnimation(I)V

    .line 240
    return-void
.end method

.method public setNumColumns(IZ)V
    .locals 4
    .param p1, "numColumns"    # I
    .param p2, "withAni"    # Z

    .prologue
    const/4 v3, 0x1

    .line 244
    if-ne p2, v3, :cond_1

    .line 246
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setNumColumnsWithAnimation(I)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 248
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    .line 250
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v2

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;->onNumColumnsChanged(IIZ)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setNumColumnsWithoutAnimation(I)V

    goto :goto_0
.end method

.method public setOnLayoutAnimationListener(Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    .line 179
    return-void
.end method

.method public setOnNumColumnsChangeListener(Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    .line 190
    return-void
.end method

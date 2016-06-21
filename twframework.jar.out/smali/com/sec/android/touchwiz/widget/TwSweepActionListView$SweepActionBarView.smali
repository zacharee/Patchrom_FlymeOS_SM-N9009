.class Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
.super Landroid/view/View;
.source "TwSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SweepActionBarView"
.end annotation


# static fields
.field private static final CALL_INVALIDATE:I = 0x1


# instance fields
.field actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

.field anim:Landroid/view/animation/Animation;

.field private finalDistance:F

.field index:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field moveDistance:F

.field private oldDistance:F

.field paint:Landroid/graphics/Paint;

.field progress:F

.field rect:Landroid/graphics/Rect;

.field status:I

.field sweepActionView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field viewTop:I

.field width:F


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)V
    .locals 3
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "actionView"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .param p4, "index"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1089
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 1091
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1069
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    .line 1070
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    .line 1082
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    .line 1084
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->oldDistance:F

    .line 1161
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mHandler:Landroid/os/Handler;

    .line 1093
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    .line 1094
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    .line 1095
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 1096
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mContext:Landroid/content/Context;

    .line 1097
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    .line 1098
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    .line 1100
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1101
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->createSweepRect()V

    .line 1102
    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1104
    :cond_0
    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .prologue
    .line 1066
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isEasyOneHandTriggerGesture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .prologue
    .line 1066
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .param p1, "x1"    # Z

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .param p1, "x1"    # F

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->onSweep(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .param p1, "x1"    # F

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setProgress(F)V

    return-void
.end method

.method private createSweepRect()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1108
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    .line 1110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    .line 1111
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1112
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1113
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1114
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    .line 1118
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1119
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    .line 1122
    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    .line 1123
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    .line 1125
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1126
    return-void
.end method

.method private isEasyOneHandTriggerGesture()Z
    .locals 14

    .prologue
    .line 1175
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    .line 1176
    .local v2, "isEasyOneHand":Z
    :goto_0
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchUpTime:J
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchDownTime:J
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x320

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 1177
    :cond_0
    const/4 v5, 0x0

    .line 1192
    :goto_1
    return v5

    .line 1175
    .end local v2    # "isEasyOneHand":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1180
    .restart local v2    # "isEasyOneHand":Z
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1181
    .local v3, "rsrc":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1182
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1184
    .local v4, "width":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchUpPointX:F
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1185
    .local v1, "distance_down_up":F
    float-to-double v6, v1

    int-to-float v5, v4

    float-to-double v8, v5

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    div-double/2addr v8, v10

    cmpg-double v5, v6, v8

    if-gez v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v5

    float-to-double v6, v5

    int-to-float v5, v4

    float-to-double v8, v5

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    div-double/2addr v8, v10

    cmpg-double v5, v6, v8

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v5

    float-to-double v6, v5

    int-to-float v5, v4

    float-to-double v8, v5

    int-to-float v5, v4

    float-to-double v10, v5

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-lez v5, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchUpPointX:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v5

    float-to-double v6, v5

    int-to-float v5, v4

    float-to-double v8, v5

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    div-double/2addr v8, v10

    cmpg-double v5, v6, v8

    if-ltz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchUpPointX:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v5

    float-to-double v6, v5

    int-to-float v5, v4

    float-to-double v8, v5

    int-to-float v5, v4

    float-to-double v10, v5

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-lez v5, :cond_5

    .line 1188
    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    .line 1192
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private onSweep(F)V
    .locals 3
    .param p1, "distance"    # F

    .prologue
    .line 1142
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    .line 1143
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    .line 1144
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->oldDistance:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->finalDistance:F

    .line 1145
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->oldDistance:F

    .line 1147
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 1149
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidate()V

    .line 1152
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->invalidate(Landroid/graphics/Rect;)V

    .line 1154
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentListItem(I)Landroid/view/View;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)Landroid/view/View;

    move-result-object v0

    .line 1155
    .local v0, "lView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1159
    .end local v0    # "lView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private requestAnimation(FFI)V
    .locals 4
    .param p1, "startPosition"    # F
    .param p2, "endPosition"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 1198
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1199
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V

    .line 1200
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    # setter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1602(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)I

    .line 1203
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    .line 1205
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1206
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1207
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1283
    return-void
.end method

.method private setProgress(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1136
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1138
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    div-float v0, p1, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    goto :goto_0
.end method

.method private setSweepAnimation(Z)V
    .locals 8
    .param p1, "animation"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1306
    const/4 v2, 0x0

    .line 1307
    .local v2, "startPosition":F
    const/4 v1, 0x0

    .line 1308
    .local v1, "endPosition":F
    const/4 v0, 0x0

    .line 1310
    .local v0, "duration":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    packed-switch v3, :pswitch_data_0

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1314
    :pswitch_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    .line 1316
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1317
    const/4 v1, 0x0

    .line 1318
    const/16 v0, 0x190

    .line 1333
    :goto_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    rsub-int v0, v3, 0x258

    .line 1336
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    mul-float/2addr v3, v4

    cmpg-float v3, v3, v6

    if-gez v3, :cond_8

    .line 1337
    mul-int/lit8 v0, v0, 0x2

    .line 1341
    :cond_1
    :goto_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 1360
    :goto_3
    if-lez v0, :cond_0

    .line 1361
    invoke-direct {p0, v2, v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->requestAnimation(FFI)V

    .line 1363
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1364
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1320
    :cond_2
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->finalDistance:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 1321
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->finalDistance:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    .line 1322
    :goto_4
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->finalDistance:F

    .line 1329
    :goto_5
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F

    move-result v1

    .line 1330
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2402(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z

    goto :goto_1

    .line 1321
    :cond_3
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    neg-float v1, v3

    goto :goto_4

    .line 1323
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1324
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    :goto_6
    goto :goto_5

    :cond_5
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    neg-float v1, v3

    goto :goto_6

    .line 1326
    :cond_6
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchUpPointX:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    :goto_7
    goto :goto_5

    :cond_7
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    neg-float v1, v3

    goto :goto_7

    .line 1338
    :cond_8
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    .line 1339
    const/16 v0, 0x64

    goto/16 :goto_2

    .line 1346
    :pswitch_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    neg-float v4, v4

    mul-float v2, v3, v4

    .line 1348
    if-nez p1, :cond_9

    .line 1349
    const/4 v0, 0x0

    .line 1350
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    goto/16 :goto_3

    .line 1352
    :cond_9
    const/16 v0, 0x190

    .line 1354
    goto/16 :goto_3

    .line 1310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sweepActionViewRemove()V
    .locals 1

    .prologue
    .line 1287
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 1289
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 1293
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1299
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1302
    :cond_1
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 1373
    .local v7, "restoreCount":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1374
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1376
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->drawSweepBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 1383
    :cond_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1384
    return-void
.end method

.method public setTranslate()V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;->setTranslate(F)V

    .line 1131
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->invalidate()V

    .line 1133
    :cond_0
    return-void
.end method

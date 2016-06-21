.class Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;
.super Ljava/lang/Object;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenSelectVibrator"
.end annotation


# instance fields
.field isHapticFeedbackEnabled:Z

.field private mIvt:[B

.field private mVibrator:Landroid/os/SystemVibrator;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 2

    .prologue
    .line 10215
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 10205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    .line 10207
    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->mIvt:[B

    .line 10216
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    .line 10217
    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 10219
    :cond_0
    return-void

    .line 10207
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x16t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x2ft
        0x4dt
        -0x1t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x41t
        -0x7dt
        -0x4et
        0x0t
    .end array-data
.end method


# virtual methods
.method playVibrator()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 10222
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    .line 10223
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 10226
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "spen_feedback_haptic_pen_gesture"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    .line 10228
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 10229
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->mIvt:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    .line 10231
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 10226
    goto :goto_0
.end method

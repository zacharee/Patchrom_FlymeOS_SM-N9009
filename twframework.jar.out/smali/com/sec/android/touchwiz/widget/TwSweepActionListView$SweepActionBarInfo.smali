.class public Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
.super Ljava/lang/Object;
.source "TwSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SweepActionBarInfo"
.end annotation


# instance fields
.field public allowLeftToRightSweep:Z

.field public allowRightToLeftSweep:Z

.field public childIdForLocationHint:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1406
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>(ZZI)V

    .line 1407
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "allowLeftToRightSweep"    # Z
    .param p2, "allowRightToLeftSweep"    # Z

    .prologue
    .line 1402
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>(ZZI)V

    .line 1403
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0
    .param p1, "allowLeftToRightSweep"    # Z
    .param p2, "allowRightToLeftSweep"    # Z
    .param p3, "childIdForLocationHint"    # I

    .prologue
    .line 1394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 1397
    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    .line 1398
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    .line 1399
    return-void
.end method

.class Lcom/android/server/AlarmManagerService$AlarmStat;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlarmStat"
.end annotation


# instance fields
.field public count:I

.field public final pid:I

.field public final uid:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput p1, p0, Lcom/android/server/AlarmManagerService$AlarmStat;->uid:I

    .line 694
    iput p2, p0, Lcom/android/server/AlarmManagerService$AlarmStat;->pid:I

    .line 695
    return-void
.end method

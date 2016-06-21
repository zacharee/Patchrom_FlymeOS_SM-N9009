.class Lcom/android/server/am/SmartAdjustManager$2;
.super Ljava/lang/Object;
.source "SmartAdjustManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SmartAdjustManager;->smartAdjustProcessesLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/ProcessRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SmartAdjustManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SmartAdjustManager;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager$2;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I
    .locals 5
    .param p1, "app1"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "app2"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 602
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v3, :cond_4

    .line 603
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-le v3, v4, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v0

    .line 605
    :cond_1
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-ge v3, v4, :cond_2

    move v0, v1

    .line 606
    goto :goto_0

    .line 607
    :cond_2
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-lt v3, v4, :cond_0

    .line 609
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-le v0, v3, :cond_3

    move v0, v1

    .line 610
    goto :goto_0

    :cond_3
    move v0, v2

    .line 612
    goto :goto_0

    .line 614
    :cond_4
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v3, v4, :cond_0

    .line 616
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-ge v0, v3, :cond_5

    move v0, v1

    .line 617
    goto :goto_0

    :cond_5
    move v0, v2

    .line 618
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 599
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/SmartAdjustManager$2;->compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    return v0
.end method

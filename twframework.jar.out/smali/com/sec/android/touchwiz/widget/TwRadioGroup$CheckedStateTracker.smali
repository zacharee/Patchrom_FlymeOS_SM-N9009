.class Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "TwRadioGroup.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;->this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwRadioGroup;Lcom/sec/android/touchwiz/widget/TwRadioGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    .param p2, "x1"    # Lcom/sec/android/touchwiz/widget/TwRadioGroup$1;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;-><init>(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 333
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;->this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    # getter for: Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->access$300(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;->this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->access$302(Lcom/sec/android/touchwiz/widget/TwRadioGroup;Z)Z

    .line 338
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;->this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    # getter for: Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->access$400(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 339
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;->this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;->this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    # getter for: Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->access$400(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)I

    move-result v2

    # invokes: Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedStateForView(IZ)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->access$500(Lcom/sec/android/touchwiz/widget/TwRadioGroup;IZ)V

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;->this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    # setter for: Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1, v3}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->access$302(Lcom/sec/android/touchwiz/widget/TwRadioGroup;Z)Z

    .line 343
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getId()I

    move-result v0

    .line 344
    .local v0, "id":I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;->this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    # invokes: Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedId(I)V
    invoke-static {v1, v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->access$600(Lcom/sec/android/touchwiz/widget/TwRadioGroup;I)V

    goto :goto_0
.end method

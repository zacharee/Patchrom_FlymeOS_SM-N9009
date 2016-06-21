.class Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    .prologue
    .line 2707
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 2714
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 2715
    const/4 v0, 0x0

    .line 2717
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View$AccessibilityDelegate;->createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2722
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2724
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1, p1}, Landroid/widget/AbsHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2725
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/AbsHorizontalListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2726
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2730
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2774
    :goto_0
    return v4

    .line 2734
    :cond_0
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6, p1}, Landroid/widget/AbsHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 2735
    .local v1, "position":I
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2737
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eq v1, v7, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v4, v5

    .line 2739
    goto :goto_0

    .line 2742
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v4, v5

    .line 2744
    goto :goto_0

    .line 2747
    :cond_4
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6, v1}, Landroid/widget/AbsHorizontalListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 2749
    .local v2, "id":J
    sparse-switch p2, :sswitch_data_0

    move v4, v5

    .line 2774
    goto :goto_0

    .line 2751
    :sswitch_0
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AbsHorizontalListView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v1, :cond_5

    .line 2752
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v5, v7}, Landroid/widget/AbsHorizontalListView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v4, v5

    .line 2755
    goto :goto_0

    .line 2757
    :sswitch_1
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AbsHorizontalListView;->getSelectedItemPosition()I

    move-result v6

    if-eq v6, v1, :cond_6

    .line 2758
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v5, v1}, Landroid/widget/AbsHorizontalListView;->setSelection(I)V

    goto :goto_0

    :cond_6
    move v4, v5

    .line 2761
    goto :goto_0

    .line 2763
    :sswitch_2
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2764
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4, p1, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_7
    move v4, v5

    .line 2766
    goto :goto_0

    .line 2768
    :sswitch_3
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2769
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4, p1, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_8
    move v4, v5

    .line 2771
    goto :goto_0

    .line 2749
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

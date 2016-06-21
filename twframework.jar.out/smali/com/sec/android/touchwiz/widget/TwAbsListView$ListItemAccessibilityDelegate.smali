.class Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0

    .prologue
    .line 2980
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 2988
    const/4 v0, 0x0

    .line 2990
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
    .line 2995
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2997
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2998
    .local v0, "position":I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v1, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2999
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

    .line 3003
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3047
    :goto_0
    return v4

    .line 3007
    :cond_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 3008
    .local v1, "position":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 3010
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eq v1, v7, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v4, v5

    .line 3012
    goto :goto_0

    .line 3015
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v4, v5

    .line 3017
    goto :goto_0

    .line 3020
    :cond_4
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 3022
    .local v2, "id":J
    sparse-switch p2, :sswitch_data_0

    move v4, v5

    .line 3047
    goto :goto_0

    .line 3024
    :sswitch_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v1, :cond_5

    .line 3025
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v4, v5

    .line 3028
    goto :goto_0

    .line 3030
    :sswitch_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v6

    if-eq v6, v1, :cond_6

    .line 3031
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    goto :goto_0

    :cond_6
    move v4, v5

    .line 3034
    goto :goto_0

    .line 3036
    :sswitch_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3037
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, p1, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_7
    move v4, v5

    .line 3039
    goto :goto_0

    .line 3041
    :sswitch_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3042
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, p1, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_8
    move v4, v5

    .line 3044
    goto :goto_0

    .line 3022
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

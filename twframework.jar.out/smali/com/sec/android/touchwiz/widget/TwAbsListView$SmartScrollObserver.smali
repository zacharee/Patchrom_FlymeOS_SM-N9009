.class Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;
.super Landroid/database/ContentObserver;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartScrollObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1

    .prologue
    .line 9958
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .line 9959
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9960
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 9967
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 9982
    return-void
.end method

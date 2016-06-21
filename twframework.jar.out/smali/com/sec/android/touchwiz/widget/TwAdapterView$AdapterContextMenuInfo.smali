.class public Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "TwAdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 560
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    .line 561
    iput-wide p3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->id:J

    .line 562
    return-void
.end method

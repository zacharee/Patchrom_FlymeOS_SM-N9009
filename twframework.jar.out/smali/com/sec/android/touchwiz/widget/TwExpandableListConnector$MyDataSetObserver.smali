.class public Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "TwExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;


# direct methods
.method protected constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 891
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->access$000(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;ZZ)V

    .line 893
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->notifyDataSetChanged()V

    .line 894
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 898
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->access$000(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;ZZ)V

    .line 900
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->notifyDataSetInvalidated()V

    .line 901
    return-void
.end method

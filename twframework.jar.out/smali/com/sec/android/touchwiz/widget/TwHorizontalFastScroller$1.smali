.class Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;
.super Ljava/lang/Object;
.source "TwHorizontalFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;I)V

    .line 226
    return-void
.end method

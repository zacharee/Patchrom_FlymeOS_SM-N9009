.class Landroid/os/DVFSHelper$ModelPicasso3GWIFI;
.super Landroid/os/DVFSHelper$ModelHA;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelPicasso3GWIFI"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    .line 1720
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelHA;-><init>(Landroid/os/DVFSHelper;)V

    .line 1721
    const v0, 0xf4240

    iput v0, p0, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;->BROWSER_FLING_ARM_FREQ:I

    .line 1722
    return-void
.end method

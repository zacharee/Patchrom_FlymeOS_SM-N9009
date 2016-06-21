.class Landroid/os/DVFSHelper$ModelPXA1088;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelPXA1088"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v0, 0x82208

    const v1, 0x98580

    .line 1771
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelPXA1088;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1772
    iput v1, p0, Landroid/os/DVFSHelper$ModelPXA1088;->AMS_RESUME_GPU_FREQ:I

    .line 1773
    iput v0, p0, Landroid/os/DVFSHelper$ModelPXA1088;->AMS_RESUME_BUS_FREQ:I

    .line 1774
    iput v1, p0, Landroid/os/DVFSHelper$ModelPXA1088;->APP_LAUNCH_GPU_FREQ:I

    .line 1775
    iput v0, p0, Landroid/os/DVFSHelper$ModelPXA1088;->APP_LAUNCH_BUS_FREQ:I

    .line 1776
    const v0, 0x104410

    iput v0, p0, Landroid/os/DVFSHelper$ModelPXA1088;->LIST_SCROLL_ARM_FREQ:I

    .line 1777
    iput v1, p0, Landroid/os/DVFSHelper$ModelPXA1088;->LIST_SCROLL_GPU_FREQ:I

    .line 1778
    const v0, 0x4c2c0

    iput v0, p0, Landroid/os/DVFSHelper$ModelPXA1088;->LIST_SCROLL_BUS_FREQ:I

    .line 1779
    return-void
.end method

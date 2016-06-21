.class public Lcom/android/server/power/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$SoundThread;,
        Lcom/android/server/power/ShutdownDialog$DrawHandler;,
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread;,
        Lcom/android/server/power/ShutdownDialog$RunningCheckable;,
        Lcom/android/server/power/ShutdownDialog$StateDrawing;,
        Lcom/android/server/power/ShutdownDialog$StatePrepare;,
        Lcom/android/server/power/ShutdownDialog$DrawState;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x3

.field private static final MSG_LOAD_FINISH:I = -0x1

.field private static final MSG_UPDATE_DELAY:I = 0x64

.field private static final MSG_UPDATE_FRAME:I = 0x0

.field private static final PATH_BOOTSAMSUNG:Ljava/lang/String; = "//system/media/bootsamsung.qmg"

.field private static final PATH_BOOTSAMSUNG_LOOP:Ljava/lang/String; = "//system/media/bootsamsungloop.qmg"

.field private static final PATH_COVER_POSTFIX:Ljava/lang/String; = ".cover"

.field private static final PATH_MINI_COVER_POSTFIX:Ljava/lang/String; = ".mini"

.field private static final PATH_OLD_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_PST_IMG:Ljava/lang/String; = "//system/PST/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/PowerOff.ogg"

.field private static final PATH_SHUTDOWN_AFTER:Ljava/lang/String; = "//system/media/shutdownafter.qmg"

.field private static final PATH_SHUTDOWN_BEFORE:Ljava/lang/String; = "//system/media/shutdownbefore.qmg"

.field private static final PATH_SHUTDOWN_LOOP:Ljava/lang/String; = "//system/media/shutdownloop.qmg"

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private final bitmapQ:[Landroid/graphics/Bitmap;

.field private bitmapQFront:I

.field private bitmapQRear:I

.field private final coverQmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private doLoopAnim:Z

.field private final drawBufferLock:Ljava/lang/Object;

.field private final logHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

.field private mImageView:Landroid/widget/ImageView;

.field private final mLogString:Ljava/lang/StringBuffer;

.field private mLogView:Landroid/widget/TextView;

.field private mState:Lcom/android/server/power/ShutdownDialog$DrawState;

.field private final mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

.field private final mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

.field private mp:Landroid/media/MediaPlayer;

.field private final qmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private shutdownSoundPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 139
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 106
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 107
    iput v4, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    .line 108
    iput v4, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    .line 109
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    .line 119
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    .line 120
    new-instance v2, Lcom/android/server/power/ShutdownDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownDialog$1;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    .line 133
    new-instance v2, Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    .line 134
    new-instance v2, Lcom/android/server/power/ShutdownDialog$StateDrawing;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    .line 135
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    .line 143
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {p0, v4}, Lcom/android/server/power/ShutdownDialog;->setCancelable(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 149
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x680588

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 156
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 157
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.cocktailbar"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 160
    .local v0, "hasCocktail":Z
    if-eqz v0, :cond_0

    .line 161
    const/16 v2, 0x8ad

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 168
    return-void

    .line 163
    :cond_0
    const/16 v2, 0x7e5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Lcom/android/server/power/ShutdownDialog$DrawState;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/ShutdownDialog;Lcom/samsung/android/cover/CoverManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->getSCoverState(Lcom/samsung/android/cover/CoverManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/ShutdownDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/power/ShutdownDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/power/ShutdownDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getSystemVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->shutdownSoundPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    return-void
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 642
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 643
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    new-instance v4, Lcom/android/server/power/LibQmg;

    invoke-direct {v4, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 645
    .local v0, "cm":Lcom/samsung/android/cover/CoverManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->getCoverType(Lcom/samsung/android/cover/CoverManager;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 647
    const-string v3, ".mini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 652
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    new-instance v4, Lcom/android/server/power/LibQmg;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    :goto_1
    const/4 v1, 0x1

    .line 660
    .end local v0    # "cm":Lcom/samsung/android/cover/CoverManager;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .local v1, "rtn":Z
    :goto_2
    return v1

    .line 649
    .end local v1    # "rtn":Z
    .restart local v0    # "cm":Lcom/samsung/android/cover/CoverManager;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const-string v3, ".cover"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 654
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 658
    .end local v0    # "cm":Lcom/samsung/android/cover/CoverManager;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "rtn":Z
    goto :goto_2
.end method

.method private createBootupQmgPlayList()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 665
    const-string v0, "//system/media/bootsamsung.qmg"

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 667
    return-void
.end method

.method private createShutdownQmgPlayList()V
    .locals 4

    .prologue
    .line 670
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 671
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 672
    const/4 v1, 0x0

    .line 673
    .local v1, "imei_mps_code":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v1

    .line 674
    if-eqz v1, :cond_1

    .line 675
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "//system/media/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_shutdown.qmg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 677
    .local v0, "chameleonPath":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 705
    .end local v0    # "chameleonPath":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    const-string v2, "//system/PST/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 688
    const-string v2, "//system/csc_contents/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 692
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 695
    new-instance v2, Ljava/io/File;

    const-string v3, "//system/media/shutdown.qmg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 697
    const-string v2, "//system/media/shutdownbefore.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 698
    const-string v2, "//system/media/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 699
    const-string v2, "//system/media/shutdownafter.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    goto :goto_0

    .line 702
    :cond_2
    const-string v2, "//system/media/shutdownloop.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private getChameleonCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 597
    new-instance v1, Ljava/io/File;

    const-string v2, "/carrier/chameleon.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    const/4 v0, 0x0

    .line 602
    :goto_0
    return-object v0

    .line 600
    :cond_0
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "ShutdownDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@Power off sound CHAMELEON is activated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCoverType(Lcom/samsung/android/cover/CoverManager;)I
    .locals 3
    .param p1, "cm"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    .line 405
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 406
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_0

    .line 407
    const-string v1, "ShutdownDialog"

    const-string/jumbo v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v1, -0x1

    .line 410
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    goto :goto_0
.end method

.method private getSCoverState(Lcom/samsung/android/cover/CoverManager;)Z
    .locals 3
    .param p1, "cm"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    .line 396
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 397
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_0

    .line 398
    const-string v1, "ShutdownDialog"

    const-string/jumbo v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v1, 0x1

    .line 401
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    goto :goto_0
.end method

.method private getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "soundPath"    # Ljava/lang/String;

    .prologue
    .line 606
    if-eqz p1, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    .end local p1    # "soundPath":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 612
    .restart local p1    # "soundPath":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "salesCode":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 614
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/system/media/audio/ui/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/PowerOff.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 616
    .local v0, "chameleonPath":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 623
    .end local v0    # "chameleonPath":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v5, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 624
    const-string p1, "//system/csc_contents/PowerOff.ogg"

    goto :goto_0

    .line 627
    :cond_2
    const-string v2, "//system/media/audio/ui/PowerOff.wav"

    .line 628
    .local v2, "poweroff_wav":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 629
    const-string p1, "//system/media/audio/ui/PowerOff.wav"

    goto :goto_0

    .line 632
    :cond_3
    const-string v1, "//system/media/audio/ui/PowerOff.ogg"

    .line 633
    .local v1, "poweroff_ogg":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 634
    const-string p1, "//system/media/audio/ui/PowerOff.ogg"

    goto :goto_0

    .line 637
    :cond_4
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getSystemVolume()I
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 311
    const/16 v1, -0x270f

    .line 312
    .local v1, "systemVolume":I
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 313
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 314
    const-string/jumbo v2, "shutdown"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 317
    :cond_0
    const-string v2, "ShutdownDialog"

    const-string v3, "!@systemVol:%d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return v1
.end method

.method private prepareSound(Ljava/lang/String;)V
    .locals 8
    .param p1, "soundPath"    # Ljava/lang/String;

    .prologue
    .line 323
    const/4 v2, 0x0

    .line 324
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    .line 328
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 329
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 331
    const-string/jumbo v5, "situation=8;device=0"

    invoke-static {v5}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 333
    .local v4, "vol":F
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 334
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 335
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/android/server/power/ShutdownDialog$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/ShutdownDialog$2;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 340
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    if-eqz v3, :cond_0

    .line 351
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 357
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "vol":F
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-void

    .line 353
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "vol":F
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "ShutdownDialog"

    const-string/jumbo v6, "sound file.close"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 356
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 341
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "vol":F
    :catch_1
    move-exception v0

    .line 342
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "ShutdownDialog"

    const-string v6, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    if-eqz v2, :cond_1

    .line 351
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 353
    :catch_2
    move-exception v0

    .line 354
    const-string v5, "ShutdownDialog"

    const-string/jumbo v6, "sound file.close"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 343
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    :try_start_5
    const-string v5, "ShutdownDialog"

    const-string v6, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 350
    if-eqz v2, :cond_1

    .line 351
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 353
    :catch_4
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "ShutdownDialog"

    const-string/jumbo v6, "sound file.close"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 345
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_3
    :try_start_7
    const-string v5, "ShutdownDialog"

    const-string v6, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 350
    if-eqz v2, :cond_1

    .line 351
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 353
    :catch_6
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "ShutdownDialog"

    const-string/jumbo v6, "sound file.close"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 349
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 350
    :goto_4
    if-eqz v2, :cond_2

    .line 351
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 355
    :cond_2
    :goto_5
    throw v5

    .line 353
    :catch_7
    move-exception v0

    .line 354
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "ShutdownDialog"

    const-string/jumbo v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 349
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 345
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 343
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 341
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public appendTextLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 726
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 727
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 728
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ShutdownDialog"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 730
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 731
    return-void
.end method

.method public drawState()I
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public existAnim()Z
    .locals 1

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    .line 736
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 172
    const-string v2, "ShutdownDialog"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 176
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 181
    .local v1, "layoutparams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    .line 187
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    .line 188
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    const v3, -0xff0001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 197
    new-instance v2, Lcom/android/server/power/ShutdownDialog$DrawHandler;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 199
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 204
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 205
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 210
    return-void
.end method

.method public prepareShutdown()V
    .locals 2

    .prologue
    .line 740
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->shutdownSoundPath:Ljava/lang/String;

    .line 742
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    .line 743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    .line 744
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare()V

    .line 745
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 755
    return-void
.end method

.method public waitForAnimEnd(I)Z
    .locals 10
    .param p1, "timeout"    # I

    .prologue
    .line 708
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v8, v3

    add-long v4, v6, v8

    .line 709
    .local v4, "endTime":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v3}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 710
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 711
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_1

    .line 712
    const-string v3, "ShutdownDialog"

    const-string v6, "!@Animation finish wait timed out"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .end local v0    # "delay":J
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 715
    .restart local v0    # "delay":J
    :cond_1
    const-string v3, "ShutdownDialog"

    const-string/jumbo v6, "wait for finish : sleep 100ms"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    :catch_0
    move-exception v2

    .line 719
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "ShutdownDialog"

    const-string v6, "InterruptedException"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

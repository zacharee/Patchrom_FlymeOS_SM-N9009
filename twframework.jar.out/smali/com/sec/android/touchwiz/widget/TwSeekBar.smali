.class public Lcom/sec/android/touchwiz/widget/TwSeekBar;
.super Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;
.source "TwSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;,
        Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final mScafe:Ljava/lang/String;


# instance fields
.field private mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mScafe:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mScafe:Ljava/lang/String;

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "TwSeekBar"

    const-string v1, "This API can be used in models based on L platform."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mScafe:Ljava/lang/String;

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "TwSeekBar"

    const-string v1, "This API can be used in models based on L platform."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mScafe:Ljava/lang/String;

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, "TwSeekBar"

    const-string v1, "This API can be used in models based on L platform."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method onHoverChanged(III)V
    .locals 2
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;->onHoverChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V

    .line 209
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onHoverChanged(III)V

    .line 210
    return-void
.end method

.method onProgressRefresh(FZ)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onProgressRefresh(FZ)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V

    .line 140
    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 1
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;->onStartTrackingHover(Lcom/sec/android/touchwiz/widget/TwSeekBar;I)V

    .line 193
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingHover(III)V

    .line 194
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 159
    :cond_0
    return-void
.end method

.method onStopTrackingHover()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;->onStopTrackingHover(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 201
    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingHover()V

    .line 202
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 166
    :cond_0
    return-void
.end method

.method public setOnSeekBarHoverListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    .line 186
    return-void
.end method

.method public setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 152
    return-void
.end method

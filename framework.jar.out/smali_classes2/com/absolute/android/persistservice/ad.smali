.class final Lcom/absolute/android/persistservice/ad;
.super Landroid/os/FileObserver;
.source "SourceFile"


# static fields
.field private static final b:I = 0x6c4


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ab;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/absolute/android/persistservice/ab;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 412
    iput-object p1, p0, Lcom/absolute/android/persistservice/ad;->a:Lcom/absolute/android/persistservice/ab;

    .line 413
    const/16 v0, 0x6c4

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 414
    iput-object p2, p0, Lcom/absolute/android/persistservice/ad;->c:Ljava/lang/String;

    .line 415
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 423
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->c:Ljava/lang/String;

    .line 428
    :goto_0
    const v1, 0xffff

    and-int/2addr v1, p1

    sparse-switch v1, :sswitch_data_0

    .line 440
    :goto_1
    return-void

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 430
    :sswitch_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->a:Lcom/absolute/android/persistservice/ab;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;Ljava/lang/String;)V

    goto :goto_1

    .line 437
    :sswitch_1
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->a:Lcom/absolute/android/persistservice/ab;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;Ljava/lang/String;Z)V

    goto :goto_1

    .line 428
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x40 -> :sswitch_1
        0x80 -> :sswitch_1
        0x200 -> :sswitch_1
        0x400 -> :sswitch_1
    .end sparse-switch
.end method

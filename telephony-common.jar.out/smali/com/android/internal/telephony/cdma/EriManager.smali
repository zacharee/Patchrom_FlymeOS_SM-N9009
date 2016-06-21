.class public final Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field static final ERI_FROM_MODEM:I = 0x2

.field static final ERI_FROM_XML:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final VDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mIsEriFileLoaded:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "eriFileSource"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 105
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 106
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 107
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 108
    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .locals 11
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    const v10, 0x10400c7

    const v9, 0x10400c5

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 291
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    if-eqz v4, :cond_0

    .line 292
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 293
    .local v1, "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    if-eqz v1, :cond_0

    .line 295
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .local v2, "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    move-object v3, v2

    .line 492
    .end local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .local v3, "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 316
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 413
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    if-nez v4, :cond_2

    .line 415
    const-string v4, "CDMA"

    const-string v5, "ERI File not loaded"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-le p2, v8, :cond_1

    .line 418
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v8, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_1
    move-object v3, v2

    .line 492
    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 319
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .end local v3    # "ret":Ljava/lang/Object;
    :pswitch_0
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v7, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 323
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 326
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_1
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400c6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v6, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 330
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 333
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_2
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v8, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 337
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 342
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_3
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400c8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 346
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 349
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_4
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400c9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 353
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 356
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_5
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400ca

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 360
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 363
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_6
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400cb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 367
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 370
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_7
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400cc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 374
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 377
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_8
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 381
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 384
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_9
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400ce

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 388
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 391
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_a
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400cf

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 395
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 398
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_b
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400d0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 402
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 405
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_c
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400d1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 409
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 425
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_1
    packed-switch p2, :pswitch_data_1

    .line 451
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-string v6, "ERI text"

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 427
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_d
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v7, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 432
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 435
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_e
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400c6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v6, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 440
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 443
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_f
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v8, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 448
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 456
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 457
    .restart local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    .line 458
    .local v0, "defEriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v1, :cond_4

    .line 463
    if-nez v0, :cond_3

    .line 464
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERI defRoamInd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found in ERI file ...on"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v7, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 476
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v4, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v5, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 483
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_4
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 425
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .locals 2
    .param p1, "roamingIndicator"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/EriInfo;

    .line 283
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadEriFileFromFileSystem()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method private loadEriFileFromModem()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method private loadEriFileFromXml()V
    .locals 20

    .prologue
    .line 158
    const/4 v13, 0x0

    .line 159
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    .line 160
    .local v15, "stream":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 163
    .local v14, "r":Landroid/content/res/Resources;
    :try_start_0
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: check for alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v16, Ljava/io/FileInputStream;

    const v2, 0x104054d

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 167
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 168
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: opened alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v15, v16

    .line 177
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_0
    if-nez v13, :cond_0

    .line 178
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: open normal file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const v2, 0x1110007

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 183
    :cond_0
    :try_start_2
    const-string v2, "EriFile"

    invoke-static {v13, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, 0x0

    const-string v19, "VersionNumber"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, 0x0

    const-string v19, "NumberOfEriEntries"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, 0x0

    const-string v19, "EriFileType"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 191
    const/4 v12, 0x0

    .line 193
    .local v12, "parsedEriEntries":I
    :cond_1
    :goto_1
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 194
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, "name":Ljava/lang/String;
    if-nez v11, :cond_5

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    if-eq v12, v2, :cond_2

    .line 197
    const-string v2, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Parsing ERI file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " defined, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " parsed!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_2
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: eri parsing successful, file loaded"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    instance-of v2, v13, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_3

    .line 231
    check-cast v13, Landroid/content/res/XmlResourceParser;

    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 234
    :cond_3
    if-eqz v15, :cond_4

    .line 235
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 241
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parsedEriEntries":I
    :cond_4
    :goto_2
    return-void

    .line 169
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v9

    .line 170
    .local v9, "e":Ljava/io/FileNotFoundException;
    :goto_3
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: no alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v13, 0x0

    .line 175
    goto/16 :goto_0

    .line 172
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 173
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: no parser for alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 200
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "parsedEriEntries":I
    :cond_5
    :try_start_4
    const-string v2, "CallPromptId"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 201
    const/4 v2, 0x0

    const-string v18, "Id"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 202
    .local v10, "id":I
    const/4 v2, 0x0

    const-string v18, "CallPromptText"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 203
    .local v17, "text":Ljava/lang/String;
    if-ltz v10, :cond_7

    const/4 v2, 0x2

    if-gt v10, v2, :cond_7

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v17, v2, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 227
    .end local v10    # "id":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parsedEriEntries":I
    .end local v17    # "text":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 228
    .local v9, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "CDMA"

    const-string v18, "Got exception while loading ERI file."

    move-object/from16 v0, v18

    invoke-static {v2, v0, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 230
    instance-of v2, v13, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_6

    .line 231
    check-cast v13, Landroid/content/res/XmlResourceParser;

    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 234
    :cond_6
    if-eqz v15, :cond_4

    .line 235
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 237
    :catch_3
    move-exception v2

    goto :goto_2

    .line 206
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "id":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "parsedEriEntries":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "text":Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v2, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Parsing ERI file: found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " CallPromptId"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 230
    .end local v10    # "id":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parsedEriEntries":I
    .end local v17    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v2

    instance-of v0, v13, Landroid/content/res/XmlResourceParser;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 231
    check-cast v13, Landroid/content/res/XmlResourceParser;

    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 234
    :cond_8
    if-eqz v15, :cond_9

    .line 235
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 239
    :cond_9
    :goto_5
    throw v2

    .line 209
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "parsedEriEntries":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_a
    :try_start_9
    const-string v2, "EriInfo"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const/4 v2, 0x0

    const-string v18, "RoamingIndicator"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 212
    .local v3, "roamingIndicator":I
    const/4 v2, 0x0

    const-string v18, "IconIndex"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 213
    .local v4, "iconIndex":I
    const/4 v2, 0x0

    const-string v18, "IconMode"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 214
    .local v5, "iconMode":I
    const/4 v2, 0x0

    const-string v18, "EriText"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "eriText":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v18, "CallPromptId"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 217
    .local v7, "callPromptId":I
    const/4 v2, 0x0

    const-string v18, "AlertId"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 218
    .local v8, "alertId":I
    add-int/lit8 v12, v12, 0x1

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    new-instance v2, Lcom/android/internal/telephony/cdma/EriInfo;

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 237
    .end local v3    # "roamingIndicator":I
    .end local v4    # "iconIndex":I
    .end local v5    # "iconMode":I
    .end local v6    # "eriText":Ljava/lang/String;
    .end local v7    # "callPromptId":I
    .end local v8    # "alertId":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parsedEriEntries":I
    :catch_5
    move-exception v18

    goto :goto_5

    .line 172
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 169
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method


# virtual methods
.method public IsDomesticRoaming(II)Z
    .locals 3
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 523
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 527
    :cond_1
    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->IsInternationalRoaming(II)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 528
    goto :goto_0
.end method

.method public IsInternationalRoaming(II)Z
    .locals 3
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    const/4 v1, 0x0

    .line 509
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v1

    .line 513
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v2

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    .line 514
    .local v0, "eriText":Ljava/lang/String;
    const-string v2, "International Roaming"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "International"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Premium International"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "International Services"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "International Voice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Int\'l Voice/Data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    .line 113
    return-void
.end method

.method public getCdmaEriIconIndex(II)I
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    .line 496
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode(II)I
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    .line 500
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return v0
.end method

.method public getCdmaEriText(II)Ljava/lang/String;
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    .line 504
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object v0
.end method

.method public getEriFileType()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return v0
.end method

.method public getEriFileVersion()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return v0
.end method

.method public getEriNumberOfEntries()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return v0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    return v0
.end method

.method public loadEriFile()V
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    .line 131
    :goto_0
    return-void

    .line 119
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    goto :goto_0

    .line 123
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2528
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    .line 2543
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    .line 2544
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    .line 2546
    return-void

    .line 2528
    :array_0
    .array-data 4
        0x102037d
        0x102037e
        0x102037f
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 2555
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .param p1, "ringerMode"    # I

    .prologue
    .line 2550
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2565
    const v5, 0x1090063

    invoke-virtual {p4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 2567
    .local v4, "v":Landroid/view/View;
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    .line 2570
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v2

    .line 2571
    .local v2, "selectedIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_4

    .line 2572
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2577
    .local v1, "itemView":Landroid/view/View;
    if-ne v2, v0, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    .line 2579
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2580
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2582
    if-ne v0, v6, :cond_0

    .line 2583
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$4100()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2584
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2585
    const v5, 0x102049e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2586
    .local v3, "spacer":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2587
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2590
    .end local v3    # "spacer":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    if-ne v0, v6, :cond_2

    .line 2591
    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 2571
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v5, v7

    .line 2577
    goto :goto_1

    .line 2605
    .end local v1    # "itemView":Landroid/view/View;
    :cond_4
    return-object v4
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2560
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 2634
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2641
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 2663
    :goto_0
    return-void

    .line 2643
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2646
    .local v1, "index":I
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick() of Silentmode button = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " & dismissing dialog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    const/4 v0, 0x0

    .line 2649
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 2650
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2653
    .restart local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2655
    const-string v2, "GlobalActions"

    const-string v3, "restricted by MDM "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2660
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->indexToRingerMode(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2661
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 2619
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 2626
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 1

    .prologue
    .line 2630
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 2622
    const/4 v0, 0x1

    return v0
.end method

.method public updateRingerMode()V
    .locals 5

    .prologue
    .line 2609
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v2

    .line 2610
    .local v2, "selectedIndex":I
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 2616
    :cond_0
    return-void

    .line 2611
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 2612
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2613
    .local v1, "itemView":Landroid/view/View;
    if-ne v2, v0, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 2614
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2613
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 2638
    return-void
.end method

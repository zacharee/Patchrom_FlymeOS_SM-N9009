.class public Lcom/android/internal/app/ResolverGuideActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverGuideActivity.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ResolverGuideActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/app/ResolverGuideActivity;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverGuideActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverGuideActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/ResolverGuideActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 44
    .local v1, "originalIntent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 45
    const/4 v0, 0x0

    .line 53
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    sget-boolean v2, Lcom/android/internal/app/ResolverGuideActivity;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 48
    const-string v2, "ResolverGuideActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeMyIntent() : originalIntent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_2
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 50
    .local v0, "myIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x800001

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    sget-boolean v2, Lcom/android/internal/app/ResolverGuideActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 52
    const-string v2, "ResolverGuideActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeMyIntent() : myIntent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onButtonClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    sget-boolean v2, Lcom/android/internal/app/ResolverGuideActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 119
    const-string v2, "ResolverGuideActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onButtonClick() v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 121
    .local v0, "id":I
    invoke-direct {p0}, Lcom/android/internal/app/ResolverGuideActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v1

    .line 122
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->dismiss()V

    .line 126
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const v1, 0x103048d

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverGuideActivity;->setTheme(I)V

    .line 64
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget-boolean v1, Lcom/android/internal/app/ResolverGuideActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "ResolverGuideActivity"

    const-string/jumbo v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverGuideActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 68
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10408d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 72
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104047e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 78
    new-instance v1, Lcom/android/internal/app/ResolverGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverGuideActivity$1;-><init>(Lcom/android/internal/app/ResolverGuideActivity;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->setupAlert()V

    .line 91
    return-void

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10408d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 96
    sget-boolean v0, Lcom/android/internal/app/ResolverGuideActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "ResolverGuideActivity"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->finish()V

    .line 115
    :cond_0
    return-void
.end method

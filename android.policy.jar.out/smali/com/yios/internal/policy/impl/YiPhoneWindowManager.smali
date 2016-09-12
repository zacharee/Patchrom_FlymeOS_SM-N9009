.class public Lcom/yios/internal/policy/impl/YiPhoneWindowManager;
.super Ljava/lang/Object;
.source "YiPhoneWindowManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mTorchManager:Landroid/hardware/TorchManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 23
    return-void
.end method

.method private closeTorch()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mTorchManager:Landroid/hardware/TorchManager;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/TorchManager;

    iput-object v0, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mTorchManager:Landroid/hardware/TorchManager;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v0}, Landroid/hardware/TorchManager;->isTorchOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v0}, Landroid/hardware/TorchManager;->toggleTorch()V

    .line 65
    :cond_1
    return-void
.end method

.method private openTorch()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mTorchManager:Landroid/hardware/TorchManager;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/TorchManager;

    iput-object v0, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mTorchManager:Landroid/hardware/TorchManager;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v0}, Landroid/hardware/TorchManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v0}, Landroid/hardware/TorchManager;->toggleTorch()V

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 11
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 26
    iget-object v9, p0, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v4

    .line 27
    .local v4, "keyguardOn":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 28
    .local v7, "repeatCount":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 29
    .local v6, "metaState":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    .line 30
    .local v2, "flags":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_0

    const/4 v1, 0x1

    .line 31
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 32
    .local v0, "canceled":Z
    and-int/lit16 v9, v2, 0x80

    if-eqz v9, :cond_1

    const/4 v5, 0x1

    .line 33
    .local v5, "longPress":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    const/4 v8, 0x1

    .line 34
    .local v8, "virtualKey":Z
    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 36
    .local v3, "keyCode":I
    const/4 v9, 0x3

    if-ne v3, v9, :cond_4

    .line 37
    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 38
    invoke-direct {p0}, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->openTorch()V

    .line 39
    const/4 v9, 0x1

    .line 46
    :goto_3
    return v9

    .line 30
    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    .end local v3    # "keyCode":I
    .end local v5    # "longPress":Z
    .end local v8    # "virtualKey":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 32
    .restart local v0    # "canceled":Z
    .restart local v1    # "down":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 33
    .restart local v5    # "longPress":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 41
    .restart local v3    # "keyCode":I
    .restart local v8    # "virtualKey":Z
    :cond_3
    if-nez v1, :cond_4

    if-eqz v4, :cond_4

    .line 42
    invoke-direct {p0}, Lcom/yios/internal/policy/impl/YiPhoneWindowManager;->closeTorch()V

    .line 46
    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method

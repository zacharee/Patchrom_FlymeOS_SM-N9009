.class public final Lcom/samsung/android/server/wifi/MsapWifiService;
.super Lcom/android/server/SystemService;
.source "MsapWifiService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MsapWifiService"


# instance fields
.field final mImpl:Lcom/samsung/android/server/wifi/MsapWifiServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/samsung/android/server/wifi/MsapWifiServiceImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/MsapWifiServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/MsapWifiService;->mImpl:Lcom/samsung/android/server/wifi/MsapWifiServiceImpl;

    .line 32
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 42
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 43
    const-string v0, "MsapWifiService"

    const-string v1, "onBootPhase : MSAPWifiService state READY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "MsapWifiService"

    const-string v1, "Registering msapwifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "msapwifi"

    iget-object v1, p0, Lcom/samsung/android/server/wifi/MsapWifiService;->mImpl:Lcom/samsung/android/server/wifi/MsapWifiServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/MsapWifiService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 38
    return-void
.end method

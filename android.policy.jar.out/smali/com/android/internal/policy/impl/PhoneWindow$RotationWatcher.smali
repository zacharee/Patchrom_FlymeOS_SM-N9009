.class Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationWatcher"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsWatching:Z

.field private final mRotationChanged:Ljava/lang/Runnable;

.field private final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/policy/impl/PhoneWindow;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4886
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    .line 4888
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mRotationChanged:Ljava/lang/Runnable;

    .line 4893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 4
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 4903
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v2

    .line 4904
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mIsWatching:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 4906
    :try_start_1
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    .line 4907
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mHandler:Landroid/os/Handler;

    .line 4908
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mIsWatching:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4913
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4914
    monitor-exit v2

    .line 4915
    return-void

    .line 4909
    :catch_0
    move-exception v0

    .line 4910
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "PhoneWindow"

    const-string v3, "Couldn\'t start watching for device rotation"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4914
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method dispatchRotationChanged()V
    .locals 5

    .prologue
    .line 4933
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v4

    .line 4934
    const/4 v0, 0x0

    .line 4935
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 4936
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4937
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/impl/PhoneWindow;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/PhoneWindow;

    .line 4938
    .local v2, "win":Lcom/android/internal/policy/impl/PhoneWindow;
    if-eqz v2, :cond_0

    .line 4939
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->onOptionsPanelRotationChanged()V

    .line 4940
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4942
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 4945
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/impl/PhoneWindow;>;"
    .end local v2    # "win":Lcom/android/internal/policy/impl/PhoneWindow;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4946
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4899
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mRotationChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4900
    return-void
.end method

.method public removeWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 5
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 4918
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v4

    .line 4919
    const/4 v0, 0x0

    .line 4920
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 4921
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4922
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/impl/PhoneWindow;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/PhoneWindow;

    .line 4923
    .local v2, "win":Lcom/android/internal/policy/impl/PhoneWindow;
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_1

    .line 4924
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 4929
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/impl/PhoneWindow;>;"
    .end local v2    # "win":Lcom/android/internal/policy/impl/PhoneWindow;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4926
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/impl/PhoneWindow;>;"
    .restart local v2    # "win":Lcom/android/internal/policy/impl/PhoneWindow;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4929
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/impl/PhoneWindow;>;"
    .end local v2    # "win":Lcom/android/internal/policy/impl/PhoneWindow;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4930
    return-void
.end method

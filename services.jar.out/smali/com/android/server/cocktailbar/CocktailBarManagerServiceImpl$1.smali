.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    .line 897
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateLocked()V
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    .line 898
    monitor-exit v1

    .line 899
    return-void

    .line 898
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

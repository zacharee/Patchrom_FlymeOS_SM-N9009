.class public final Landroid/app/epm/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/epm/PluginManager$IStatusListener;,
        Landroid/app/epm/PluginManager$MasterInstallObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_ELASTIC:Z

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z

.field private static mInstance:Landroid/app/epm/PluginManager;

.field private static sService:Landroid/app/epm/IPluginManager;


# instance fields
.field private mCallback:Landroid/app/epm/IPluginManagerCallback;

.field private mClientCallback:Landroid/app/epm/PluginManager$IStatusListener;

.field private mComponentPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private pluginDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "PluginManager"

    sput-object v0, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/epm/PluginManager;->localLOGV:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v3, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    .line 52
    iput-object v3, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    .line 440
    new-instance v1, Landroid/app/epm/PluginManager$1;

    invoke-direct {v1, p0}, Landroid/app/epm/PluginManager$1;-><init>(Landroid/app/epm/PluginManager;)V

    iput-object v1, p0, Landroid/app/epm/PluginManager;->mCallback:Landroid/app/epm/IPluginManagerCallback;

    .line 76
    iput-object p1, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/epm/PluginManager;->mCallback:Landroid/app/epm/IPluginManagerCallback;

    invoke-interface {v1, v2}, Landroid/app/epm/IPluginManager;->registerCallback(Landroid/app/epm/IPluginManagerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    invoke-direct {p0, v3}, Landroid/app/epm/PluginManager;->getPluginDetailsList(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v3}, Landroid/app/epm/PluginManager;->getLanguagePackList(Ljava/lang/String;)Ljava/util/HashMap;

    .line 90
    invoke-direct {p0}, Landroid/app/epm/PluginManager;->getComponentPackageMap()V

    .line 92
    :cond_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/app/epm/PluginManager;)Landroid/app/epm/PluginManager$IStatusListener;
    .locals 1
    .param p0, "x0"    # Landroid/app/epm/PluginManager;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/app/epm/PluginManager;->mClientCallback:Landroid/app/epm/PluginManager$IStatusListener;

    return-object v0
.end method

.method private getComponentPackageMap()V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/epm/IPluginManager;->getComponentPackageMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/epm/PluginManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    sget-object v0, Landroid/app/epm/PluginManager;->mInstance:Landroid/app/epm/PluginManager;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Landroid/app/epm/PluginManager;

    invoke-direct {v0, p0}, Landroid/app/epm/PluginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/epm/PluginManager;->mInstance:Landroid/app/epm/PluginManager;

    .line 109
    :cond_0
    sget-object v0, Landroid/app/epm/PluginManager;->mInstance:Landroid/app/epm/PluginManager;

    return-object v0
.end method

.method private getLanguagePackList(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, "pluginDetails":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 364
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/epm/IPluginManager;->getLanguagePackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_0
    :goto_0
    return-object v1

    .line 365
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getPluginDetailsList(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/epm/IPluginManager;->getPluginDetailsList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getService()Landroid/app/epm/IPluginManager;
    .locals 2

    .prologue
    .line 63
    sget-object v1, Landroid/app/epm/PluginManager;->sService:Landroid/app/epm/IPluginManager;

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Landroid/app/epm/PluginManager;->sService:Landroid/app/epm/IPluginManager;

    .line 72
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 66
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "samsung_overlay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 69
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/epm/IPluginManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/epm/IPluginManager;

    move-result-object v1

    sput-object v1, Landroid/app/epm/PluginManager;->sService:Landroid/app/epm/IPluginManager;

    .line 72
    sget-object v1, Landroid/app/epm/PluginManager;->sService:Landroid/app/epm/IPluginManager;

    goto :goto_0
.end method


# virtual methods
.method public changePluginState(Ljava/lang/String;IIZ)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "order"    # I
    .param p4, "isTrial"    # Z

    .prologue
    .line 393
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/epm/IPluginManager;->changePluginState(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 400
    :goto_0
    return v0

    .line 396
    :catch_0
    move-exception v0

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveComponents()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/epm/IPluginManager;->getActiveComponents()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 309
    :catch_0
    move-exception v0

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCategory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/epm/IPluginManager;->getCategoryList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    .line 415
    :catch_0
    move-exception v0

    .line 418
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentThemePackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 323
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 325
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/epm/IPluginManager;->getActiveComponents()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 326
    .local v0, "currentPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 327
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "currentPackage":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    .local v0, "titleDesc":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .end local v0    # "titleDesc":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getListByCategory(I)Ljava/util/List;
    .locals 1
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/epm/IPluginManager;->getListByCategory(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 437
    :goto_0
    return-object v0

    .line 434
    :catch_0
    move-exception v0

    .line 437
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginPackageList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/app/epm/PluginManager;->getPluginDetailsList(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    .local v0, "pluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getStatus(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThemesForComponent(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "compName"    # Ljava/lang/String;
    .param p2, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "packageListForComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "packageListForComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 258
    .restart local v0    # "packageListForComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "titleDesc":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .end local v0    # "titleDesc":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public installThemePackage(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "path"    # Landroid/net/Uri;
    .param p2, "isTrial"    # Z

    .prologue
    .line 269
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/epm/IPluginManager;->installThemePackage(Landroid/net/Uri;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeThemePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Landroid/app/epm/IPluginManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/epm/IPluginManager;->removeThemePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setStatusListener(Landroid/app/epm/PluginManager$IStatusListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/epm/PluginManager$IStatusListener;

    .prologue
    .line 211
    iput-object p1, p0, Landroid/app/epm/PluginManager;->mClientCallback:Landroid/app/epm/PluginManager$IStatusListener;

    .line 214
    return-void
.end method

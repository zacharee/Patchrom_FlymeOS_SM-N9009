.class public Landroid/yios/system/ProtectedApps;
.super Ljava/lang/Object;
.source "ProtectedApps.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YIOS"

.field private static mInstance:Landroid/yios/system/ProtectedApps;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroid/yios/system/ProtectedApps;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/yios/system/ProtectedApps;->mProcesses:Ljava/util/ArrayList;

    .line 24
    invoke-direct {p0}, Landroid/yios/system/ProtectedApps;->getProtectedApps()V

    .line 25
    return-void
.end method

.method public static getInstance()Landroid/yios/system/ProtectedApps;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Landroid/yios/system/ProtectedApps;->mInstance:Landroid/yios/system/ProtectedApps;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ProtectedApps instance is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    sget-object v0, Landroid/yios/system/ProtectedApps;->mInstance:Landroid/yios/system/ProtectedApps;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/yios/system/ProtectedApps;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Landroid/yios/system/ProtectedApps;->mInstance:Landroid/yios/system/ProtectedApps;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 29
    const-class v1, Landroid/yios/system/ProtectedApps;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Landroid/yios/system/ProtectedApps;->mInstance:Landroid/yios/system/ProtectedApps;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 31
    new-instance v0, Landroid/yios/system/ProtectedApps;

    invoke-direct {v0, p0}, Landroid/yios/system/ProtectedApps;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/yios/system/ProtectedApps;->mInstance:Landroid/yios/system/ProtectedApps;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Landroid/yios/system/ProtectedApps;->mInstance:Landroid/yios/system/ProtectedApps;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getProtectedApps()V
    .locals 8

    .prologue
    .line 46
    iget-object v6, p0, Landroid/yios/system/ProtectedApps;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "system_locked_process"

    invoke-static {v6, v7}, Landroid/provider/Settings$YIOS;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "saved":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, ""

    if-eq v5, v6, :cond_0

    .line 49
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "list":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 51
    .local v2, "item":Ljava/lang/String;
    iget-object v6, p0, Landroid/yios/system/ProtectedApps;->mProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "list":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private listToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 67
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v3, Landroid/yios/system/ProtectedApps;

    monitor-enter v3

    .line 105
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/yios/system/ProtectedApps;->isProtected(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Landroid/yios/system/ProtectedApps;->mProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    iget-object v2, p0, Landroid/yios/system/ProtectedApps;->mProcesses:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Landroid/yios/system/ProtectedApps;->listToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "packages":Ljava/lang/String;
    iget-object v2, p0, Landroid/yios/system/ProtectedApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "system_locked_process"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$YIOS;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    const/4 v2, 0x1

    :try_start_2
    monitor-exit v3

    .line 116
    .end local v1    # "packages":Ljava/lang/String;
    :goto_0
    return v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/yios/system/ProtectedApps;->mProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getPackgeName(I)Ljava/lang/String;
    .locals 9
    .param p1, "id"    # I

    .prologue
    .line 71
    iget-object v6, p0, Landroid/yios/system/ProtectedApps;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/yios/system/ProtectedApps;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 73
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 74
    const-string v2, ""

    .line 100
    :cond_0
    :goto_0
    return-object v2

    .line 76
    :cond_1
    const-string v2, ""

    .line 78
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v6

    const/16 v7, 0xf

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v4

    .line 85
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 86
    .local v5, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-ne v6, p1, :cond_2

    .line 87
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 91
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 95
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_4

    .line 96
    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 97
    goto :goto_0
.end method

.method public isProtected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    const-string v0, ""

    if-ne p1, v0, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/yios/system/ProtectedApps;->mProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public removePackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 121
    const-class v3, Landroid/yios/system/ProtectedApps;

    monitor-enter v3

    .line 122
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/yios/system/ProtectedApps;->isProtected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Landroid/yios/system/ProtectedApps;->mProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    iget-object v2, p0, Landroid/yios/system/ProtectedApps;->mProcesses:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Landroid/yios/system/ProtectedApps;->listToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "packages":Ljava/lang/String;
    iget-object v2, p0, Landroid/yios/system/ProtectedApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "system_locked_process"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$YIOS;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    const/4 v2, 0x1

    :try_start_2
    monitor-exit v3

    .line 133
    .end local v1    # "packages":Ljava/lang/String;
    :goto_0
    return v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/yios/system/ProtectedApps;->mProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.class public final Landroid/database/DefaultSecureDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "DefaultSecureDatabaseErrorHandler.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSecureDatabaseErrorHandler"


# instance fields
.field private err_msg:[Ljava/lang/String;

.field private err_num:[I

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->err_num:[I

    .line 54
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".corrupt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".back"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->err_msg:[Ljava/lang/String;

    .line 55
    const-string v0, ".unknown"

    iput-object v0, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->suffix:Ljava/lang/String;

    return-void

    .line 53
    :array_0
    .array-data 4
        0xb
        0x1a
    .end array-data
.end method

.method private backupDatabaseFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v2, ":memory:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v2, "DefaultSecureDatabaseErrorHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup the database file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DefaultSecureDatabaseErrorHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 65
    const-string v5, "DefaultSecureDatabaseErrorHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Corruption reported by sqlite on database: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getCorruptCode()I

    move-result v1

    .line 68
    .local v1, "err_code":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->err_num:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 69
    iget-object v5, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->err_num:[I

    aget v5, v5, v2

    if-ne v5, v1, :cond_0

    .line 70
    iget-object v5, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->err_msg:[Ljava/lang/String;

    aget-object v5, v5, v2

    iput-object v5, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->suffix:Ljava/lang/String;

    .line 68
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_3

    .line 82
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/database/DefaultSecureDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    .line 112
    :cond_2
    :goto_1
    return-void

    .line 86
    :cond_3
    const/4 v0, 0x0

    .line 91
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 96
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_3
    if-eqz v0, :cond_4

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 104
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/database/DefaultSecureDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    goto :goto_4

    .line 109
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/database/DefaultSecureDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v5

    move-object v6, v5

    if-eqz v0, :cond_5

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 104
    .restart local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/database/DefaultSecureDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    goto :goto_5

    .line 109
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/database/DefaultSecureDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    :cond_6
    throw v6

    .line 92
    :catch_0
    move-exception v5

    goto :goto_2

    .line 97
    :catch_1
    move-exception v5

    goto :goto_3
.end method

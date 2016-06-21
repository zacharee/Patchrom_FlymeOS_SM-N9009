.class public Lcom/samsung/voiceshell/WakeUpUtils;
.super Ljava/lang/Object;
.source "WakeUpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeUpUtils"

.field private static final VERSION:Ljava/lang/String; = "2.2.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "2.2.0"

    return-object v0
.end method

.method public static IsFileExist(Ljava/lang/String;)Z
    .locals 4
    .param p0, "strFilePath"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "fileHandle":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    const-string v1, "WakeUpUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsFileExist: There is no ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v1, 0x0

    .line 33
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static ReadString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "strFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 39
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, "mFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 43
    const-string v6, "WakeUpUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReadString: There is no ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    :goto_0
    return-object v5

    .line 47
    :cond_1
    const/4 v3, 0x0

    .line 50
    .local v3, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v4, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 53
    .local v0, "data":[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 54
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    const/4 v3, 0x0

    .line 57
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    if-eqz v3, :cond_2

    .line 73
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 74
    const/4 v3, 0x0

    :cond_2
    :goto_1
    move-object v5, v6

    .line 79
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 59
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    if-eqz v3, :cond_0

    .line 73
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 74
    const/4 v3, 0x0

    goto :goto_0

    .line 76
    :catch_2
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 65
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 69
    if-eqz v3, :cond_0

    .line 73
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 74
    const/4 v3, 0x0

    goto :goto_0

    .line 76
    :catch_4
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_3

    .line 73
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 74
    const/4 v3, 0x0

    .line 79
    :cond_3
    :goto_5
    throw v5

    .line 76
    :catch_5
    move-exception v1

    .line 78
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 63
    .end local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 59
    .end local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

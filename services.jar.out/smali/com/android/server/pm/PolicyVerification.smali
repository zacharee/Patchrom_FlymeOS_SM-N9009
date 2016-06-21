.class public final Lcom/android/server/pm/PolicyVerification;
.super Ljava/lang/Object;
.source "PolicyVerification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PolicyVerification$PolicyVerify;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PolicyVerification"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static compareHashValue()Z
    .locals 5

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 121
    .local v0, "retVal":Z
    const/4 v2, 0x4

    :try_start_0
    invoke-static {v2}, Landroid/os/SELinux;->compareHashValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    .line 124
    :cond_0
    const-string v2, "PolicyVerification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compareHashValue Fail - retVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "PolicyVerification"

    const-string v3, "Exception in compareHashValue"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static fileRead(Ljava/lang/String;)[B
    .locals 10
    .param p0, "szFile"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "bytearray":[B
    const/4 v3, 0x0

    .line 79
    .local v3, "fileinputstream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v3    # "fileinputstream":Ljava/io/FileInputStream;
    .local v4, "fileinputstream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 81
    .local v5, "numberBytes":I
    new-array v0, v5, [B

    .line 82
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 83
    .local v6, "readBytes":I
    if-eq v6, v5, :cond_0

    .line 84
    const-string v7, "PolicyVerification"

    const-string v8, "Read Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :cond_0
    if-eqz v4, :cond_1

    .line 91
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v3, v4

    .line 97
    .end local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .end local v5    # "numberBytes":I
    .end local v6    # "readBytes":I
    .restart local v3    # "fileinputstream":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-object v0

    .line 92
    .end local v3    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v5    # "numberBytes":I
    .restart local v6    # "readBytes":I
    :catch_0
    move-exception v2

    .line 93
    .local v2, "ei":Ljava/io/IOException;
    const-string v7, "PolicyVerification"

    const-string v8, "File Close Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 95
    .end local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v3    # "fileinputstream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 86
    .end local v2    # "ei":Ljava/io/IOException;
    .end local v5    # "numberBytes":I
    .end local v6    # "readBytes":I
    :catch_1
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v7, "PolicyVerification"

    const-string v8, "Read Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    if-eqz v3, :cond_2

    .line 91
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 92
    :catch_2
    move-exception v2

    .line 93
    .restart local v2    # "ei":Ljava/io/IOException;
    const-string v7, "PolicyVerification"

    const-string v8, "File Close Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ei":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 90
    :goto_2
    if-eqz v3, :cond_3

    .line 91
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 94
    :cond_3
    :goto_3
    throw v7

    .line 92
    :catch_3
    move-exception v2

    .line 93
    .restart local v2    # "ei":Ljava/io/IOException;
    const-string v8, "PolicyVerification"

    const-string v9, "File Close Error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 89
    .end local v2    # "ei":Ljava/io/IOException;
    .end local v3    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v4    # "fileinputstream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v3    # "fileinputstream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 86
    .end local v3    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v4    # "fileinputstream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v3    # "fileinputstream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static verifySEAndroidPolicy()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySignature()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->compareHashValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const/4 v1, 0x1

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 69
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static verifySignature()Z
    .locals 5

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 105
    .local v0, "retVal":Z
    :try_start_0
    invoke-static {}, Landroid/os/SELinux;->verifySignature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 108
    :cond_0
    const-string v2, "PolicyVerification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verify Signature Fail - retVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "PolicyVerification"

    const-string v3, "Exception in verifySignature"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

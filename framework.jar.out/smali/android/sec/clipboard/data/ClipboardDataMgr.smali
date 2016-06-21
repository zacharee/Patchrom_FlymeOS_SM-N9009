.class public Landroid/sec/clipboard/data/ClipboardDataMgr;
.super Ljava/lang/Object;
.source "ClipboardDataMgr.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# instance fields
.field private isShared:Z

.field private final mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field private mContainerID:I

.field private mContext:Landroid/content/Context;

.field private mCurrentListIndex:I

.field private mDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/FileManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDataList:Landroid/sec/clipboard/data/file/FileManager;

.field private final mMaxSize:I

.field private tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    .line 105
    iput-boolean v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 113
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    .line 114
    invoke-direct {p0, p1, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->initializeClipboardDataMgr(II)V

    .line 115
    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "containerID"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 118
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    .line 119
    iput-object p3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->initializeClipboardDataMgr(II)V

    .line 121
    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Z)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "containerID"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "shared"    # Z

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 125
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    .line 126
    iput-object p3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    .line 127
    iput-boolean p4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->initializeClipboardDataMgr(II)V

    .line 129
    return-void
.end method

.method private createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;
    .locals 9
    .param p1, "id"    # I

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-boolean v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    if-eqz v1, :cond_0

    .line 264
    new-instance v7, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/clipboard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/shared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v7, "rootPath":Ljava/io/File;
    const-string v1, "ClipboardServiceEx"

    const-string v2, "createUserDBAndConnect() - SHARED - will create FileManager with a shared_clips.info"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "shared_clips.info"

    invoke-direct {v1, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 269
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    .line 285
    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    .local v6, "fm":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 273
    .end local v6    # "fm":Ljava/lang/Object;
    .end local v7    # "rootPath":Ljava/io/File;
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    :cond_0
    new-instance v7, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/clipboard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .restart local v7    # "rootPath":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/clipboard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/knox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v8, "rootPathKNOX":Ljava/io/File;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    if-eqz v1, :cond_2

    .line 276
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v1, Ljava/io/File;

    const-string v2, "clips.info"

    invoke-direct {v1, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "clips.info"

    invoke-direct {v2, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContainerID:I

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    move v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;Ljava/io/File;IILandroid/content/Context;)V

    .line 277
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object v6, v0

    .line 285
    .restart local v6    # "fm":Ljava/lang/Object;
    goto :goto_0

    .line 279
    .end local v6    # "fm":Ljava/lang/Object;
    :cond_2
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v1, Ljava/io/File;

    const-string v2, "clips.info"

    invoke-direct {v1, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 280
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const/16 v1, 0x63

    if-le p1, v1, :cond_1

    const/16 v1, 0xc8

    if-ge p1, v1, :cond_1

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/clipboard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private findFileManagerIndex(I)I
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 204
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 208
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 209
    .restart local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    if-ne v2, p1, :cond_0

    .line 210
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex. find DB... id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", i :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 207
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_1
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find file manager. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private initializeClipboardDataMgr(II)V
    .locals 13
    .param p1, "size"    # I
    .param p2, "containerID"    # I

    .prologue
    const/4 v4, 0x0

    .line 139
    iput v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 140
    iput p2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContainerID:I

    .line 145
    new-instance v9, Ljava/io/File;

    const-string v0, "/data/clipboard"

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v9, "rootPath":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string v0, "/data/clipboard/knox"

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v10, "rootPathKNOX":Ljava/io/File;
    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClipboardDefine.SUPPORT_KNOX :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    if-eqz v0, :cond_3

    const-string v0, "/shared/shared_"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clips.info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "clipFile":Ljava/lang/String;
    iget-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    if-nez v0, :cond_0

    .line 163
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    if-eqz v0, :cond_4

    .line 164
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "clips.info"

    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContainerID:I

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;Ljava/io/File;IILandroid/content/Context;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 166
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 180
    .local v11, "um":Landroid/os/UserManager;
    const/4 v12, 0x0

    .line 181
    .local v12, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v11, :cond_1

    .line 182
    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    .line 184
    :cond_1
    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 185
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 186
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    .line 189
    .local v8, "id":I
    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add multi user db...id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    .line 185
    .end local v8    # "id":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 158
    .end local v6    # "clipFile":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v11    # "um":Landroid/os/UserManager;
    .end local v12    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    const-string v0, ""

    goto/16 :goto_0

    .line 169
    .restart local v6    # "clipFile":Ljava/lang/String;
    :cond_4
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4, v2}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 171
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    .restart local v11    # "um":Landroid/os/UserManager;
    .restart local v12    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    return-void
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 197
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContainerID:I

    if-eq v0, p1, :cond_0

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    .line 198
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContainerID:I

    .line 199
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/FileManager;->UpdateClipboardDB(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public declared-synchronized addData(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 15
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/16 v14, 0x9

    const/4 v13, 0x2

    const/4 v11, 0x0

    .line 354
    monitor-enter p0

    const/4 v1, 0x1

    .line 355
    .local v1, "Result":Z
    :try_start_0
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v5

    .line 356
    .local v5, "iSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v10

    if-ne v10, v13, :cond_1

    .line 357
    move-object/from16 v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 358
    .local v9, "textValue":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    move v10, v11

    .line 426
    .end local v9    # "textValue":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v10

    .line 360
    .restart local v9    # "textValue":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 361
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v7

    .line 362
    .local v7, "latestData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v10

    if-ne v10, v13, :cond_1

    .line 363
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    move v10, v11

    .line 364
    goto :goto_0

    .line 372
    .end local v7    # "latestData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v9    # "textValue":Ljava/lang/String;
    :cond_1
    const/4 v6, -0x1

    .line 374
    .local v6, "index":I
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v10

    if-ne v10, v14, :cond_4

    .line 375
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/file/FileManager;->scrapSize()I

    move-result v8

    .line 376
    .local v8, "scrapSize":I
    const/16 v10, 0xa

    if-lt v8, v10, :cond_3

    .line 377
    const/16 v10, 0x9

    invoke-virtual {p0, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeScrapData(I)Z

    .line 378
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v11, v0}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    .end local v8    # "scrapSize":I
    :cond_2
    :goto_1
    move v10, v1

    .line 426
    goto :goto_0

    .line 380
    .restart local v8    # "scrapSize":I
    :cond_3
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v11, v0}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    goto :goto_1

    .line 383
    .end local v8    # "scrapSize":I
    :cond_4
    iget v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    if-lt v5, v10, :cond_8

    .line 387
    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_6

    .line 388
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10, v4}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 389
    .local v2, "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v2, :cond_7

    .line 390
    sget-boolean v10, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v10, :cond_5

    const-string v10, "ClipboardServiceEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[addData] deleteData.GetProtectState() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_5
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v10

    if-nez v10, :cond_7

    .line 392
    move v6, v4

    .line 398
    .end local v2    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_6
    if-ltz v6, :cond_2

    .line 401
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10, v6}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v10

    iput-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 403
    invoke-virtual {p0, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    .line 404
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v11, v0}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    goto :goto_1

    .line 387
    .restart local v2    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 415
    .end local v2    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v4    # "i":I
    :cond_8
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v11, v0}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_1

    .line 420
    :catch_0
    move-exception v3

    .line 423
    .local v3, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1

    .line 354
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "iSize":I
    .end local v6    # "index":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 315
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    .line 316
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "The index has been exceeded."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItem~Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastScrapDataIndex()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->getLastScrapDataIndex()I

    move-result v0

    return v0
.end method

.method public getScrapItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 332
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->getScrap(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 333
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "The index has been exceeded."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItem~Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getdeletedItem()Landroid/sec/clipboard/data/ClipboardData;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 231
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "multiUserMode_Called mode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentListIndex :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-eqz p2, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 233
    const-string v2, "ADDED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-string v2, "REMOVED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v0

    .line 237
    .local v0, "deleteIndex":I
    if-eq v0, v5, :cond_2

    .line 238
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 239
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    .line 241
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 244
    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    :cond_2
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v0    # "deleteIndex":I
    :cond_3
    const-string v2, "SWITCHED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 247
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v2

    iput v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 248
    iget v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    if-eq v2, v5, :cond_4

    .line 249
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_0

    .line 251
    :cond_4
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    goto/16 :goto_0

    .line 255
    :cond_5
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "multiUserMode_Called wrong mode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->refresh()V

    .line 227
    :cond_0
    return-void
.end method

.method public removeData(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 447
    const/4 v0, 0x1

    .line 451
    .local v0, "Result":Z
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->remove(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return v0

    .line 452
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeData~Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized removeKNOXData()V
    .locals 4

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->removeKNOXData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeKNOXData~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 431
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeScrapData(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 464
    const/4 v0, 0x1

    .line 468
    .local v0, "Result":Z
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->removeScrap(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    return v0

    .line 469
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeData~Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrapSize()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->scrapSize()I

    move-result v0

    return v0
.end method

.method public setdeletedItem(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 559
    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 560
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    return v0
.end method

.method public updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 496
    const/4 v0, 0x1

    .line 500
    .local v0, "Result":Z
    if-eqz p2, :cond_0

    .line 501
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;->set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    .line 515
    :goto_0
    return v0

    .line 503
    :cond_0
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 504
    const-string v2, "ClipboardServiceEx"

    const-string/jumbo v3, "updateData-ClipboardData is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v1

    .line 509
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 510
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateData~Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateScrapData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 520
    const/4 v0, 0x1

    .line 524
    .local v0, "Result":Z
    if-eqz p2, :cond_0

    .line 525
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;->set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    .line 538
    :goto_0
    return v0

    .line 527
    :cond_0
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 528
    const-string v2, "ClipboardServiceEx"

    const-string/jumbo v3, "updateScrapData-ClipboardData is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 534
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateData~Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

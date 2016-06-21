.class public Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
.super Landroid/app/enterprise/multiuser/IMultiUserManager$Stub;
.source "MultiUserManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiUserManagerService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/enterprise/multiuser/IMultiUserManager$Stub;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 71
    iput-object p1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 73
    return-void
.end method

.method private enforceMultiUserManagementPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_MULTI_USER_MGMT"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_MULTI_USER_MGMT"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public allowMultipleUsers(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 131
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v18

    if-nez v18, :cond_0

    .line 132
    const/16 v18, -0x1

    .line 166
    :goto_0
    return v18

    .line 134
    :cond_0
    const/4 v12, 0x1

    .line 135
    .local v12, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    const-string v20, "MULTI_USER_MGMT"

    const-string v21, "multiUserAllowed"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    and-int v12, v12, v18

    .line 138
    if-eqz v12, :cond_4

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v18

    if-nez v18, :cond_4

    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 140
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "user"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 141
    .local v15, "um":Landroid/os/UserManager;
    if-eqz v15, :cond_1

    .line 144
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 146
    .local v6, "am":Landroid/app/ActivityManager;
    const/16 v18, 0xc

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v11

    .line 148
    .local v11, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v13, "com.android.settings"

    .line 149
    .local v13, "settingsPkg":Ljava/lang/String;
    if-nez p2, :cond_3

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    .line 150
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 151
    .local v14, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v9, v14, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 152
    .local v9, "origInt":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 153
    .local v7, "cmp":Landroid/content/ComponentName;
    if-eqz v7, :cond_2

    .line 154
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, "packageName":Ljava/lang/String;
    const-string v18, "MultiUserManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "packageName "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-eqz v10, :cond_2

    const-string v18, "com.android.settings"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 158
    iget v0, v14, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/ActivityManager;->removeTask(II)Z

    goto :goto_1

    .line 164
    .end local v7    # "cmp":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "origInt":Landroid/content/Intent;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v14    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v11    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v13    # "settingsPkg":Ljava/lang/String;
    .end local v15    # "um":Landroid/os/UserManager;
    .end local v16    # "token":J
    :cond_4
    if-eqz v12, :cond_5

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public allowUserCreation(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "ret":Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "MULTI_USER_MGMT"

    const-string v4, "multiUserCreationAllowed"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 281
    :cond_0
    return v0
.end method

.method public allowUserRemoval(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "ret":Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "MULTI_USER_MGMT"

    const-string v4, "multiUserRemovalAllowed"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 318
    :cond_0
    return v0
.end method

.method public createUser(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 190
    const/4 v3, -0x1

    .line 192
    .local v3, "userId":I
    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 195
    .local v0, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 196
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_1

    .line 198
    invoke-virtual {v2}, Landroid/os/UserManager;->getUserCount()I

    move-result v5

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 199
    const/4 v5, -0x1

    .line 221
    .end local v0    # "token":J
    .end local v2    # "um":Landroid/os/UserManager;
    :goto_0
    return v5

    .line 203
    .restart local v0    # "token":J
    .restart local v2    # "um":Landroid/os/UserManager;
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 205
    :goto_1
    const/4 v5, 0x4

    invoke-virtual {v2, p2, v5}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 206
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    .line 207
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    .line 210
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 212
    iget-object v5, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040b21

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-virtual {v2, v3, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 218
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "token":J
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_2
    move v5, v3

    .line 221
    goto :goto_0

    .line 203
    .restart local v0    # "token":J
    .restart local v2    # "um":Landroid/os/UserManager;
    :cond_3
    const-string p2, ""

    goto :goto_1
.end method

.method public getUsers(Landroid/app/enterprise/ContextInfo;)[I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 250
    const/4 v4, 0x0

    .line 252
    .local v4, "users":[I
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 254
    .local v2, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 255
    .local v1, "um":Landroid/os/UserManager;
    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 257
    .local v6, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 258
    .local v5, "usersCount":I
    new-array v4, v5, [I

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 260
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    aput v7, v4, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "i":I
    .end local v5    # "usersCount":I
    .end local v6    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    .end local v1    # "um":Landroid/os/UserManager;
    .end local v2    # "token":J
    :cond_1
    return-object v4
.end method

.method public isUserCreationAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 287
    const/4 v0, 0x1

    .line 289
    .local v0, "ret":Z
    iget-object v3, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "MULTI_USER_MGMT"

    const-string v5, "multiUserCreationAllowed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 292
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 299
    :goto_0
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 300
    const v2, 0x1040b1f

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 303
    :cond_0
    const-string v2, "MultiUserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserCreationAllowed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return v0

    :cond_1
    move v0, v2

    .line 292
    goto :goto_0
.end method

.method public isUserRemovalAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 324
    const/4 v0, 0x1

    .line 326
    .local v0, "ret":Z
    iget-object v3, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "MULTI_USER_MGMT"

    const-string v5, "multiUserRemovalAllowed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 329
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 336
    :goto_0
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 337
    const v2, 0x1040b20

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 340
    :cond_0
    const-string v2, "MultiUserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserRemovalAllowed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return v0

    :cond_1
    move v0, v2

    .line 329
    goto :goto_0
.end method

.method public multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    if-nez v4, :cond_1

    .line 114
    const/4 v2, -0x1

    .line 125
    :cond_0
    :goto_0
    return v2

    .line 116
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MULTI_USER_MGMT"

    const-string v6, "multiUserAllowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 119
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 120
    .local v0, "ret":Z
    :goto_1
    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    .line 121
    const v4, 0x1040b1e

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 125
    :cond_2
    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "ret":Z
    :cond_3
    move v0, v3

    .line 119
    goto :goto_1
.end method

.method public multipleUsersSupported(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 107
    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Error;
    const-string v1, "MultiUserManagerService"

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 175
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 183
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 179
    return-void
.end method

.method public removeUser(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "ret":Z
    if-ltz p2, :cond_1

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 235
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 236
    .local v1, "um":Landroid/os/UserManager;
    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v1, p2}, Landroid/os/UserManager;->removeUser(I)Z

    move-result v0

    .line 239
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    .end local v1    # "um":Landroid/os/UserManager;
    .end local v2    # "token":J
    :cond_1
    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

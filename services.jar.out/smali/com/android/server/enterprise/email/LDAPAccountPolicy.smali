.class public Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.super Landroid/app/enterprise/ILDAPAccountPolicy$Stub;
.source "LDAPAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;,
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_LDAP_INTERFACE_SERVICE:Ljava/lang/String; = "com.android.email.MDM_LDAP"

.field private static final CONNECTION_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "LDAPAccountPolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 342
    invoke-direct {p0}, Landroid/app/enterprise/ILDAPAccountPolicy$Stub;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    .line 264
    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 344
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/email/LDAPAccountPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/email/LDAPAccountPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/email/LDAPAccountPolicy;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->unregisterReceiver(I)Z

    move-result v0

    return v0
.end method

.method private bindLDAPInterfaceService(II)V
    .locals 18
    .param p1, "callingUserId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 301
    const-string v14, "LDAPAccountPolicyService"

    const-string v15, "bindLDAPInterfaceService()"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 304
    .local v12, "token":J
    const/4 v7, 0x0

    .line 306
    .local v7, "isBound":Z
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;

    move-result-object v11

    .line 307
    .local v11, "userContext":Landroid/content/Context;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getConnection(I)Landroid/content/ServiceConnection;

    move-result-object v3

    .line 308
    .local v3, "connxn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->registerLDAPInterfaceReceiver(Landroid/content/Context;I)Landroid/content/BroadcastReceiver;

    move-result-object v8

    .line 310
    .local v8, "ldapReceiver":Landroid/content/BroadcastReceiver;
    new-instance v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    .line 311
    .local v10, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    move/from16 v0, p1

    iput v0, v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mCallingUserId:I

    .line 312
    iput-object v3, v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 313
    iput-object v8, v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    .line 314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v2, Landroid/content/ComponentName;

    const-string v14, "com.android.email"

    const-string v15, "com.android.email.service.LDAPInterfaceService"

    invoke-direct {v2, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .local v2, "component":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.android.email.MDM_LDAP"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 319
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-virtual {v11, v6, v3, v14, v15}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v7

    .line 320
    if-nez v7, :cond_0

    .line 321
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->unregisterReceiver(I)Z

    .line 322
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v14, "LDAPAccountPolicyService"

    const-string v15, "bindLDAPInterfaceService() : success."

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 340
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "connxn":Landroid/content/ServiceConnection;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "ldapReceiver":Landroid/content/BroadcastReceiver;
    .end local v10    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    .end local v11    # "userContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 326
    .restart local v2    # "component":Landroid/content/ComponentName;
    .restart local v3    # "connxn":Landroid/content/ServiceConnection;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "ldapReceiver":Landroid/content/BroadcastReceiver;
    .restart local v10    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    .restart local v11    # "userContext":Landroid/content/Context;
    :cond_0
    :try_start_1
    const-string v14, "LDAPAccountPolicyService"

    const-string v15, "bindLDAPInterfaceService() : fail to Bind Service."

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v14, v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mBindComplete:Landroid/os/ConditionVariable;

    const-wide/16 v16, 0xfa

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 329
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "connxn":Landroid/content/ServiceConnection;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "ldapReceiver":Landroid/content/BroadcastReceiver;
    .end local v10    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    .end local v11    # "userContext":Landroid/content/Context;
    :catch_0
    move-exception v5

    .line 330
    .local v5, "ex":Ljava/lang/SecurityException;
    :try_start_2
    const-string v14, "LDAPAccountPolicyService"

    const-string v15, "bindLDAPInterfaceService() : failed for SecurityException. "

    invoke-static {v14, v15, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 331
    .end local v5    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 332
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v14, "LDAPAccountPolicyService"

    const-string v15, "bindLDAPInterfaceService() : failed for IllegalArgumentException. "

    invoke-static {v14, v15, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 334
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    .line 335
    .local v9, "others":Ljava/lang/Exception;
    :try_start_4
    const-string v14, "LDAPAccountPolicyService"

    const-string v15, "bindLDAPInterfaceService() : unexpected Exceptions. "

    invoke-static {v14, v15, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 337
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v9    # "others":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
.end method

.method private enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getConnection(I)Landroid/content/ServiceConnection;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 203
    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)V

    .line 204
    .local v0, "connxn":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getLDAPReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    .line 154
    .local v0, "interfaceReceiver":Landroid/content/BroadcastReceiver;
    return-object v0
.end method

.method private getUserContext(I)Landroid/content/Context;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 241
    .local v2, "userHandle":Landroid/os/UserHandle;
    const/4 v1, 0x0

    .line 243
    .local v1, "userContext":Landroid/content/Context;
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserContext() : currentUserID - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserContext() : currentUserHandle - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-eqz p1, :cond_0

    .line 249
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    const-string v4, "com.android.email"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 251
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentContext : Guest Context : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserContext("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-object v1

    .line 253
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 254
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentContext : Owner Context : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "LDAPAccountPolicyService"

    const-string v4, "LDAPConnection: getUserContext() : failed. "

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getUserHandle(I)Landroid/os/UserHandle;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 233
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 234
    .local v0, "userHandle":Landroid/os/UserHandle;
    const-string v1, "LDAPAccountPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserHandle() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-object v0
.end method

.method private registerLDAPInterfaceReceiver(Landroid/content/Context;I)Landroid/content/BroadcastReceiver;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 517
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "edm.intent.action.ldap.createacct.internal"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 519
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "LDAPAccountPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerLDAPInterfaceReceiver() - currentUserHandle : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getLDAPReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    .line 521
    .local v1, "interfaceReceiver":Landroid/content/BroadcastReceiver;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 524
    return-object v1
.end method

.method private unregisterReceiver(I)Z
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;

    move-result-object v1

    .line 212
    .local v1, "userContext":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 213
    const-string v4, "LDAPAccountPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterReceiver() : no LDAPServiceConnection for userId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v4, 0x0

    .line 220
    :goto_0
    return v4

    .line 216
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 217
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 218
    .local v0, "connxn":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    iget-object v4, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized createLDAPAccount(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/LDAPAccount;)V
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ldap"    # Landroid/app/enterprise/LDAPAccount;

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    const-string v10, "LDAPAccountPolicyService"

    const-string v11, "createLDAPAccount()"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 353
    .local v0, "callingUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 354
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 356
    .local v9, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 358
    .local v6, "token":J
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 359
    invoke-direct {p0, v0, v9}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService(II)V

    .line 362
    :cond_0
    iget-object v10, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 363
    iget-object v10, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 364
    .local v5, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    invoke-virtual {v5}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getService()Landroid/app/enterprise/ILDAPInterface;

    move-result-object v4

    .line 365
    .local v4, "service":Landroid/app/enterprise/ILDAPInterface;
    if-eqz v4, :cond_1

    .line 366
    invoke-interface {v4, p2}, Landroid/app/enterprise/ILDAPInterface;->createLDAPAccount(Landroid/app/enterprise/LDAPAccount;)V

    .line 367
    const-string v10, "LDAPAccountPolicyService"

    const-string v11, "createLDAPAccount() : createLDAPAccount success. "

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 378
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 393
    .end local v4    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v5    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :goto_0
    monitor-exit p0

    return-void

    .line 370
    .restart local v4    # "service":Landroid/app/enterprise/ILDAPInterface;
    .restart local v5    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_1
    :try_start_3
    const-string v10, "LDAPAccountPolicyService"

    const-string v11, "createLDAPAccount() : Service is not available. "

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 378
    .end local v4    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v5    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_2
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;

    move-result-object v8

    .line 384
    .local v8, "userContext":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 385
    new-instance v3, Landroid/content/Intent;

    const-string v10, "edm.intent.action.ldap.createacct.result"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v3, "intent":Landroid/content/Intent;
    const-string v10, "edm.intent.extra.ldap.result"

    const/4 v11, -0x8

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string v10, "edm.intent.extra.ldap.acct.id"

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    const-string v10, "edm.intent.extra.ldap.user.id"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v11, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v8, v3, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 391
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 350
    .end local v0    # "callingUserId":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "token":J
    .end local v8    # "userContext":Landroid/content/Context;
    .end local v9    # "userId":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 373
    .restart local v0    # "callingUserId":I
    .restart local v6    # "token":J
    .restart local v9    # "userId":I
    :catch_0
    move-exception v2

    .line 374
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_5
    const-string v10, "LDAPAccountPolicyService"

    const-string v11, "createLDAPAccount() : Failed talking to EDM LDAP service "

    invoke-static {v10, v11, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 378
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 375
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v10, "LDAPAccountPolicyService"

    const-string v11, "createLDAPAccount() : unexpected Exception occurs. "

    invoke-static {v10, v11, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 378
    :try_start_8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public declared-synchronized deleteLDAPAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # J

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 401
    .local v3, "callingUserId":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 402
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 403
    .local v12, "userId":I
    const/4 v6, 0x0

    .line 405
    .local v6, "ret":Z
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getLDAPAccount(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/LDAPAccount;

    move-result-object v2

    .line 406
    .local v2, "account":Landroid/app/enterprise/LDAPAccount;
    if-nez v2, :cond_0

    .line 407
    const-string v13, "LDAPAccountPolicyService"

    const-string v14, "deleteLDAPAccount() : ldapId is invalid"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v6

    .line 439
    .end local v6    # "ret":Z
    .local v7, "ret":I
    :goto_0
    monitor-exit p0

    return v7

    .line 410
    .end local v7    # "ret":I
    .restart local v6    # "ret":Z
    :cond_0
    :try_start_1
    const-string v13, "device_account_policy"

    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 412
    .local v4, "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v4, :cond_1

    const-string v13, "com.android.ldap"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v2, Landroid/app/enterprise/LDAPAccount;->userName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "@"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Landroid/app/enterprise/LDAPAccount;->host:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v4, v13, v14, v15}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_1

    .line 413
    const-string v13, "LDAPAccountPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deleteLDAPAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p2

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 414
    .restart local v7    # "ret":I
    goto :goto_0

    .line 417
    .end local v7    # "ret":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 420
    .local v10, "token":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 421
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService(II)V

    .line 423
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 425
    .local v9, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    invoke-virtual {v9}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getService()Landroid/app/enterprise/ILDAPInterface;

    move-result-object v8

    .line 426
    .local v8, "service":Landroid/app/enterprise/ILDAPInterface;
    if-eqz v8, :cond_4

    .line 427
    move-wide/from16 v0, p2

    invoke-interface {v8, v0, v1}, Landroid/app/enterprise/ILDAPInterface;->deleteLDAPAccount(J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    .line 436
    .end local v8    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v9    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_3
    :goto_1
    :try_start_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    move v7, v6

    .line 439
    .restart local v7    # "ret":I
    goto/16 :goto_0

    .line 429
    .end local v7    # "ret":I
    .restart local v8    # "service":Landroid/app/enterprise/ILDAPInterface;
    .restart local v9    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_4
    :try_start_4
    const-string v13, "LDAPAccountPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deleteLDAPAccount() : Service is not valid. : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p2

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 432
    .end local v8    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v9    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :catch_0
    move-exception v5

    .line 433
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v13, "LDAPAccountPolicyService"

    const-string v14, "deleteLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v13, v14, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 434
    const/4 v6, 0x0

    .line 436
    :try_start_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 400
    .end local v2    # "account":Landroid/app/enterprise/LDAPAccount;
    .end local v3    # "callingUserId":I
    .end local v4    # "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "ret":Z
    .end local v10    # "token":J
    .end local v12    # "userId":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 436
    .restart local v2    # "account":Landroid/app/enterprise/LDAPAccount;
    .restart local v3    # "callingUserId":I
    .restart local v4    # "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .restart local v6    # "ret":Z
    .restart local v10    # "token":J
    .restart local v12    # "userId":I
    :catchall_1
    move-exception v13

    :try_start_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public getAllLDAPAccounts(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/LDAPAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 488
    .local v0, "callingUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 489
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 491
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 494
    .local v6, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 495
    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService(II)V

    .line 497
    :cond_0
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 498
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 499
    .local v4, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    invoke-virtual {v4}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getService()Landroid/app/enterprise/ILDAPInterface;

    move-result-object v3

    .line 500
    .local v3, "service":Landroid/app/enterprise/ILDAPInterface;
    if-eqz v3, :cond_1

    .line 501
    invoke-interface {v3}, Landroid/app/enterprise/ILDAPInterface;->getAllLDAPAccounts()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 509
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    .end local v3    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v4    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :goto_0
    return-object v8

    .line 509
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v2

    .line 505
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v8, "LDAPAccountPolicyService"

    const-string v9, "getAllLDAPAccounts() : Failed talking to EDM LDAP service "

    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 506
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 507
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "LDAPAccountPolicyService"

    const-string v9, "getAllLDAPAccounts() : unexpected Exception occurs. "

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 509
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public getLDAPAccount(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/LDAPAccount;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # J

    .prologue
    const/4 v7, 0x0

    .line 447
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 448
    .local v0, "callingUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 449
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 451
    .local v6, "userId":I
    const-wide/16 v8, 0x1

    cmp-long v8, p2, v8

    if-gez v8, :cond_0

    .line 452
    const-string v8, "LDAPAccountPolicyService"

    const-string v9, "getLDAPAccount() : ldapId is invalid"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :goto_0
    return-object v7

    .line 457
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 459
    .local v4, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 460
    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService(II)V

    .line 462
    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 463
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 464
    .local v3, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    invoke-virtual {v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getService()Landroid/app/enterprise/ILDAPInterface;

    move-result-object v2

    .line 465
    .local v2, "service":Landroid/app/enterprise/ILDAPInterface;
    if-eqz v2, :cond_2

    .line 466
    invoke-interface {v2, p2, p3}, Landroid/app/enterprise/ILDAPInterface;->getLDAPAccount(J)Landroid/app/enterprise/LDAPAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 475
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 469
    :cond_2
    :try_start_1
    const-string v8, "LDAPAccountPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getLDAPAccount() : Service is not valid. : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    .end local v2    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v3    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 472
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "LDAPAccountPolicyService"

    const-string v9, "getLDAPAccount() : unexpected Exception occurs. "

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 540
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 545
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 550
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 529
    const-string v1, "LDAPAccountPolicyService"

    const-string/jumbo v2, "systemReady()... "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 532
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 535
    return-void
.end method

.class final Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
.super Landroid/os/Handler;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericSSOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/GenericSSOService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    .line 263
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 264
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 269
    .local v5, "userId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 270
    .local v2, "configData":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 271
    .local v1, "callback":Landroid/app/enterprise/sso/IGenericSSOCallback;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 306
    .end local v1    # "callback":Landroid/app/enterprise/sso/IGenericSSOCallback;
    .end local v2    # "configData":Landroid/os/Bundle;
    .end local v5    # "userId":I
    :cond_0
    :goto_0
    return-void

    .line 274
    .restart local v1    # "callback":Landroid/app/enterprise/sso/IGenericSSOCallback;
    .restart local v2    # "configData":Landroid/os/Bundle;
    .restart local v5    # "userId":I
    :pswitch_0
    :try_start_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, Landroid/app/enterprise/sso/IGenericSSOCallback;

    move-object v1, v0

    .line 275
    iget-object v7, p0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromConfigData(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    invoke-static {v7, v5, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$000(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v4

    .line 277
    .local v4, "tokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    if-eqz v1, :cond_0

    .line 278
    if-eqz v4, :cond_1

    .line 279
    invoke-interface {v1, v4}, Landroid/app/enterprise/sso/IGenericSSOCallback;->tokenInfoSuccess(Landroid/app/enterprise/sso/TokenInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v4    # "tokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    :catch_0
    move-exception v3

    .line 284
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "GenericSSOService"

    const-string v8, "In handleMessage: RemoteException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 281
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v4    # "tokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    :cond_1
    const/4 v7, -0x1

    :try_start_1
    invoke-interface {v1, v7}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 289
    .end local v4    # "tokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    :pswitch_1
    :try_start_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, Landroid/app/enterprise/sso/IGenericSSOCallback;

    move-object v1, v0

    .line 290
    iget-object v7, p0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v7, v5, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->acquireUserInfo(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/UserInfo;

    move-result-object v6

    .line 292
    .local v6, "userInfo":Landroid/app/enterprise/sso/UserInfo;
    if-eqz v1, :cond_0

    .line 293
    if-eqz v6, :cond_2

    .line 294
    invoke-interface {v1, v6}, Landroid/app/enterprise/sso/IGenericSSOCallback;->userInfoSuccess(Landroid/app/enterprise/sso/UserInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 298
    .end local v6    # "userInfo":Landroid/app/enterprise/sso/UserInfo;
    :catch_1
    move-exception v3

    .line 299
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v7, "GenericSSOService"

    const-string v8, "In handleMessage: RemoteException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 296
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v6    # "userInfo":Landroid/app/enterprise/sso/UserInfo;
    :cond_2
    const/4 v7, -0x1

    :try_start_3
    invoke-interface {v1, v7}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

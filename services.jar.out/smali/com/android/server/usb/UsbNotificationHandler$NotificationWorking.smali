.class Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
.super Ljava/lang/Object;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationWorking"
.end annotation


# instance fields
.field mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

.field mDisplayedTime:J

.field private final mId:I

.field mList:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mszId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbNotificationHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbNotificationHandler;Ljava/lang/String;)V
    .locals 1
    .param p2, "szid"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .line 205
    iput-object p2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mszId:Ljava/lang/String;

    .line 206
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    .line 207
    return-void
.end method

.method private pop()Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 335
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    monitor-exit v3

    .line 342
    :goto_0
    return-object v1

    .line 339
    :cond_0
    monitor-exit v3

    move-object v1, v2

    .line 340
    goto :goto_0

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 341
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 342
    goto :goto_0
.end method


# virtual methods
.method public checkVaild()Z
    .locals 8

    .prologue
    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    const-wide/16 v6, 0xbb8

    add-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 284
    .local v0, "vailed":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    .line 285
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearAll()V
    .locals 4

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .line 253
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    .line 254
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 255
    monitor-exit v1

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public countLists()I
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStringId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mszId:Ljava/lang/String;

    return-object v0
.end method

.method public notStayNofication()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 220
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setNotificationStayed(Z)V

    .line 233
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V

    .line 235
    return-void

    .line 227
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .line 228
    .local v0, "unit":Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    if-eqz v0, :cond_0

    .line 229
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setNotificationStayed(Z)V

    goto :goto_0

    .line 233
    .end local v0    # "unit":Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public push(Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;)V
    .locals 5
    .param p1, "unit"    # Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .prologue
    const/4 v2, 0x1

    .line 320
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const/4 v4, 0x0

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V

    .line 328
    :cond_0
    monitor-exit v1

    .line 330
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reflash()V
    .locals 4

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->clearNotification()V

    .line 241
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .line 243
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    .line 245
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const/4 v3, 0x0

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V

    .line 248
    return-void

    .line 245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public remove()V
    .locals 6

    .prologue
    .line 259
    const/4 v0, 0x1

    .line 260
    .local v0, "send":Z
    invoke-virtual {p0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->checkVaild()Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-eqz v1, :cond_1

    .line 262
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->clearNotification()V

    .line 266
    const/4 v0, 0x0

    .line 271
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .line 272
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    .line 273
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const/4 v4, 0x0

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V

    .line 279
    :cond_2
    return-void

    .line 273
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public update()V
    .locals 12

    .prologue
    .line 289
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-nez v3, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->pop()Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    move-result-object v2

    .line 291
    .local v2, "unit":Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    if-eqz v2, :cond_3

    .line 292
    iput-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    .line 294
    invoke-virtual {v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setObserverNotification()V

    .line 301
    .end local v2    # "unit":Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v3}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->getNotificationStayed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 304
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 305
    .local v0, "current":J
    iget-wide v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    const-wide/16 v10, 0xbb8

    add-long/2addr v8, v10

    sub-long v4, v0, v8

    .line 306
    .local v4, "vailed":J
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send the timeout : current  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", vailed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    long-to-int v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", displayed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-gez v3, :cond_4

    .line 308
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v7, 0x2

    iget v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const-wide/16 v10, -0x1

    mul-long/2addr v10, v4

    long-to-int v9, v10

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v3, v7, v8, v9}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V

    .line 313
    .end local v0    # "current":J
    .end local v4    # "vailed":J
    :cond_2
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :goto_1
    return-void

    .line 296
    .restart local v2    # "unit":Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    :cond_3
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "unit is null"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 310
    .end local v2    # "unit":Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    .restart local v0    # "current":J
    .restart local v4    # "vailed":J
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v7, 0x2

    iget v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const/4 v9, 0x0

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v3, v7, v8, v9}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V

    goto :goto_0

    .line 313
    .end local v0    # "current":J
    .end local v4    # "vailed":J
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 314
    :catch_0
    move-exception v3

    goto :goto_1
.end method
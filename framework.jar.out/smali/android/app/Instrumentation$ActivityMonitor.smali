.class public Landroid/app/Instrumentation$ActivityMonitor;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityMonitor"
.end annotation


# instance fields
.field private final mBlock:Z

.field private final mClass:Ljava/lang/String;

.field mHits:I

.field mLastActivity:Landroid/app/Activity;

.field private final mResult:Landroid/app/Instrumentation$ActivityResult;

.field private final mWhich:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V
    .locals 2
    .param p1, "which"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .prologue
    const/4 v1, 0x0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 447
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 464
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 465
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 466
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 467
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 468
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V
    .locals 2
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .prologue
    const/4 v1, 0x0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 447
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 485
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 486
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 487
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 488
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 489
    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final getHits()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    return v0
.end method

.method public final getLastActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    return-object v0
.end method

.method public final isBlocking()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    return v0
.end method

.method final match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 579
    monitor-enter p0

    .line 580
    :try_start_0
    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "Instrumentation"

    invoke-virtual {v3, v4, p3, v5, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 583
    monitor-exit p0

    .line 600
    :goto_0
    return v1

    .line 585
    :cond_0
    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "cls":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 588
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 592
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 593
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 601
    .end local v0    # "cls":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 589
    .restart local v0    # "cls":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 590
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 596
    .end local v0    # "cls":Ljava/lang/String;
    :cond_4
    if-eqz p2, :cond_5

    .line 597
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 598
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 600
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public final waitForActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 536
    monitor-enter p0

    .line 537
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 539
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v1

    goto :goto_0

    .line 543
    :cond_0
    :try_start_2
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 544
    .local v0, "res":Landroid/app/Activity;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 545
    monitor-exit p0

    return-object v0

    .line 546
    .end local v0    # "res":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final waitForActivityWithTimeout(J)Landroid/app/Activity;
    .locals 3
    .param p1, "timeOut"    # J

    .prologue
    const/4 v0, 0x0

    .line 559
    monitor-enter p0

    .line 560
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 562
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 567
    monitor-exit p0

    .line 571
    :goto_1
    return-object v0

    .line 569
    :cond_1
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 570
    .local v0, "res":Landroid/app/Activity;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 571
    monitor-exit p0

    goto :goto_1

    .line 573
    .end local v0    # "res":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 563
    :catch_0
    move-exception v1

    goto :goto_0
.end method

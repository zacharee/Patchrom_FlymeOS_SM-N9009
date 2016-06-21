.class Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverPoint"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Magnifier.Point"


# instance fields
.field private final DEBUG:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPointFxSession:Landroid/view/SurfaceSession;

.field final mPointLock:Ljava/lang/Object;

.field private mPointSurface:Landroid/view/Surface;

.field private mPointSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layerStack"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v9, 0x0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->DEBUG:Z

    .line 350
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    .line 358
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    .line 359
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointFxSession:Landroid/view/SurfaceSession;

    .line 360
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 362
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointFxSession:Landroid/view/SurfaceSession;

    const-string v2, "OverlayMagnifierPoint"

    const/4 v5, -0x2

    const v6, -0x7ffffffc

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    .line 365
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 366
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 367
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x800002

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 375
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080ada

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 376
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v9, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 378
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v7

    .line 379
    .local v7, "c":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    invoke-virtual {v0, v7}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 381
    return-void

    .line 369
    .end local v7    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v8

    .line 370
    .local v8, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_1
    invoke-virtual {v8}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .end local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 421
    const-string v0, "Magnifier.Point"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    monitor-enter v1

    .line 424
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 426
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    .line 428
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 433
    monitor-exit v1

    .line 434
    return-void

    .line 431
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 433
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 406
    const-string v0, "Magnifier.Point"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 411
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 412
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 416
    monitor-exit v1

    .line 417
    return-void

    .line 414
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 416
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 386
    monitor-exit v1

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 391
    const-string v0, "Magnifier.Point"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 396
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 397
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 399
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 401
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.class Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;


# direct methods
.method private constructor <init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;Landroid/media/session/MediaSessionLegacyHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    .param p2, "x1"    # Landroid/media/session/MediaSessionLegacyHelper$1;

    .prologue
    .line 587
    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;-><init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;)V

    return-void
.end method


# virtual methods
.method public getNowPlayingEntries()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0}, Landroid/media/session/MediaSession$Callback;->getNowPlayingEntries()V

    .line 679
    :cond_0
    return-void
.end method

.method public onFastForward()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onFastForward()V

    .line 630
    :cond_0
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    .line 591
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onMediaButtonEvent(Landroid/content/Intent;)Z

    .line 594
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onPause()V

    .line 609
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onPlay()V

    .line 602
    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onRewind()V

    .line 637
    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 648
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onSeekTo(J)V

    .line 651
    :cond_0
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 655
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession$Callback;->onSetRating(Landroid/media/Rating;)V

    .line 658
    :cond_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onSkipToNext()V

    .line 616
    :cond_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onSkipToPrevious()V

    .line 623
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onStop()V

    .line 644
    :cond_0
    return-void
.end method

.method public setBrowsedPlayer()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0}, Landroid/media/session/MediaSession$Callback;->setBrowsedPlayer()V

    .line 665
    :cond_0
    return-void
.end method

.method public setPlayItem(IJ)V
    .locals 2
    .param p1, "scope"    # I
    .param p2, "uid"    # J

    .prologue
    .line 669
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaSession$Callback;->setPlayItem(IJ)V

    .line 672
    :cond_0
    return-void
.end method

.class Landroid/media/BackgroundMusicService$FadeOutThread;
.super Ljava/lang/Thread;
.source "BackgroundMusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/BackgroundMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeOutThread"
.end annotation


# instance fields
.field private mCurrentVolume:I

.field private mDuration:I

.field final synthetic this$0:Landroid/media/BackgroundMusicService;


# direct methods
.method public constructor <init>(Landroid/media/BackgroundMusicService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    iput-object p1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 130
    iput v0, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mDuration:I

    .line 131
    iput v0, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mCurrentVolume:I

    .line 138
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 142
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 145
    :try_start_0
    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$100(Landroid/media/BackgroundMusicService;)Landroid/media/AudioService;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mCurrentVolume:I

    .line 147
    iget v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mCurrentVolume:I

    if-lez v1, :cond_1

    .line 148
    const/16 v1, 0xbb8

    iget v2, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mCurrentVolume:I

    div-int/2addr v1, v2

    iput v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mDuration:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    :cond_0
    :goto_0
    iget v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mCurrentVolume:I

    if-lez v1, :cond_2

    .line 158
    :try_start_1
    iget v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mDuration:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 160
    iget v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mCurrentVolume:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mCurrentVolume:I

    .line 162
    iget v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mCurrentVolume:I

    if-ltz v1, :cond_0

    .line 163
    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$100(Landroid/media/BackgroundMusicService;)Landroid/media/AudioService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$200(Landroid/media/BackgroundMusicService;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$100(Landroid/media/BackgroundMusicService;)Landroid/media/AudioService;

    move-result-object v1

    const/4 v2, 0x3

    iget v3, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mCurrentVolume:I

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/media/BackgroundMusicService;->access$200(Landroid/media/BackgroundMusicService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v1, 0xbb8

    :try_start_2
    iput v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mDuration:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 177
    :cond_3
    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 178
    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    const/4 v2, 0x0

    # setter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Landroid/media/BackgroundMusicService;->access$002(Landroid/media/BackgroundMusicService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 179
    return-void
.end method

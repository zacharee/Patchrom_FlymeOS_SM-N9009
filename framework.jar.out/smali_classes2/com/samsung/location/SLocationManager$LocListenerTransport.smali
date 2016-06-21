.class Lcom/samsung/location/SLocationManager$LocListenerTransport;
.super Lcom/samsung/location/ISLocationListener$Stub;
.source "SLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/location/SLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocListenerTransport"
.end annotation


# static fields
.field public static final TYPE_LOCATION_AVAILABLE:I = 0x1


# instance fields
.field private mListener:Lcom/samsung/location/SLocationListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/location/SLocationManager;


# direct methods
.method constructor <init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SLocationListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/samsung/location/SLocationManager$LocListenerTransport;->this$0:Lcom/samsung/location/SLocationManager;

    invoke-direct {p0}, Lcom/samsung/location/ISLocationListener$Stub;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/samsung/location/SLocationManager$LocListenerTransport;->mListener:Lcom/samsung/location/SLocationListener;

    .line 144
    new-instance v0, Lcom/samsung/location/SLocationManager$LocListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/location/SLocationManager$LocListenerTransport$1;-><init>(Lcom/samsung/location/SLocationManager$LocListenerTransport;Lcom/samsung/location/SLocationManager;)V

    iput-object v0, p0, Lcom/samsung/location/SLocationManager$LocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager$LocListenerTransport;->mListener:Lcom/samsung/location/SLocationListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/location/Location;

    check-cast v0, [Landroid/location/Location;

    invoke-interface {v1, v0}, Lcom/samsung/location/SLocationListener;->onLocationAvailable([Landroid/location/Location;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/samsung/location/SLocationManager$LocListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/location/SLocationManager$LocListenerTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/location/SLocationManager$LocListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 2
    .param p1, "locations"    # [Landroid/location/Location;

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 154
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 155
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/samsung/location/SLocationManager$LocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method

.class Lcom/android/server/usb/UsbHostManager$3;
.super Landroid/os/UEventObserver;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 599
    const-string v0, "ACTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 600
    .local v7, "action":Ljava/lang/String;
    const-string v0, "DEVPATH"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 601
    .local v8, "devPath":Ljava/lang/String;
    const-string v0, "STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 602
    .local v11, "state":Ljava/lang/String;
    const-string v0, "SWITCH_NAME"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 603
    .local v10, "name":Ljava/lang/String;
    const-string v0, "SWITCH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 604
    .local v12, "switchState":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    # invokes: Lcom/android/server/usb/UsbHostManager;->getPowerManager()V
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$200(Lcom/android/server/usb/UsbHostManager;)V

    .line 609
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    # invokes: Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$300(Lcom/android/server/usb/UsbHostManager;)V

    .line 614
    const-string/jumbo v0, "remove"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler;->clearAllNotificaton()V

    .line 620
    :cond_0
    const-string v0, "change"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v11, :cond_1

    const-string v0, "/devices/virtual/host_notify"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    :try_start_0
    const-string v0, "ADD"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x1040b97

    const/4 v2, 0x0

    const v3, 0x10808be

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "UsbDevices"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    .line 670
    :cond_1
    :goto_0
    return-void

    .line 631
    :cond_2
    const-string v0, "REMOVE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler;->clearAllNotificaton()V

    .line 636
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x1040b98

    const/4 v2, 0x0

    const v3, 0x10808be

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "UsbDevices"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v9

    .line 667
    .local v9, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse state or devPath from event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_1
    const-string v0, "OVERCURRENT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 643
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x1040b99

    const v2, 0x1040b9a

    const v3, 0x10808bf

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "OVERCURRENT"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto :goto_0

    .line 649
    :cond_4
    const-string v0, "UNKNOWN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 650
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x1040b9b

    const/4 v2, 0x0

    const v3, 0x10808c0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "UNKNOWN"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_5
    const-string v0, "LOWBATT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0
.end method

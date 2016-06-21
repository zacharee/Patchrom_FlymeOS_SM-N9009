.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V
    .locals 1

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 866
    const-string v10, "ShutdownThread"

    const-string v11, "!@Start shutdown radios"

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-string/jumbo v10, "sys.deviceOffReq"

    const-string v11, "1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string/jumbo v10, "sys.radio.shutdown"

    const-string/jumbo v11, "true"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v10, "nfc"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v6

    .line 878
    .local v6, "nfc":Landroid/nfc/INfcAdapter;
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 880
    .local v8, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v10, "bluetooth_manager"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 885
    .local v1, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v10

    const/16 v11, 0xb

    if-ne v10, v11, :cond_a

    :cond_0
    const/4 v0, 0x1

    .line 888
    .local v0, "WiFiOff":Z
    :goto_0
    if-nez v0, :cond_1

    .line 889
    const-string v10, "ShutdownThread"

    const-string v11, "Disabling WiFi..."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 891
    .local v5, "msg":Landroid/os/Message;
    const/16 v10, 0xe6

    iput v10, v5, Landroid/os/Message;->what:I

    .line 893
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 895
    .end local v5    # "msg":Landroid/os/Message;
    :cond_1
    const-string v10, "ShutdownThread"

    const-string v11, "Waiting for NFC, Bluetooth, Wi-Fi and Radio..."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    :cond_2
    const/4 v7, 0x1

    .line 904
    .local v7, "nfcOff":Z
    :goto_1
    if-nez v7, :cond_3

    .line 905
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off NFC..."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v10, 0x0

    invoke-interface {v6, v10}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 916
    :try_start_1
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 936
    :cond_4
    :goto_3
    const/4 v2, 0x1

    .line 940
    .local v2, "bluetoothOff":Z
    if-eqz v8, :cond_5

    :try_start_2
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v10

    if-nez v10, :cond_c

    :cond_5
    const/4 v9, 0x1

    .line 941
    .local v9, "radioOff":Z
    :goto_4
    if-nez v9, :cond_6

    .line 942
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off cellular radios..."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 950
    :cond_6
    :goto_5
    const-string v10, "ShutdownThread"

    const-string v11, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_9

    .line 954
    const-string v10, "ShutdownThread"

    const-string v11, "!@Skip bluetooth turned off for reconnection concept."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    if-nez v9, :cond_7

    .line 971
    :try_start_3
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v10

    if-nez v10, :cond_d

    const/4 v9, 0x1

    .line 976
    :goto_7
    if-eqz v9, :cond_7

    .line 977
    const-string v10, "ShutdownThread"

    const-string v11, "!@Radio turned off."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_7
    if-nez v7, :cond_8

    .line 982
    :try_start_4
    invoke-interface {v6}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    const/4 v7, 0x1

    .line 987
    :goto_8
    if-eqz v7, :cond_8

    .line 988
    const-string v10, "ShutdownThread"

    const-string v11, "!@NFC turned off."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_8
    if-eqz v9, :cond_f

    if-eqz v2, :cond_f

    if-eqz v7, :cond_f

    .line 993
    const-string v10, "ShutdownThread"

    const-string v11, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput-boolean v12, v10, v11

    .line 1009
    :cond_9
    return-void

    .line 885
    .end local v0    # "WiFiOff":Z
    .end local v2    # "bluetoothOff":Z
    .end local v7    # "nfcOff":Z
    .end local v9    # "radioOff":Z
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 902
    .restart local v0    # "WiFiOff":Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_1

    .line 908
    :catch_0
    move-exception v4

    .line 909
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 910
    const/4 v7, 0x1

    .restart local v7    # "nfcOff":Z
    goto :goto_2

    .line 918
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 919
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during bluetooth permanent log dump"

    invoke-static {v10, v11, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_3

    .line 940
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "bluetoothOff":Z
    :cond_c
    const/4 v9, 0x0

    goto :goto_4

    .line 945
    :catch_2
    move-exception v4

    .line 946
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 947
    const/4 v9, 0x1

    .restart local v9    # "radioOff":Z
    goto :goto_5

    .line 971
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    .line 972
    :catch_3
    move-exception v4

    .line 973
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 974
    const/4 v9, 0x1

    goto :goto_7

    .line 982
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_e
    const/4 v7, 0x0

    goto :goto_8

    .line 983
    :catch_4
    move-exception v4

    .line 984
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 985
    const/4 v7, 0x1

    goto :goto_8

    .line 997
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_f
    const-string v10, "ShutdownThread"

    const-string v11, "!@before sleep"

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-wide/16 v10, 0x1f4

    :try_start_5
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1003
    :goto_9
    const-string v10, "ShutdownThread"

    const-string v11, "!@after sleep"

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v10, "ShutdownThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!@[Phone off retry:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " radio="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bluetooth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " nfcOff="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " WiFiOff="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1000
    :catch_5
    move-exception v3

    .line 1001
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v10, "ShutdownThread"

    const-string v11, "InterruptedException"

    invoke-static {v10, v11, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_9
.end method

.class Lcom/android/server/wifi/WifiServiceImpl$10;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$10;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 934
    const-string v1, "home_ap_mac"

    .line 936
    .local v1, "HOME_AP_MAC":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl$10;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v14

    .line 937
    .local v14, "wifiApState":I
    const/16 v15, 0xc

    if-eq v14, v15, :cond_0

    const/16 v15, 0xd

    if-ne v14, v15, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl$10;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiServiceImpl;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    .line 943
    .local v13, "wInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v15

    sget-object v16, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 946
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 947
    .local v4, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    .line 948
    .local v5, "curApMac":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl$10;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "home_ap_mac"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 950
    .local v7, "homeAps":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 951
    const-string v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 954
    .local v6, "homeApMacs":[Ljava/lang/String;
    const/4 v2, 0x2

    .line 955
    .local v2, "NUM_OF_HOME_AP":I
    const/4 v12, 0x0

    .line 957
    .local v12, "numOfRememberedHomeAp":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v15, v6

    if-ge v8, v15, :cond_3

    .line 958
    aget-object v15, v6, v8

    invoke-virtual {v15, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_2

    .line 959
    const-string v15, ""

    aput-object v15, v6, v8

    .line 957
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 961
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 963
    :cond_3
    const/4 v15, 0x2

    if-ne v12, v15, :cond_4

    .line 964
    const/4 v15, 0x0

    const-string v16, ""

    aput-object v16, v6, v15

    .line 966
    :cond_4
    move-object v3, v6

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v10, :cond_6

    aget-object v11, v3, v9

    .line 967
    .local v11, "mac":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 968
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 966
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 971
    .end local v2    # "NUM_OF_HOME_AP":I
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "homeApMacs":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "mac":Ljava/lang/String;
    .end local v12    # "numOfRememberedHomeAp":I
    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 976
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl$10;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "home_ap_mac"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

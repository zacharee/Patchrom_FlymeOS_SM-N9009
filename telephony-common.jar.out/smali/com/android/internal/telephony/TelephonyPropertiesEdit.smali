.class public Lcom/android/internal/telephony/TelephonyPropertiesEdit;
.super Ljava/lang/Object;
.source "TelephonyPropertiesEdit.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "TelephonyPropertiesEdit"


# instance fields
.field private mContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;-><init>(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 129
    iput-object p2, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    .line 130
    const-string v1, "TelephonyPropertiesEdit"

    const-string v2, "Creating TelephonyPropertiesEdit"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v1, "NULL"

    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->resetProperties()V

    .line 138
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "NEW_CARD_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "ACTION_REGCARD_ICON_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "ACTION_REGCARD_CARDNAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "ACTION_NETWORK_ACTIVATE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "ACTION_PLMN_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "com.samsung.intent.action.DATA_SERVICE_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "com.samsung.intent.action.Slot2OnCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "com.samsung.intent.action.Slot1OffCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "com.samsung.intent.action.Slot2OffCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "android.settings.SIMCARD_MGT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void

    .line 135
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v1, "TelephonyPropertiesEdit"

    const-string v2, "skip resetProperties"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyNewCard(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/TelephonyPropertiesEdit;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyIconName(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyCardname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyPLMN(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->handleCardOnOffCompleted(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "defValue"    # Ljava/lang/String;

    .prologue
    .line 557
    invoke-static {p1, p2, p3}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCardOnOffCompleted(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "cardStatus"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 301
    const-string v2, "com.samsung.intent.action.Slot1OffCompleted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "2"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    const-string v2, "CG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DGG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v2, "property_item"

    const-string v3, "Slot1OffCompleted"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 320
    :cond_2
    const-string v2, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 321
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "9"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 323
    .local v0, "cardstatus":I
    if-eq v0, v4, :cond_3

    .line 324
    const-string v2, "CG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 326
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "3"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    const-string v2, "DGG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "DCG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "DCGG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "DCGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "DCGGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 338
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v2, "property_item"

    const-string v3, "Slot1OnCompleted"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 344
    .end local v0    # "cardstatus":I
    .end local v1    # "i":Landroid/content/Intent;
    :cond_5
    const-string v2, "com.samsung.intent.action.Slot2OffCompleted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 345
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 346
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "2"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    const-string v2, "CG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "DGG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "DCG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "DCGG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "DCGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "DCGGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 357
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v2, "property_item"

    const-string v3, "Slot2OffCompleted"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 363
    .end local v1    # "i":Landroid/content/Intent;
    :cond_7
    const-string v2, "com.samsung.intent.action.Slot2OnCompleted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "9"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 366
    .restart local v0    # "cardstatus":I
    if-eq v0, v4, :cond_8

    .line 367
    const-string v2, "CG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 369
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "3"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 372
    :cond_8
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    const-string v2, "DGG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "DCG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "DCGG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "DCGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "DCGGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    :cond_9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 381
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v2, "property_item"

    const-string v3, "Slot2OnCompleted"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private setPropertyActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "cdmaAct"    # Ljava/lang/String;
    .param p2, "gsm01Act"    # Ljava/lang/String;
    .param p3, "gsm02Act"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v3, "TelephonyPropertiesEdit"

    const-string v4, "onReceive ACTION_NETWORK_ACTIVATE_STATE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v3, "TelephonyPropertiesEdit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v3, "1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "true"

    .line 291
    .local v0, "cdmAct":Ljava/lang/String;
    :goto_0
    const-string v3, "1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "true"

    .line 292
    .local v1, "gs1Act":Ljava/lang/String;
    :goto_1
    const-string v3, "1"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "true"

    .line 294
    .local v2, "gs2Act":Ljava/lang/String;
    :goto_2
    const-string v3, "TelephonyPropertiesEdit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v3, "gsm.sim.activity"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    const-string v3, "gsm.sim.activity"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    const-string v3, "gsm.sim.availability"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void

    .line 290
    .end local v0    # "cdmAct":Ljava/lang/String;
    .end local v1    # "gs1Act":Ljava/lang/String;
    .end local v2    # "gs2Act":Ljava/lang/String;
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 291
    .restart local v0    # "cdmAct":Ljava/lang/String;
    :cond_1
    const-string v1, "false"

    goto :goto_1

    .line 292
    .restart local v1    # "gs1Act":Ljava/lang/String;
    :cond_2
    const-string v2, "false"

    goto :goto_2
.end method

.method private setPropertyCardname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cdmaName"    # Ljava/lang/String;
    .param p2, "gsm01Name"    # Ljava/lang/String;
    .param p3, "gsm02Name"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string v0, "TelephonyPropertiesEdit"

    const-string v1, "onReceive ACTION_REGCARD_CARDNAME_CHANGED"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v0, "gsm.sim.cardname"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    const-string v0, "gsm.sim.cardname"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    const-string v0, "gsm.sim.cardname.dual"

    invoke-static {v0, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method private setPropertyIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cdmaIcon"    # Ljava/lang/String;
    .param p2, "gsm01Icon"    # Ljava/lang/String;
    .param p3, "gsm02Icon"    # Ljava/lang/String;

    .prologue
    .line 280
    const-string v0, "TelephonyPropertiesEdit"

    const-string v1, "onReceive ACTION_REGCARD_ICON_CHANGED"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v0, "gsm.sim.icon"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    const-string v0, "gsm.sim.icon"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    const-string v0, "gsm.sim.icon.dual"

    invoke-static {v0, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method private setPropertyIconName(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "simId"    # I
    .param p2, "simIconIndex"    # Ljava/lang/String;
    .param p3, "simName"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string v0, "TelephonyPropertiesEdit"

    const-string v1, "setPropertyIconName"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v0, "gsm.sim.icon"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    const-string v0, "gsm.sim.cardname"

    invoke-direct {p0, v0, p1, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    if-nez p1, :cond_2

    .line 252
    if-eqz p2, :cond_0

    const-string v0, ""

    if-eq p2, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_1"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, ""

    if-eq p3, v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_1"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    if-eqz p2, :cond_3

    const-string v0, ""

    if-eq p2, v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_2"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    :cond_3
    if-eqz p3, :cond_1

    const-string v0, ""

    if-eq p3, v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_2"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setPropertyNewCard(I)V
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 236
    const-string v0, "TelephonyPropertiesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive CDMAPHONE NEW_CARD_CHECK + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-ne p1, v3, :cond_1

    .line 238
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "true"

    invoke-direct {p0, v0, v4, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 240
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "true"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 242
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "true"

    invoke-direct {p0, v0, v4, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "true"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setPropertyPLMN(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "sSwitchStateC"    # Ljava/lang/String;
    .param p2, "sSwitchStateG"    # Ljava/lang/String;
    .param p3, "bSwitchImgViewC"    # Z
    .param p4, "bSwitchImgViewG"    # Z

    .prologue
    .line 220
    const-string v0, "TelephonyPropertiesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cdma plmnstring + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plmnstate + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v0, "TelephonyPropertiesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gsm plmnstring + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plmnstate + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz p3, :cond_0

    .line 224
    const-string v0, "gsm.plmnstring"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "gsm.plmnstate"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 226
    :cond_0
    if-eqz p4, :cond_1

    .line 227
    const-string v0, "gsm.plmnstring"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "gsm.plmnstate"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_1
    const-string v0, "gsm.plmnstring"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "gsm.plmnstate"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPropertyState(I)V
    .locals 13
    .param p1, "slot"    # I

    .prologue
    .line 391
    const-string v8, "TelephonyPropertiesEdit"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive setPropertyState slot : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v8, "gsm.sim.state"

    const-string v9, "ABSENT"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "mStateSlot":Ljava/lang/String;
    const-string v8, "ril.cardnoti"

    invoke-static {v8, p1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 394
    .local v1, "cardnoti":I
    const-string v8, "gsm.sim.currentcardstatus"

    const-string v9, "0"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 396
    .local v2, "cardstatus":I
    const-string v8, "TelephonyPropertiesEdit"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mStateSlot : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v8, "TelephonyPropertiesEdit"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cardnoti : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v8, "TelephonyPropertiesEdit"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cardstatus : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    if-nez v1, :cond_1

    .line 401
    const-string v8, "TelephonyPropertiesEdit"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cardnoti 0, skip setPropertyState slot : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    const-string v8, "ABSENT"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 406
    const-string v8, "gsm.sim.availability"

    const-string v9, "false"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 407
    const-string v8, "gsm.sim.pplock"

    const-string v9, ""

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 408
    const-string v8, "gsm.sim.currentcardstatus"

    const-string v9, "0"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 409
    const-string v8, "gsm.sim.cardnoti"

    const-string v9, "1"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_2
    const-string v8, "UNKNOWN"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "NOT_READY"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 412
    :cond_3
    const-string v8, "ril.ICC_TYPE"

    const-string v9, "0"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 413
    .local v4, "icctype":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 414
    :cond_4
    const-string v4, "0"

    .line 416
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 417
    .local v7, "type":I
    const-string v8, "TelephonyPropertiesEdit"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ril.ICC_TYPE :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v8, "TelephonyPropertiesEdit"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switching.slot :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "switching.slot"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-nez p1, :cond_b

    .line 421
    const/4 v8, 0x3

    if-eq v7, v8, :cond_6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8

    .line 422
    :cond_6
    const-string v8, "gsm.sim.availability"

    const-string v9, "true"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 465
    :cond_7
    :goto_1
    const-string v8, "DTC"

    const-string v9, "DCGGS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 467
    const/4 v8, 0x1

    if-ne p1, v8, :cond_10

    .line 468
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "phone2_on"

    const/16 v10, 0x9

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 473
    .local v5, "mPhoneOnMode":I
    :goto_2
    if-nez v5, :cond_0

    .line 474
    const-string v8, "gsm.sim.currentcardstatus"

    const-string v9, "2"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 475
    const-string v8, "gsm.sim.state"

    const-string v9, "UNKNOWN"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 425
    .end local v5    # "mPhoneOnMode":I
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "switching.slot"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_a

    .line 427
    const-string v8, "DGG"

    const-string v9, "DCGGS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 438
    :cond_9
    const-string v8, "gsm.sim.pplock"

    const-string v9, ""

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 439
    const-string v8, "gsm.sim.currentcardstatus"

    const-string v9, "0"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 442
    :cond_a
    const-string v8, "gsm.sim.availability"

    const-string v9, "true"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_b
    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 449
    const-string v8, "gsm.sim.availability"

    const-string v9, "true"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 451
    :cond_c
    const/4 v8, 0x3

    if-eq v7, v8, :cond_d

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 452
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "switching.slot"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_f

    .line 453
    const-string v8, "gsm.sim.availability"

    const-string v9, "false"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 454
    if-eqz v7, :cond_e

    const-string v8, "gsm.sim.state"

    const-string v9, "ABSENT"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 455
    :cond_e
    const-string v8, "gsm.sim.pplock"

    const-string v9, ""

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 456
    const-string v8, "gsm.sim.currentcardstatus"

    const-string v9, "0"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 458
    :cond_f
    const-string v8, "gsm.sim.availability"

    const-string v9, "true"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 470
    :cond_10
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "phone1_on"

    const/16 v10, 0x9

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .restart local v5    # "mPhoneOnMode":I
    goto/16 :goto_2

    .line 480
    .end local v4    # "icctype":Ljava/lang/String;
    .end local v5    # "mPhoneOnMode":I
    .end local v7    # "type":I
    :cond_11
    const-string v8, "READY"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 481
    const-string v8, "gsm.sim.availability"

    const-string v9, "true"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 482
    const-string v8, "gsm.sim.pplock"

    const-string v9, "unlock"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 483
    const/4 v8, 0x2

    if-eq v2, v8, :cond_12

    .line 484
    const-string v8, "gsm.sim.currentcardstatus"

    const-string v9, "3"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 505
    :cond_12
    const-string v8, "CG"

    const-string v9, "DCGGS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "DTC"

    const-string v9, "DCGGS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 507
    :cond_13
    const-string v8, "gsm.sim.active"

    const-string v9, "0"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 508
    .local v0, "cardact":I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_14

    .line 509
    const-string v8, "gsm.sim.active"

    const-string v9, "0"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 510
    const/4 v8, 0x1

    if-ne p1, v8, :cond_16

    .line 511
    const-string v8, "gsm.sim.currentcardstatus"

    const-string v9, "3"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 512
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "phone2_on"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 513
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 514
    .local v3, "i":Landroid/content/Intent;
    const-string v8, "com.samsung.intent.action.Slot2OnCompleted"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 523
    :goto_3
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 524
    .restart local v3    # "i":Landroid/content/Intent;
    const-string v8, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v8, "property_item"

    const-string v9, "currentcardstatuson"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string v8, "simSlot"

    invoke-virtual {v3, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 533
    .end local v0    # "cardact":I
    .end local v3    # "i":Landroid/content/Intent;
    :cond_14
    const-string v8, "DTC"

    const-string v9, "DCGGS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 534
    const/4 v8, 0x1

    if-ne p1, v8, :cond_15

    .line 535
    const-string v8, "ril.Slotswitching"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_15
    const-string v8, "gsm.sim.cardnoti"

    const-string v9, "2"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 517
    .restart local v0    # "cardact":I
    :cond_16
    const-string v8, "gsm.sim.currentcardstatus"

    const-string v9, "3"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 518
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "phone1_on"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 520
    .restart local v3    # "i":Landroid/content/Intent;
    const-string v8, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 543
    .end local v0    # "cardact":I
    .end local v3    # "i":Landroid/content/Intent;
    :cond_17
    const-string v8, "gsm.sim.availability"

    const-string v9, "true"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 544
    const-string v8, "gsm.sim.pplock"

    invoke-direct {p0, v8, p1, v6}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 545
    const-string v8, "gsm.sim.currentcardstatus"

    const-string v9, "1"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 546
    const-string v8, "gsm.sim.cardnoti"

    const-string v9, "2"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 552
    invoke-static {p1, p2, p3}, Lcom/samsung/android/telephony/MultiSimManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 553
    return-void
.end method


# virtual methods
.method resetProperties()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 157
    const-string v2, "TelephonyPropertiesEdit"

    const-string v3, "resetProperties"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v2, "gsm.sim.newCheck"

    const-string v3, "false"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    const-string v2, "gsm.sim.newCheck"

    const-string v3, "false"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    const-string v2, "gsm.sim.availability"

    const-string v3, "false"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    const-string v2, "gsm.sim.availability"

    const-string v3, "false"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    const-string v2, "gsm.sim.pplock"

    const-string v3, ""

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    const-string v2, "gsm.sim.pplock"

    const-string v3, ""

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    const-string v2, "DCG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    :cond_0
    const-string v2, "gsm.sim.cardname"

    const-string v3, "Slot 1"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    const-string v2, "gsm.sim.cardname"

    const-string v3, "Slot 2"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    const-string v2, "gsm.sim.cardname.dual"

    const-string v3, "Slot 1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "gsm.sim.cardnoti"

    const-string v3, "0"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    const-string v2, "gsm.sim.cardnoti"

    const-string v3, "0"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    const-string v2, "gsm.sim.state"

    const-string v3, "UNKNOWN"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    const-string v2, "gsm.sim.state"

    const-string v3, "UNKNOWN"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    const-string v2, "gsm.sim.selectnetwork"

    const-string v3, "CDMA"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "gsm.sim.slotswitching"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    const-string v2, "DGG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_1"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 193
    .local v0, "icon1":I
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_2"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 194
    .local v1, "icon2":I
    const-string v2, "gsm.sim.icon"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    const-string v2, "gsm.sim.icon"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    .end local v0    # "icon1":I
    .end local v1    # "icon2":I
    :goto_1
    const-string v2, "gsm.sim.icon.dual"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "gsm.sim.activity"

    const-string v3, "false"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    const-string v2, "gsm.sim.activity"

    const-string v3, "false"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    const-string v2, "gsm.sim.activity.dual"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "9"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "9"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    return-void

    .line 185
    :cond_1
    const-string v2, "gsm.sim.cardname"

    const-string v3, ""

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    const-string v2, "gsm.sim.cardname"

    const-string v3, ""

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    const-string v2, "gsm.sim.cardname.dual"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_2
    const-string v2, "gsm.sim.icon"

    const-string v3, "0"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    const-string v2, "gsm.sim.icon"

    const-string v3, "1"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.class Lcom/android/internal/telephony/uicc/VoiceMailConstants;
.super Ljava/lang/Object;
.source "VoiceMailConstants.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "VoiceMailConstants"

.field static final NAME:I = 0x0

.field static final NUMBER:I = 0x1

.field static final PARTNER_VOICEMAIL_PATH:Ljava/lang/String; = "/data/misc/radio/voicemail-conf.xml"

.field static final SIZE:I = 0x3

.field static final TAG:I = 0x2


# instance fields
.field private CarrierVmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->loadVoiceMail()V

    .line 55
    return-void
.end method

.method private loadVoiceMail()V
    .locals 10

    .prologue
    .line 84
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/misc/radio/voicemail-conf.xml"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v5, "vmFile":Ljava/io/File;
    const-string v7, "VoiceMailConstants"

    const-string v8, "[Voicemail] loadVoiceMail "

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v6, "vmReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 101
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 103
    const-string v7, "voicemail"

    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 106
    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 108
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "name":Ljava/lang/String;
    const-string v7, "voicemail"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 142
    if-eqz v6, :cond_0

    .line 143
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 147
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "vmReader":Ljava/io/FileReader;
    :cond_0
    :goto_1
    return-void

    .line 90
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v7, "VoiceMailConstants"

    const-string v8, "Can\'t open /data/misc/radio/voicemail-conf.xml"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 126
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "vmReader":Ljava/io/FileReader;
    :cond_1
    const/4 v7, 0x3

    :try_start_3
    new-array v1, v7, [Ljava/lang/String;

    .line 127
    .local v1, "data":[Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "carrier"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "carrier":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "numeric"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 129
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "vmnumber"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 130
    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v9, "vmtag"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 132
    const-string v7, "VoiceMailConstants"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Voicemail] carrier "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numeric : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "vmnumber : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " tag : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 136
    .end local v0    # "carrier":Ljava/lang/String;
    .end local v1    # "data":[Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v2

    .line 137
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v7, "VoiceMailConstants"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in Voicemail parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    if-eqz v6, :cond_0

    .line 143
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 145
    :catch_2
    move-exception v7

    goto/16 :goto_1

    .line 138
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v2

    .line 139
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    const-string v7, "VoiceMailConstants"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in Voicemail parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 142
    if-eqz v6, :cond_0

    .line 143
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 145
    :catch_4
    move-exception v7

    goto/16 :goto_1

    .line 141
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 142
    if-eqz v6, :cond_2

    .line 143
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 145
    :cond_2
    :goto_2
    throw v7

    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v7

    goto/16 :goto_1

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v8

    goto :goto_2
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getCarrierName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 63
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 68
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 73
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, v0, v1

    return-object v1
.end method

.class Lcom/android/server/im/FeatureInfoParser;
.super Ljava/lang/Object;
.source "FeatureInfoParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/im/FeatureInfoParser$FeatureInfoAttribute;
    }
.end annotation


# static fields
.field private static final DEBUG_ELASTIC:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isFirstBoot:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessage:Landroid/os/Message;

.field private mXmlParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/im/InjectionManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -FeatureInfoParser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/im/FeatureInfoParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/res/XmlResourceParser;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "xmlParser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "firstboot"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p3, p0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    .line 57
    iput-boolean p4, p0, Lcom/android/server/im/FeatureInfoParser;->isFirstBoot:Z

    .line 58
    iput-object p2, p0, Lcom/android/server/im/FeatureInfoParser;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method private postMessageToHandler(Lcom/android/server/im/InjectionFeatureInfo;)V
    .locals 4
    .param p1, "featureinfo"    # Lcom/android/server/im/InjectionFeatureInfo;

    .prologue
    .line 208
    iget-object v2, p0, Lcom/android/server/im/FeatureInfoParser;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 211
    .local v1, "msgObj":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "FEATURE_INFO"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 215
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 216
    iget-object v2, p0, Lcom/android/server/im/FeatureInfoParser;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 218
    return-void
.end method


# virtual methods
.method public parseFeatureInfoFile()V
    .locals 20

    .prologue
    .line 65
    const/4 v8, 0x0

    .line 68
    .local v8, "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 69
    .local v16, "startTime":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v13, "parentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 72
    .local v10, "isFeatureInfoStartTagAvailable":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .local v5, "eventType":I
    move-object v9, v8

    .line 73
    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .local v9, "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :goto_0
    const/4 v15, 0x1

    if-eq v5, v15, :cond_15

    .line 74
    if-nez v5, :cond_0

    .line 75
    const/4 v10, 0x0

    move-object v8, v9

    .line 177
    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    move-object v9, v8

    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto :goto_0

    .line 78
    :cond_0
    const/4 v15, 0x2

    if-ne v5, v15, :cond_e

    .line 80
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v18, "featureinfo"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 82
    const/4 v10, 0x1

    move-object v8, v9

    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto :goto_1

    .line 85
    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v18, "feature"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 87
    if-eqz v10, :cond_2

    .line 88
    new-instance v8, Lcom/android/server/im/InjectionFeatureInfo;

    invoke-direct {v8}, Lcom/android/server/im/InjectionFeatureInfo;-><init>()V

    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto :goto_1

    .line 90
    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_2
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Invalid FeatureInfo Tag"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :catch_0
    move-exception v4

    move-object v8, v9

    .line 182
    .end local v5    # "eventType":I
    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :goto_2
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 186
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/im/FeatureInfoParser;->isFirstBoot:Z

    if-nez v15, :cond_3

    .line 188
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mHandler:Landroid/os/Handler;

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 192
    .local v11, "msgObj":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v15, "FEATURE_INFO"

    invoke-virtual {v2, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 196
    invoke-virtual {v11, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mHandler:Landroid/os/Handler;

    invoke-virtual {v15, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v11    # "msgObj":Landroid/os/Message;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v6, v18, v16

    .line 204
    .local v6, "endTime":J
    return-void

    .line 95
    .end local v6    # "endTime":J
    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v5    # "eventType":I
    .restart local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v18, "source"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 97
    if-nez v9, :cond_5

    .line 98
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Invalid Feature Tag"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 183
    :catch_1
    move-exception v4

    move-object v8, v9

    .line 184
    .end local v5    # "eventType":I
    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .local v4, "e":Ljava/io/IOException;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :goto_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 100
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v5    # "eventType":I
    .restart local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    const/16 v18, 0x0

    const-string/jumbo v19, "package"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 102
    .local v14, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    const/16 v18, 0x0

    const-string v19, "class"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "clazz":Ljava/lang/String;
    if-eqz v14, :cond_7

    if-eqz v3, :cond_7

    .line 105
    const-string v15, "."

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 106
    invoke-virtual {v14, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    :cond_6
    invoke-virtual {v9, v14, v3}, Lcom/android/server/im/InjectionFeatureInfo;->setSourceDetails(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 113
    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_1

    .line 109
    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_7
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v15, "Invalid source information"

    invoke-direct {v4, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    throw v4

    .line 113
    .end local v3    # "clazz":Ljava/lang/String;
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v18, "target"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 115
    if-nez v9, :cond_9

    .line 116
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Invalid Feature Tag"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 118
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    const/16 v18, 0x0

    const-string/jumbo v19, "package"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 120
    .restart local v14    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    const/16 v18, 0x0

    const-string v19, "class"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .restart local v3    # "clazz":Ljava/lang/String;
    if-eqz v14, :cond_b

    if-eqz v3, :cond_b

    .line 123
    const-string v15, "."

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 124
    invoke-virtual {v14, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    :cond_a
    invoke-virtual {v9, v14, v3}, Lcom/android/server/im/InjectionFeatureInfo;->setTargetDetails(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 131
    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_1

    .line 127
    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_b
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v15, "Invalid target information"

    invoke-direct {v4, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 129
    .restart local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    throw v4

    .line 131
    .end local v3    # "clazz":Ljava/lang/String;
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v18, "category"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 133
    if-nez v9, :cond_d

    .line 134
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Invalid Feature Tag"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 136
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, "name":Ljava/lang/String;
    invoke-virtual {v9, v12}, Lcom/android/server/im/InjectionFeatureInfo;->setCategory(Ljava/lang/String;)V

    move-object v8, v9

    .line 141
    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_1

    .line 142
    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .end local v12    # "name":Ljava/lang/String;
    .restart local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_e
    const/4 v15, 0x4

    if-ne v5, v15, :cond_f

    move-object v8, v9

    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_1

    .line 143
    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_f
    const/4 v15, 0x3

    if-ne v5, v15, :cond_13

    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v18, "feature"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 148
    invoke-virtual {v9}, Lcom/android/server/im/InjectionFeatureInfo;->isComplete()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 153
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/im/FeatureInfoParser;->isFirstBoot:Z

    if-nez v15, :cond_10

    iget-object v15, v9, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 156
    iget-object v15, v9, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/im/FeatureInfoParser;->postMessageToHandler(Lcom/android/server/im/InjectionFeatureInfo;)V

    move-object v8, v9

    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_1

    .line 161
    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_11
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Feature information is incomplete for "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lcom/android/server/im/InjectionFeatureInfo;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    throw v4

    .line 166
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/FeatureInfoParser;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v18, "featureinfo"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v15

    if-eqz v15, :cond_14

    move-object v8, v9

    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_1

    .line 172
    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_13
    const/4 v15, 0x1

    if-ne v5, v15, :cond_14

    :cond_14
    move-object v8, v9

    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_1

    .end local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_15
    move-object v8, v9

    .line 185
    .end local v9    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v8    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_3

    .line 183
    .end local v5    # "eventType":I
    :catch_2
    move-exception v4

    goto/16 :goto_4

    .line 181
    :catch_3
    move-exception v4

    goto/16 :goto_2
.end method

.method public run()V
    .locals 0

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/server/im/FeatureInfoParser;->parseFeatureInfoFile()V

    .line 226
    return-void
.end method

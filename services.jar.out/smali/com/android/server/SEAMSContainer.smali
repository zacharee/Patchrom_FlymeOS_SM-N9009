.class public abstract Lcom/android/server/SEAMSContainer;
.super Ljava/lang/Object;
.source "SEAMSContainer.java"


# static fields
.field public static final FIXMO_CATEGORY_NUMBER:I = 0x6a

.field public static final KNOXCONTAINER_START_CATEGORY:I = 0x1

.field public static final MYCONTAINER:I = 0x2

.field public static final NONE:I = 0x0

.field public static final OTHER_CONTAINER_END_CATEGORY:I = 0x1f4

.field public static final OTHER_CONTAINER_START_CATEGORY:I = 0x66

.field public static final REMOVE_MYCONTAINER_TYPE:I = 0x0

.field public static final SECURED_APPTYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SEAMSContainer"

.field public static final THIRDPARTYCONTAINER:I = 0x1

.field public static final TRUSTED_APPTYPE:I = 0x2

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 34
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "cat"    # Ljava/lang/String;
    .param p5, "appType"    # I
    .param p6, "agent"    # Z

    .prologue
    .line 213
    const-class v30, Lcom/android/server/SEAMSContainer;

    monitor-enter v30

    const/4 v12, 0x0

    .line 214
    .local v12, "isAddedMac":Z
    const/4 v13, 0x0

    .line 215
    .local v13, "macPermExists":Z
    const/4 v4, 0x0

    .line 218
    .local v4, "conType":I
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 220
    .local v7, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    .line 222
    .local v6, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 223
    .local v5, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_8

    .line 227
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v29

    if-nez v29, :cond_0

    .line 228
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 229
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 230
    const/4 v13, 0x1

    .line 242
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Element;->normalize()V

    .line 243
    const-string/jumbo v29, "policy"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 244
    .local v17, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    .line 245
    .local v16, "policyElement":Lorg/w3c/dom/Element;
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .end local v16    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v16, Lorg/w3c/dom/Element;

    .line 246
    .restart local v16    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v29, "signer"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v22

    .line 247
    .local v22, "signer":Lorg/w3c/dom/NodeList;
    const/16 v24, 0x0

    .line 248
    .local v24, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v23, 0x0

    .line 249
    .local v23, "signerElement":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 250
    .local v3, "allowallElement":Lorg/w3c/dom/Element;
    const/4 v14, 0x0

    .line 251
    .local v14, "newElement":Lorg/w3c/dom/Element;
    const/16 v21, 0x0

    .line 254
    .local v21, "seinfoElement":Lorg/w3c/dom/Element;
    :try_start_2
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Lcom/android/server/SEAMSContainer;->getContainerType(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 259
    const/16 v26, 0x0

    .line 260
    .local v26, "specialTag":Ljava/lang/String;
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v4, v0, :cond_1

    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v4, v0, :cond_c

    .line 261
    :cond_1
    const/16 v29, 0x2

    move/from16 v0, p5

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    const/16 v29, 0x4

    move/from16 v0, p5

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 262
    :cond_2
    :try_start_3
    const-string/jumbo v26, "service"

    .line 263
    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 264
    const-string v29, "name"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v29, "seinfo"

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v29, "category"

    const-string v31, "1023"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v29, "allowcategory"

    const-string v31, "0,501-1023"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v29, "containerallowcategory"

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_3
    :goto_1
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    .line 288
    .local v20, "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v29, "signer"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 289
    const-string/jumbo v29, "seinfo"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v21

    .line 290
    const-string v29, "allow-all"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 291
    if-eqz v20, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v31, "default"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 292
    :cond_4
    const-string/jumbo v29, "signature"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v29, "value"

    const-string/jumbo v31, "untrusted"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v29, "category"

    const-string v31, "1023"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v29, "allowcategory"

    const-string v31, "0,501-1023"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_5
    :goto_2
    if-nez v12, :cond_6

    .line 356
    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 357
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 358
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 359
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 361
    :cond_6
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Element;->normalize()V

    .line 362
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v28

    .line 363
    .local v28, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v28 .. v28}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v27

    .line 364
    .local v27, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v25, 0x0

    .line 365
    .local v25, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v13, :cond_17

    .line 366
    new-instance v25, Ljavax/xml/transform/dom/DOMSource;

    .end local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 370
    .restart local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_3
    new-instance v18, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 371
    .local v18, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 373
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    :cond_7
    const/16 v29, 0x0

    .line 386
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v14    # "newElement":Lorg/w3c/dom/Element;
    .end local v16    # "policyElement":Lorg/w3c/dom/Element;
    .end local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v18    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v20    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v22    # "signer":Lorg/w3c/dom/NodeList;
    .end local v23    # "signerElement":Lorg/w3c/dom/Element;
    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v26    # "specialTag":Ljava/lang/String;
    .end local v27    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v28    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_4
    monitor-exit v30

    return v29

    .line 235
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_8
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    .line 236
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v29

    if-nez v29, :cond_9

    .line 237
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 238
    :cond_9
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    .line 239
    const-string/jumbo v29, "policy"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 240
    .local v19, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 375
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v19    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v9

    .line 376
    .local v9, "e1":Lorg/xml/sax/SAXException;
    :try_start_5
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 386
    .end local v9    # "e1":Lorg/xml/sax/SAXException;
    :goto_5
    const/16 v29, -0x1

    goto :goto_4

    .line 255
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v14    # "newElement":Lorg/w3c/dom/Element;
    .restart local v16    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v22    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v23    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v8

    .line 256
    .local v8, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    sget-object v29, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v31, "SEAMSContainer"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "category: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " integer parse failed"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/16 v29, -0x1

    goto :goto_4

    .line 269
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v26    # "specialTag":Ljava/lang/String;
    :cond_a
    const/16 v29, 0x1

    move/from16 v0, p5

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    const/16 v29, 0x3

    move/from16 v0, p5

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 270
    :cond_b
    const-string/jumbo v26, "service"

    .line 271
    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 272
    const-string v29, "name"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v29, "seinfo"

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v29, "category"

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v29, "allowcategory"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "0,"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    if-eqz p6, :cond_3

    .line 277
    const-string v29, "agent"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 377
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v14    # "newElement":Lorg/w3c/dom/Element;
    .end local v16    # "policyElement":Lorg/w3c/dom/Element;
    .end local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v22    # "signer":Lorg/w3c/dom/NodeList;
    .end local v23    # "signerElement":Lorg/w3c/dom/Element;
    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v26    # "specialTag":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 378
    .local v9, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_7
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 213
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v29

    monitor-exit v30

    throw v29

    .line 280
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "newElement":Lorg/w3c/dom/Element;
    .restart local v16    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v22    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v23    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v26    # "specialTag":Ljava/lang/String;
    :cond_c
    :try_start_8
    sget-object v29, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v31, "SEAMSContainer"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "addEntryToMac is not supported for containertype:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/16 v29, -0x1

    goto/16 :goto_4

    .line 300
    .restart local v20    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    :cond_d
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v4, v0, :cond_e

    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v4, v0, :cond_10

    .line 301
    :cond_e
    const-string/jumbo v29, "signature"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v29, "value"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v29, "category"

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v29, "allowcategory"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/16 v29, 0x2

    move/from16 v0, p5

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 306
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_f

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 310
    const/16 v29, -0x9

    goto/16 :goto_4

    .line 312
    :cond_f
    const-string v29, "category"

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v29, "allowcategory"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_10
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v29

    move/from16 v0, v29

    if-ge v11, v0, :cond_5

    .line 318
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v24, Lorg/w3c/dom/Element;

    .line 319
    .restart local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v29, "signature"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 320
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 321
    .local v10, "existElem":Lorg/w3c/dom/Element;
    if-eqz v10, :cond_11

    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v4, v0, :cond_11

    .line 322
    const/16 v29, -0x9

    goto/16 :goto_4

    .line 325
    :cond_11
    if-eqz v10, :cond_12

    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v4, v0, :cond_12

    const/16 v29, 0x3

    move/from16 v0, p5

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 326
    const/16 v29, -0x9

    goto/16 :goto_4

    .line 329
    :cond_12
    if-eqz v10, :cond_15

    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v4, v0, :cond_15

    const/16 v29, 0x4

    move/from16 v0, p5

    move/from16 v1, v29

    if-ne v0, v1, :cond_15

    .line 331
    const-string v29, "containerallowcategory"

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_13

    .line 332
    const/16 v29, -0x9

    goto/16 :goto_4

    .line 335
    :cond_13
    const-string v29, "containerallowcategory"

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 339
    const/16 v29, -0x9

    goto/16 :goto_4

    .line 341
    :cond_14
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, ","

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, "containerallowcategory"

    move-object/from16 v0, v31

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 342
    .local v15, "newValue":Ljava/lang/String;
    const-string v29, "containerallowcategory"

    move-object/from16 v0, v29

    invoke-interface {v10, v0, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v12, 0x1

    .line 344
    goto/16 :goto_2

    .line 346
    .end local v15    # "newValue":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v0, v14}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 350
    const/4 v12, 0x1

    .line 351
    goto/16 :goto_2

    .line 317
    .end local v10    # "existElem":Lorg/w3c/dom/Element;
    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 368
    .end local v11    # "i":I
    .restart local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v27    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v28    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_17
    new-instance v25, Ljavax/xml/transform/dom/DOMSource;

    .end local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .restart local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_3

    .line 379
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v14    # "newElement":Lorg/w3c/dom/Element;
    .end local v16    # "policyElement":Lorg/w3c/dom/Element;
    .end local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v20    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v22    # "signer":Lorg/w3c/dom/NodeList;
    .end local v23    # "signerElement":Lorg/w3c/dom/Element;
    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v26    # "specialTag":Ljava/lang/String;
    .end local v27    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v28    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_3
    move-exception v9

    .line 380
    .local v9, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_9
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_5

    .line 381
    .end local v9    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_4
    move-exception v9

    .line 382
    .local v9, "e1":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 383
    .end local v9    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v8

    .line 384
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5
.end method

.method private static checkCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "existingContAllowCat"    # Ljava/lang/String;
    .param p1, "newCat"    # Ljava/lang/String;

    .prologue
    .line 939
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "allowCats":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v1, v2

    .line 941
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 942
    const/4 v5, 0x1

    .line 945
    .end local v3    # "item":Ljava/lang/String;
    :goto_1
    return v5

    .line 940
    .restart local v3    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 945
    .end local v3    # "item":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static checkCategoryRange(Ljava/lang/String;III)I
    .locals 10
    .param p0, "existingContAllowCat"    # Ljava/lang/String;
    .param p1, "startRange"    # I
    .param p2, "endRange"    # I
    .param p3, "appType"    # I

    .prologue
    .line 956
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "allowCats":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v4, v1, v3

    .line 959
    .local v4, "item":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, p1, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-gt v6, p2, :cond_1

    .line 960
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x6a

    if-ne v6, v7, :cond_2

    const/4 v6, 0x2

    if-eq p3, v6, :cond_0

    const/4 v6, 0x4

    if-ne p3, v6, :cond_2

    .line 961
    :cond_0
    sget-object v6, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMSContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found category:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "in contAllowCat:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", but appType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 964
    :cond_2
    sget-object v6, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMSContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found category:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in contAllowCat:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    const/4 v6, 0x1

    .line 971
    .end local v3    # "i$":I
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "len$":I
    :goto_1
    return v6

    .line 968
    :catch_0
    move-exception v2

    .line 969
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    goto :goto_1

    .line 971
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;
    .locals 4
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cat"    # Ljava/lang/String;
    .param p3, "appType"    # I

    .prologue
    .line 881
    if-nez p0, :cond_1

    .line 885
    const/4 v1, 0x0

    .line 914
    :cond_0
    :goto_0
    return-object v1

    .line 887
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 888
    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 890
    .local v1, "returnElem":Lorg/w3c/dom/Element;
    if-nez p3, :cond_6

    .line 891
    :goto_1
    if-eqz v0, :cond_0

    .line 892
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "category"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 896
    :cond_3
    move-object v1, v0

    .line 897
    goto :goto_0

    .line 899
    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_1

    .line 911
    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .line 903
    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    :cond_6
    if-eqz v0, :cond_0

    .line 904
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "category"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 908
    move-object v1, v0

    .line 909
    goto/16 :goto_0
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 853
    if-nez p0, :cond_1

    .line 857
    const/4 v1, 0x0

    .line 873
    :cond_0
    :goto_0
    return-object v1

    .line 860
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 861
    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 863
    .local v1, "returnElem":Lorg/w3c/dom/Element;
    :goto_1
    if-eqz v0, :cond_0

    .line 864
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 868
    move-object v1, v0

    .line 869
    goto :goto_0

    .line 871
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_1
.end method

.method private static getContainerType(I)I
    .locals 2
    .param p0, "cat"    # I

    .prologue
    const/16 v1, 0xc7

    .line 840
    const/16 v0, 0x65

    if-le p0, v0, :cond_0

    if-gt p0, v1, :cond_0

    .line 841
    const/4 v0, 0x1

    .line 845
    :goto_0
    return v0

    .line 842
    :cond_0
    if-le p0, v1, :cond_1

    const/16 v0, 0x1f4

    if-gt p0, v0, :cond_1

    .line 843
    const/4 v0, 0x2

    goto :goto_0

    .line 845
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 494
    if-nez p0, :cond_1

    move-object v5, v6

    .line 512
    :cond_0
    :goto_0
    return-object v5

    .line 500
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 501
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 503
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v7, 0x40

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-interface {v3, p0, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 504
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 505
    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_0

    .line 507
    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 510
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 512
    goto :goto_0
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 104
    if-nez p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v1

    .line 104
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static declared-synchronized isContainerEmpty(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 22
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "agentPackageName"    # Ljava/lang/String;
    .param p2, "agentSignature"    # Ljava/lang/String;
    .param p3, "propertyValue"    # I

    .prologue
    .line 764
    const-class v19, Lcom/android/server/SEAMSContainer;

    monitor-enter v19

    const/4 v14, 0x0

    .line 765
    .local v14, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 767
    .local v7, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 768
    .local v5, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v6, 0x0

    .line 769
    .local v6, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 773
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 780
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->normalize()V

    .line 781
    const-string/jumbo v18, "policy"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 782
    .local v12, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 783
    .local v11, "policyElement":Lorg/w3c/dom/Element;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .line 784
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v18, "signer"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 785
    .local v16, "signer":Lorg/w3c/dom/NodeList;
    const/16 v17, 0x0

    .line 786
    .local v17, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    .line 793
    .local v13, "removeElem":Lorg/w3c/dom/Element;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 794
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .end local v17    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v17, Lorg/w3c/dom/Element;

    .line 795
    .restart local v17    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v18, "signature"

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 796
    const-string/jumbo v18, "service"

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 799
    .local v15, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 800
    :cond_0
    sget-object v18, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v20, "SEAMSContainer"

    const-string/jumbo v21, "service entry different than expected"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    const/16 v18, 0x0

    .line 836
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v15    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v16    # "signer":Lorg/w3c/dom/NodeList;
    .end local v17    # "signerElementCur":Lorg/w3c/dom/Element;
    :goto_0
    monitor-exit v19

    return v18

    .line 778
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :cond_1
    const/16 v18, -0x1

    goto :goto_0

    .line 803
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v15    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v17    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_2
    const/4 v4, 0x0

    .line 804
    .local v4, "currElem":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 805
    .local v3, "cnt":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    :try_start_2
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_4

    .line 806
    invoke-interface {v15, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .end local v4    # "currElem":Lorg/w3c/dom/Element;
    check-cast v4, Lorg/w3c/dom/Element;

    .line 810
    .restart local v4    # "currElem":Lorg/w3c/dom/Element;
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 814
    add-int/lit8 v3, v3, 0x1

    .line 805
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 817
    :cond_4
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v3, v0, :cond_5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_8

    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 818
    :cond_5
    const/16 v18, 0x1

    goto :goto_0

    .line 820
    .end local v3    # "cnt":I
    .end local v4    # "currElem":Lorg/w3c/dom/Element;
    .end local v10    # "i":I
    .end local v15    # "servicePackageList":Lorg/w3c/dom/NodeList;
    :cond_6
    sget-object v18, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v20, "SEAMSContainer"

    const-string v21, "Container has signature mis-match with agent"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const/16 v18, -0x1

    goto :goto_0

    .line 824
    :cond_7
    sget-object v18, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v20, "SEAMSContainer"

    const-string v21, "Container non-empty"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 825
    const/16 v18, 0x0

    goto :goto_0

    .line 827
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v16    # "signer":Lorg/w3c/dom/NodeList;
    .end local v17    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v9

    .line 828
    .local v9, "e1":Lorg/xml/sax/SAXException;
    :try_start_3
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 836
    .end local v9    # "e1":Lorg/xml/sax/SAXException;
    :cond_8
    :goto_2
    const/16 v18, -0x1

    goto :goto_0

    .line 829
    :catch_1
    move-exception v9

    .line 830
    .local v9, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 764
    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 831
    .restart local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_2
    move-exception v9

    .line 832
    .local v9, "e1":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 833
    .end local v9    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 834
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private static removeCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "existContainerAllowCat"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 980
    const/4 v5, 0x0

    .line 981
    .local v5, "returnCat":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 982
    .local v6, "srcCategories":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 983
    .local v4, "matchFound":Z
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 984
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 985
    const/4 v4, 0x1

    .line 983
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 987
    :cond_0
    if-nez v5, :cond_1

    .line 988
    move-object v5, v2

    goto :goto_1

    .line 990
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 994
    .end local v2    # "item":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    .line 1000
    .end local v5    # "returnCat":Ljava/lang/String;
    :goto_2
    return-object v5

    .restart local v5    # "returnCat":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected static declared-synchronized removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 29
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cat"    # Ljava/lang/String;
    .param p4, "appType"    # I

    .prologue
    .line 615
    const-class v25, Lcom/android/server/SEAMSContainer;

    monitor-enter v25

    const/4 v11, 0x0

    .line 616
    .local v11, "isRemoveSuccess":Z
    const/16 v17, 0x0

    .line 619
    .local v17, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 621
    .local v7, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 622
    .local v5, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v6, 0x0

    .line 623
    .local v6, "doc":Lorg/w3c/dom/Document;
    const/4 v4, 0x0

    .line 625
    .local v4, "conType":I
    :try_start_2
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/android/server/SEAMSContainer;->getContainerType(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 630
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 634
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v24

    if-nez v24, :cond_0

    .line 635
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 636
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 643
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Element;->normalize()V

    .line 644
    const-string/jumbo v24, "policy"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 645
    .local v14, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .line 646
    .local v13, "policyElement":Lorg/w3c/dom/Element;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .end local v13    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v13, Lorg/w3c/dom/Element;

    .line 647
    .restart local v13    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v24, "signer"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 648
    .local v19, "signer":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .line 649
    .local v20, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v15, 0x0

    .line 656
    .local v15, "removeElem":Lorg/w3c/dom/Element;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_3

    .line 657
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .line 658
    .restart local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v24, "signature"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 662
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v4, v0, :cond_7

    const/16 v24, 0x3

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    if-nez p4, :cond_7

    .line 663
    :cond_1
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 670
    :goto_1
    if-eqz v15, :cond_a

    const/16 v24, 0x3

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    if-eqz p4, :cond_2

    const/16 v24, 0x1

    move/from16 v0, p4

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 671
    :cond_2
    const-string v24, "category"

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 675
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 676
    const/4 v11, 0x1

    .line 722
    :cond_3
    :goto_2
    if-eqz v11, :cond_10

    .line 723
    const-string/jumbo v24, "service"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 724
    .local v18, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-nez v24, :cond_4

    .line 725
    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 730
    :cond_4
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Element;->normalize()V

    .line 731
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v23

    .line 732
    .local v23, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v22

    .line 733
    .local v22, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v21, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 734
    .local v21, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v16, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 735
    .local v16, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 742
    .end local v16    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v18    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v22    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v23    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 743
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v4    # "conType":I
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "i":I
    .end local v13    # "policyElement":Lorg/w3c/dom/Element;
    .end local v14    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v15    # "removeElem":Lorg/w3c/dom/Element;
    .end local v19    # "signer":Lorg/w3c/dom/NodeList;
    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_5
    :goto_4
    move/from16 v24, v11

    .line 755
    :goto_5
    monitor-exit v25

    return v24

    .line 626
    .restart local v4    # "conType":I
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v8

    .line 627
    .local v8, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    sget-object v24, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v26, "SEAMSContainer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "category: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " integer parse failed"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/16 v24, 0x0

    goto :goto_5

    .line 641
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const/16 v24, 0x0

    goto :goto_5

    .line 665
    .restart local v10    # "i":I
    .restart local v13    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v14    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v15    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v19    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_7
    if-nez p4, :cond_8

    .line 666
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v15

    goto/16 :goto_1

    .line 668
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    goto/16 :goto_1

    .line 682
    :cond_9
    const/16 v24, 0x0

    goto :goto_5

    .line 684
    :cond_a
    if-eqz v15, :cond_e

    const/16 v24, 0x4

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    const/16 v24, 0x2

    move/from16 v0, p4

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 685
    :cond_b
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v4, v0, :cond_d

    const/16 v24, 0x4

    move/from16 v0, p4

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 686
    const-string v24, "containerallowcategory"

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 690
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 691
    const/4 v11, 0x1

    .line 692
    goto/16 :goto_2

    .line 697
    :cond_c
    const-string v24, "containerallowcategory"

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->removeCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 698
    .local v12, "newVal":Ljava/lang/String;
    if-eqz v12, :cond_f

    .line 699
    const-string v24, "containerallowcategory"

    move-object/from16 v0, v24

    invoke-interface {v15, v0, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const/4 v11, 0x1

    .line 701
    goto/16 :goto_2

    .line 704
    .end local v12    # "newVal":Ljava/lang/String;
    :cond_d
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v4, v0, :cond_f

    .line 708
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 709
    const/4 v11, 0x1

    .line 710
    goto/16 :goto_2

    .line 716
    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 656
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 740
    :cond_10
    sget-object v24, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v26, "SEAMSContainer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " removeEntryFromMac, No match for packageName:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ". Please check again"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 744
    .end local v4    # "conType":I
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "i":I
    .end local v13    # "policyElement":Lorg/w3c/dom/Element;
    .end local v14    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v15    # "removeElem":Lorg/w3c/dom/Element;
    .end local v19    # "signer":Lorg/w3c/dom/NodeList;
    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v9

    .line 745
    .local v9, "e1":Lorg/xml/sax/SAXException;
    :try_start_5
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 615
    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "e1":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v24

    monitor-exit v25

    throw v24

    .line 746
    .restart local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_2
    move-exception v9

    .line 747
    .local v9, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_4

    .line 748
    .end local v9    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v9

    .line 749
    .local v9, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_4

    .line 750
    .end local v9    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_4
    move-exception v9

    .line 751
    .local v9, "e1":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 752
    .end local v9    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v8

    .line 753
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4
.end method


# virtual methods
.method public activateDomain(I)I
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 115
    const/4 v0, -0x1

    return v0
.end method

.method public addAgentEntryAfterFotaAndReload()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, -0x1

    return v0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 120
    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 18
    .param p1, "contextFileName"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "seinfo"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "fileType"    # Ljava/lang/String;
    .param p7, "category"    # I

    .prologue
    .line 393
    monitor-enter p0

    const/4 v9, 0x0

    .line 394
    .local v9, "br":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 397
    .local v15, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v13, "inFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 402
    invoke-virtual {v13}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 406
    :cond_0
    new-instance v17, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v17, "tempFile":Ljava/io/File;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .end local v9    # "br":Ljava/io/BufferedReader;
    .local v10, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v16, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 410
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    const/4 v14, 0x0

    .local v14, "line":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 411
    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/SEAMSContainer;->getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, "addedLine":Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 417
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 445
    .end local v8    # "addedLine":Ljava/lang/String;
    :catch_0
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .line 446
    .end local v10    # "br":Ljava/io/BufferedReader;
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "tempFile":Ljava/io/File;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .local v12, "ex":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 447
    const/4 v1, -0x1

    .line 478
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    :goto_2
    monitor-exit p0

    return v1

    .line 421
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "tempFile":Ljava/io/File;
    :cond_1
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 422
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 423
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 430
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->flush()V

    .line 433
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 434
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 436
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_4

    .line 437
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v1, -0x1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 440
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 441
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, Could not rename file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 442
    const/4 v1, -0x1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 448
    .end local v8    # "addedLine":Ljava/lang/String;
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "tempFile":Ljava/io/File;
    :catch_1
    move-exception v12

    .line 449
    .local v12, "ex":Ljava/io/IOException;
    :goto_3
    :try_start_5
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Other Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 452
    if-eqz v9, :cond_5

    .line 453
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 454
    const/4 v9, 0x0

    .line 456
    :cond_5
    if-eqz v15, :cond_6

    .line 457
    invoke-virtual {v15}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 458
    const/4 v15, 0x0

    .line 463
    :cond_6
    :goto_4
    const/4 v1, -0x1

    goto/16 :goto_2

    .line 460
    :catch_2
    move-exception v11

    .line 461
    .local v11, "e":Ljava/io/IOException;
    :try_start_7
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 393
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :goto_5
    monitor-exit p0

    throw v1

    .line 467
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "tempFile":Ljava/io/File;
    :cond_7
    if-eqz v10, :cond_9

    .line 468
    :try_start_8
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 469
    const/4 v9, 0x0

    .line 471
    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    :goto_6
    if-eqz v16, :cond_8

    .line 472
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 473
    const/4 v15, 0x0

    .line 478
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    :goto_7
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 475
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_3
    move-exception v11

    move-object v9, v10

    .line 476
    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_a
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .end local v11    # "e":Ljava/io/IOException;
    :cond_8
    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    goto :goto_7

    .line 475
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_4
    move-exception v11

    goto :goto_8

    .line 448
    .end local v8    # "addedLine":Ljava/lang/String;
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    :catch_5
    move-exception v12

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_6
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 445
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "tempFile":Ljava/io/File;
    :catch_7
    move-exception v12

    goto/16 :goto_1

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v17    # "tempFile":Ljava/io/File;
    :catch_8
    move-exception v12

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 393
    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catchall_3
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    goto :goto_5

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_9
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method public createSEContainer(II)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 132
    const/4 v0, -0x1

    return v0
.end method

.method public deActivateDomain(I)I
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 124
    const/4 v0, -0x1

    return v0
.end method

.method public getActivationStatus()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method protected getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1008
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1009
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1010
    .local v2, "pid":I
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .line 1011
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    iget-object v5, p0, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    .line 1012
    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    if-nez v5, :cond_0

    move-object v0, v4

    .line 1031
    .end local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :goto_0
    return-object v0

    .line 1018
    .restart local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_0
    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/SEAMSContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1019
    .local v1, "mdmCerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move-object v0, v4

    .line 1023
    goto :goto_0

    .line 1025
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 1
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "category"    # I

    .prologue
    .line 483
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 921
    iget-object v3, p0, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 922
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 923
    .local v2, "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 924
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 925
    const/4 v3, 0x1

    .line 928
    :goto_1
    return v3

    .line 923
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 928
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public loadContainerSetting(Ljava/lang/String;IZ)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerID"    # I
    .param p3, "appNotInstalled"    # Z

    .prologue
    .line 171
    const/4 v0, -0x1

    .line 172
    .local v0, "ret":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    :cond_0
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "loadContainerSetting, packageName is null or empty"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 187
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 179
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_1
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/SEAMSContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 181
    iget-object v2, p0, Lcom/android/server/SEAMSContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    const/4 v0, 0x0

    :cond_2
    move v1, v0

    .line 187
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 191
    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 19
    .param p1, "contextFileName"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "seinfo"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "fileType"    # Ljava/lang/String;
    .param p7, "category"    # I

    .prologue
    .line 520
    monitor-enter p0

    const/4 v8, 0x0

    .line 521
    .local v8, "br":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 524
    .local v15, "pw":Ljava/io/PrintWriter;
    const/4 v10, 0x0

    .line 525
    .local v10, "count":I
    :try_start_0
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v13, "inFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Parameter is not an existing file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    const/4 v1, -0x1

    .line 599
    .end local v13    # "inFile":Ljava/io/File;
    :goto_0
    monitor-exit p0

    return v1

    .line 532
    .restart local v13    # "inFile":Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v18, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .local v18, "tempFile":Ljava/io/File;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    .end local v8    # "br":Ljava/io/BufferedReader;
    .local v9, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v16, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 537
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    const/4 v14, 0x0

    .local v14, "line":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 538
    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/SEAMSContainer;->getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 540
    .local v17, "removeLine":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 541
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 542
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 566
    .end local v17    # "removeLine":Ljava/lang/String;
    :catch_0
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .line 567
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "tempFile":Ljava/io/File;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    .local v12, "ex":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 568
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 545
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "removeLine":Ljava/lang/String;
    .restart local v18    # "tempFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 548
    :cond_2
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 549
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 550
    if-nez v10, :cond_4

    .line 551
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 552
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 588
    :cond_3
    if-eqz v9, :cond_9

    .line 589
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 590
    const/4 v8, 0x0

    .line 592
    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v16, :cond_8

    .line 593
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 594
    const/4 v15, 0x0

    .line 599
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 557
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_4
    :try_start_8
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_5

    .line 558
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v1, -0x1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 561
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 562
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not rename file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 563
    const/4 v1, -0x1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 569
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "removeLine":Ljava/lang/String;
    .end local v18    # "tempFile":Ljava/io/File;
    :catch_1
    move-exception v12

    .line 570
    .local v12, "ex":Ljava/io/IOException;
    :goto_5
    :try_start_9
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Other Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 573
    if-eqz v8, :cond_6

    .line 574
    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 575
    const/4 v8, 0x0

    .line 577
    :cond_6
    if-eqz v15, :cond_7

    .line 578
    invoke-virtual {v15}, Ljava/io/PrintWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 579
    const/4 v15, 0x0

    .line 584
    :cond_7
    :goto_6
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 581
    :catch_2
    move-exception v11

    .line 582
    .local v11, "e":Ljava/io/IOException;
    :try_start_b
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 520
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :goto_7
    monitor-exit p0

    throw v1

    .line 596
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "removeLine":Ljava/lang/String;
    .restart local v18    # "tempFile":Ljava/io/File;
    :catch_3
    move-exception v11

    move-object v8, v9

    .line 597
    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_c
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .end local v11    # "e":Ljava/io/IOException;
    :cond_8
    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_4

    .line 596
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_4
    move-exception v11

    goto :goto_8

    .line 569
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .end local v17    # "removeLine":Ljava/lang/String;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    :catch_5
    move-exception v12

    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_6
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 566
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "tempFile":Ljava/io/File;
    :catch_7
    move-exception v12

    goto/16 :goto_2

    .end local v8    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v18    # "tempFile":Ljava/io/File;
    :catch_8
    move-exception v12

    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 520
    .end local v8    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v1

    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "removeLine":Ljava/lang/String;
    :catchall_3
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    goto :goto_7

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_9
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public removeSEContainer(III)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "containerID"    # I

    .prologue
    .line 136
    const/4 v0, -0x1

    return v0
.end method

.method public restartApp(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, -0x1

    return v0
.end method

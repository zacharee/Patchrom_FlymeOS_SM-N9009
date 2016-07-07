.class public Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
.super Ljava/lang/Object;
.source "SmartClipDataRepositoryImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/smartclip/SmartClipDataRepository;


# static fields
.field public static final CONTENT_TYPE_AUDIO:Ljava/lang/String; = "music"

.field public static final CONTENT_TYPE_DEFAULT:Ljava/lang/String; = "image"

.field public static final CONTENT_TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final CONTENT_TYPE_NAMECARD:Ljava/lang/String; = "namecard"

.field public static final CONTENT_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final CONTENT_TYPE_WEB:Ljava/lang/String; = "web"

.field public static final CONTENT_TYPE_YOUTUBE:Ljava/lang/String; = "youtube"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field protected static final FIELD_CAPTURED_IMAGE_PATH:Ljava/lang/String; = "captured_image_path"

.field protected static final FIELD_CAPTURED_IMAGE_STYLE:Ljava/lang/String; = "captured_image_style"

.field protected static final FIELD_CONTENT_RECT:Ljava/lang/String; = "content_rect"

.field protected static final FIELD_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field protected static final FIELD_META_TAGS:Ljava/lang/String; = "meta_tags"

.field protected static final FIELD_META_TAG_EXTRA_DATA:Ljava/lang/String; = "meta_tag_extra_value"

.field protected static final FIELD_META_TAG_TYPE:Ljava/lang/String; = "meta_tag_type"

.field protected static final FIELD_META_TAG_VALUE:Ljava/lang/String; = "meta_tag_value"

.field protected static final FIELD_REPOSITORY_ID:Ljava/lang/String; = "repository_id"

.field public static final IMAGE_STYLE_LASSO:I = 0x0

.field public static final IMAGE_STYLE_PIN_MODE:I = 0x3

.field public static final IMAGE_STYLE_RECTANGLE:I = 0x1

.field public static final IMAGE_STYLE_SEGMENTATION:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "SmartClipDataRepositoryImpl"


# instance fields
.field protected mAppPackageName:Ljava/lang/String;

.field protected mCapturedImageFilePath:Ljava/lang/String;

.field protected mCapturedImageFileStyle:I

.field protected mContentRect:Landroid/graphics/Rect;

.field protected mContentType:Ljava/lang/String;

.field protected mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

.field private mPenWindowBorder:I

.field protected mRepositoryId:Ljava/lang/String;

.field protected mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

.field private mScaleRect:Landroid/graphics/RectF;

.field protected mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field protected mTargetWindowLayer:I

.field private mWinFrameRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 682
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;)V
    .locals 4
    .param p1, "cropper"    # Lcom/samsung/android/smartclip/SmartClipDataCropper;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "cropper"    # Lcom/samsung/android/smartclip/SmartClipDataCropper;
    .param p2, "winFrameRect"    # Landroid/graphics/Rect;
    .param p3, "scaleRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V
    .locals 2
    .param p1, "cropper"    # Lcom/samsung/android/smartclip/SmartClipDataCropper;
    .param p2, "winFrameRect"    # Landroid/graphics/Rect;
    .param p3, "scaleRect"    # Landroid/graphics/RectF;
    .param p4, "penWindowBorderWidth"    # I

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipDataRootElement;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 101
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 107
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 110
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

    .line 113
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    .line 119
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    .line 127
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 128
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mPenWindowBorder:I

    .line 151
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 153
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 154
    iput p4, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mPenWindowBorder:I

    .line 155
    return-void
.end method

.method public static createRepositoryFromString(Ljava/lang/String;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 22
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 705
    new-instance v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;)V

    .line 708
    .local v13, "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 711
    .local v9, "json_repository":Lorg/json/JSONObject;
    const-string v17, "content_type"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 712
    const-string v17, "content_type"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 716
    :cond_0
    const-string/jumbo v17, "repository_id"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 717
    const-string/jumbo v17, "repository_id"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRepositoryId:Ljava/lang/String;

    .line 721
    :cond_1
    const-string v17, "content_rect"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 722
    const-string v17, "content_rect"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 723
    .local v8, "json_rect":Lorg/json/JSONArray;
    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v21

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 727
    .end local v8    # "json_rect":Lorg/json/JSONArray;
    :cond_2
    const-string v17, "captured_image_path"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 728
    const-string v17, "captured_image_path"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "capturedImageFilePath":Ljava/lang/String;
    const-string v17, "captured_image_style"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 730
    .local v3, "capturedImageFileStyle":I
    if-eqz v2, :cond_3

    .line 731
    invoke-virtual {v13, v2, v3}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->setCapturedImage(Ljava/lang/String;I)V

    .line 736
    .end local v2    # "capturedImageFilePath":Ljava/lang/String;
    .end local v3    # "capturedImageFileStyle":I
    :cond_3
    const-string v17, "meta_tags"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 737
    new-instance v17, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 739
    const-string v17, "meta_tags"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 740
    .local v11, "json_tagArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 741
    .local v14, "tagCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v14, :cond_4

    .line 742
    const/4 v12, 0x0

    .line 743
    .local v12, "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 745
    .local v10, "json_tag":Lorg/json/JSONObject;
    const-string v17, "meta_tag_type"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 746
    .local v15, "tagType":Ljava/lang/String;
    const-string v16, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 749
    .local v16, "tagValue":Ljava/lang/String;
    :try_start_1
    const-string v17, "meta_tag_value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 755
    :goto_1
    :try_start_2
    const-string v17, "meta_tag_extra_value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 756
    .local v6, "extraDataStr":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 758
    .local v5, "extraData":[B
    const-string v17, "SmartClipDataRepositoryImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Decoding : Length of extra data = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v5

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v12, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    .end local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0, v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 765
    .end local v5    # "extraData":[B
    .end local v6    # "extraDataStr":Ljava/lang/String;
    .restart local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :goto_2
    :try_start_3
    iget-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 741
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 750
    :catch_0
    move-exception v4

    .line 751
    .local v4, "e":Lorg/json/JSONException;
    const-string v17, "SmartClipDataRepositoryImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "There is no meta value! type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 769
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v7    # "i":I
    .end local v9    # "json_repository":Lorg/json/JSONObject;
    .end local v10    # "json_tag":Lorg/json/JSONObject;
    .end local v11    # "json_tagArray":Lorg/json/JSONArray;
    .end local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v14    # "tagCount":I
    .end local v15    # "tagType":Ljava/lang/String;
    .end local v16    # "tagValue":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 770
    .restart local v4    # "e":Lorg/json/JSONException;
    const-string v17, "SmartClipDataRepositoryImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "JSONException throwed : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 772
    const/4 v13, 0x0

    .line 775
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v13    # "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :cond_4
    return-object v13

    .line 762
    .restart local v7    # "i":I
    .restart local v9    # "json_repository":Lorg/json/JSONObject;
    .restart local v10    # "json_tag":Lorg/json/JSONObject;
    .restart local v11    # "json_tagArray":Lorg/json/JSONArray;
    .restart local v13    # "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .restart local v14    # "tagCount":I
    .restart local v15    # "tagType":Ljava/lang/String;
    .restart local v16    # "tagValue":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 763
    .restart local v4    # "e":Lorg/json/JSONException;
    :try_start_4
    new-instance v12, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .restart local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public determineContentType()Z
    .locals 15

    .prologue
    .line 229
    const/4 v6, 0x0

    .line 230
    .local v6, "contentType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 231
    .local v1, "bHaveBrowserView":Z
    const/4 v5, 0x0

    .line 232
    .local v5, "bHaveYoutubeView":Z
    const/4 v0, 0x0

    .line 233
    .local v0, "bHaveAudioFilePath":Z
    const/4 v4, 0x0

    .line 234
    .local v4, "bHaveVideoFilePath":Z
    const/4 v2, 0x0

    .line 235
    .local v2, "bHaveImageFilePath":Z
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 237
    .local v7, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v7, :cond_9

    .line 238
    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v12

    .line 240
    .local v12, "view":Landroid/view/View;
    if-eqz v12, :cond_7

    .line 241
    const/4 v3, 0x0

    .line 242
    .local v3, "bHaveUrlTag":Z
    const-string/jumbo v13, "url"

    invoke-virtual {p0, v13}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v11

    .line 243
    .local v11, "urlMetaArray":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    invoke-virtual {v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 244
    .local v10, "urlMeta":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v10}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "url":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 246
    const/4 v3, 0x1

    .line 251
    .end local v9    # "url":Ljava/lang/String;
    .end local v10    # "urlMeta":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_1
    const-string v13, "file_path_audio"

    invoke-virtual {p0, v13}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 252
    const/4 v0, 0x1

    .line 255
    :cond_2
    const-string v13, "file_path_video"

    invoke-virtual {p0, v13}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 256
    const/4 v4, 0x1

    .line 259
    :cond_3
    const-string v13, "file_path_image"

    invoke-virtual {p0, v13}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 260
    const/4 v2, 0x1

    .line 263
    :cond_4
    const/4 v13, 0x1

    if-ne v3, v13, :cond_6

    .line 264
    instance-of v13, v12, Landroid/webkit/WebView;

    if-nez v13, :cond_5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.webkitsec.WebView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "org.chromium.content.browser.ChromeView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "org.samsung.content.sbrowser.SbrContentView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.sec.chromium.content.browser.SbrContentView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "org.chromium.content.browser.JellyBeanContentView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 270
    :cond_5
    const/4 v1, 0x1

    .line 279
    :cond_6
    :goto_1
    const-string v13, "html"

    invoke-virtual {p0, v13}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 280
    const/4 v1, 0x1

    .line 285
    .end local v3    # "bHaveUrlTag":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "urlMetaArray":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    :cond_7
    iget-object v13, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v7, v13}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    .line 286
    goto/16 :goto_0

    .line 271
    .restart local v3    # "bHaveUrlTag":Z
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "urlMetaArray":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    :cond_8
    iget-object v13, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    if-eqz v13, :cond_6

    iget-object v13, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    const-string v14, "com.google.android.youtube"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "PlayerView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 273
    const/4 v5, 0x1

    goto :goto_1

    .line 288
    .end local v3    # "bHaveUrlTag":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "urlMetaArray":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .end local v12    # "view":Landroid/view/View;
    :cond_9
    const/4 v13, 0x1

    if-ne v0, v13, :cond_a

    .line 289
    const-string v6, "music"

    .line 302
    :goto_2
    iput-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 304
    const/4 v13, 0x1

    return v13

    .line 290
    :cond_a
    const/4 v13, 0x1

    if-ne v4, v13, :cond_b

    .line 291
    const-string/jumbo v6, "video"

    goto :goto_2

    .line 292
    :cond_b
    const/4 v13, 0x1

    if-ne v2, v13, :cond_c

    .line 293
    const-string v6, "image"

    goto :goto_2

    .line 294
    :cond_c
    const/4 v13, 0x1

    if-ne v5, v13, :cond_d

    .line 295
    const-string/jumbo v6, "youtube"

    goto :goto_2

    .line 296
    :cond_d
    const/4 v13, 0x1

    if-ne v1, v13, :cond_e

    .line 297
    const-string/jumbo v6, "web"

    goto :goto_2

    .line 299
    :cond_e
    const-string v6, "image"

    goto :goto_2
.end method

.method public dump(Z)Z
    .locals 4
    .param p1, "dumpMetaTags"    # Z

    .prologue
    const/4 v3, 0x1

    .line 584
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "----- Start of SmartClip repository informations -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string v0, "SmartClipDataRepositoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v0, "SmartClipDataRepositoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Meta area rect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v0, "SmartClipDataRepositoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Captured image file path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-ne p1, v3, :cond_0

    .line 593
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "** mTags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->dump()V

    .line 601
    :goto_0
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "** Element tree **"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataRootElement;->dump()Z

    .line 607
    :cond_0
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "----- End of SmartClip repository informations -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return v3

    .line 597
    :cond_1
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "mTags is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public encodeRepositoryToString()Ljava/lang/String;
    .locals 17

    .prologue
    .line 786
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 789
    .local v10, "json_repository":Lorg/json/JSONObject;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentType()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 790
    const-string v14, "content_type"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getRepositoryId()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 795
    const-string/jumbo v14, "repository_id"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getRepositoryId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 800
    .local v3, "contentRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_2

    .line 801
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 803
    .local v9, "json_rect":Lorg/json/JSONArray;
    const/4 v14, 0x0

    iget v15, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 804
    const/4 v14, 0x1

    iget v15, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 805
    const/4 v14, 0x2

    iget v15, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 806
    const/4 v14, 0x3

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 808
    const-string v14, "content_rect"

    invoke-virtual {v10, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    .end local v9    # "json_rect":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getCapturedImageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "capturedImageFilePath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getCapturedImageFileStyle()I

    move-result v2

    .line 814
    .local v2, "capturedImageFileStyle":I
    if-eqz v1, :cond_3

    .line 815
    const-string v14, "captured_image_path"

    invoke-virtual {v10, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 816
    const-string v14, "captured_image_style"

    invoke-virtual {v10, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 820
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v13

    .line 821
    .local v13, "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v13, :cond_7

    .line 822
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 824
    .local v12, "json_tagArray":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 825
    .local v4, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    if-eqz v4, :cond_4

    .line 826
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 827
    .local v11, "json_tag":Lorg/json/JSONObject;
    const-string v14, "meta_tag_type"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    const-string v14, "meta_tag_value"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 829
    instance-of v14, v4, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    if-eqz v14, :cond_5

    .line 830
    move-object v0, v4

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    move-object v5, v0

    .line 831
    .local v5, "curTagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v14

    if-eqz v14, :cond_5

    .line 832
    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v7

    .line 833
    .local v7, "extraData":[B
    const-string v14, "SmartClipDataRepositoryImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Encoding : Length of extra data = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-string v14, "meta_tag_extra_value"

    const/4 v15, 0x0

    invoke-static {v7, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 837
    .end local v5    # "curTagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    .end local v7    # "extraData":[B
    :cond_5
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 847
    .end local v1    # "capturedImageFilePath":Ljava/lang/String;
    .end local v2    # "capturedImageFileStyle":I
    .end local v3    # "contentRect":Landroid/graphics/Rect;
    .end local v4    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "json_repository":Lorg/json/JSONObject;
    .end local v11    # "json_tag":Lorg/json/JSONObject;
    .end local v12    # "json_tagArray":Lorg/json/JSONArray;
    .end local v13    # "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    :catch_0
    move-exception v6

    .line 848
    .local v6, "e":Lorg/json/JSONException;
    const-string v14, "SmartClipDataRepositoryImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "JSONException throwed : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 850
    const-string v14, ""

    .end local v6    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v14

    .line 841
    .restart local v1    # "capturedImageFilePath":Ljava/lang/String;
    .restart local v2    # "capturedImageFileStyle":I
    .restart local v3    # "contentRect":Landroid/graphics/Rect;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "json_repository":Lorg/json/JSONObject;
    .restart local v12    # "json_tagArray":Lorg/json/JSONArray;
    .restart local v13    # "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    :cond_6
    :try_start_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 842
    const-string v14, "meta_tags"

    invoke-virtual {v10, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 846
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "json_tagArray":Lorg/json/JSONArray;
    :cond_7
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto :goto_1
.end method

.method public extractMetaTagFromString(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcString"    # Ljava/lang/String;

    .prologue
    .line 580
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllMetaTag()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 1

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    .line 522
    .local v0, "arrayList":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    return-object v0
.end method

.method public getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    .locals 9

    .prologue
    .line 479
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v7, :cond_1

    .line 480
    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 508
    :cond_0
    :goto_0
    return-object v3

    .line 482
    :cond_1
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 484
    .local v3, "metaList":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 486
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v1, :cond_4

    .line 487
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 488
    .local v6, "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v6, :cond_3

    .line 489
    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v5

    .line 490
    .local v5, "tagCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_3

    .line 491
    invoke-virtual {v6, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 493
    .local v0, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "plain_text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 494
    invoke-virtual {v3, v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 499
    .end local v0    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v2    # "i":I
    .end local v5    # "tagCount":I
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    .line 500
    goto :goto_1

    .line 503
    .end local v6    # "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMergedPlainTextTag()Ljava/lang/String;

    move-result-object v4

    .line 504
    .local v4, "plainText":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 505
    new-instance v7, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string/jumbo v8, "plain_text"

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedImageFileStyle()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    return v0
.end method

.method public getContentRect()Landroid/graphics/Rect;
    .locals 12

    .prologue
    const v11, 0x1869f

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 388
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_1

    .line 389
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 470
    :cond_0
    :goto_0
    return-object v2

    .line 391
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 392
    .local v4, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11, v11, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 394
    .local v2, "contentRect":Landroid/graphics/Rect;
    :goto_1
    if-eqz v4, :cond_b

    .line 395
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getChildCount()I

    move-result v6

    if-eq v6, v10, :cond_a

    .line 396
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getChildCount()I

    move-result v6

    if-le v6, v10, :cond_6

    .line 397
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 398
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_2
    if-eqz v0, :cond_a

    .line 400
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 401
    .local v5, "rect":Landroid/graphics/Rect;
    if-eqz v5, :cond_5

    .line 402
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_2

    .line 403
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 405
    :cond_2
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_3

    .line 406
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 408
    :cond_3
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_4

    .line 409
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 411
    :cond_4
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_5

    .line 412
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 416
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 417
    goto :goto_2

    .line 419
    .end local v0    # "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_6
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 420
    .restart local v5    # "rect":Landroid/graphics/Rect;
    if-eqz v5, :cond_a

    .line 421
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_7

    .line 422
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 424
    :cond_7
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_8

    .line 425
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 427
    :cond_8
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_9

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_9

    .line 428
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 430
    :cond_9
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_a

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_a

    .line 431
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 437
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v4, v6}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v4

    goto/16 :goto_1

    .line 440
    :cond_b
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_c

    .line 441
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "contentRect":Landroid/graphics/Rect;
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto/16 :goto_0

    .line 444
    .restart local v2    # "contentRect":Landroid/graphics/Rect;
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v6, v6, v8

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_0

    .line 446
    :cond_d
    iget v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mPenWindowBorder:I

    if-lez v6, :cond_11

    .line 447
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mPenWindowBorder:I

    if-ge v6, v7, :cond_e

    .line 448
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mPenWindowBorder:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 450
    :cond_e
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mPenWindowBorder:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_f

    .line 451
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mPenWindowBorder:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 453
    :cond_f
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mPenWindowBorder:I

    if-ge v6, v7, :cond_10

    .line 454
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mPenWindowBorder:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 456
    :cond_10
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mPenWindowBorder:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_11

    .line 457
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mPenWindowBorder:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 461
    :cond_11
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 462
    .local v3, "contentWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 464
    .local v1, "contentHeight":I
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 465
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 466
    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v3

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 467
    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v1

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getMergedPlainTextTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    if-nez v1, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 378
    :goto_0
    return-object v0

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataRootElement;->collectPlainTextTag()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "mergedText":Ljava/lang/String;
    goto :goto_0
.end method

.method public getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 9
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 535
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 537
    .local v3, "metaList":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v7, :cond_1

    .line 538
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v5

    .line 539
    .local v5, "tagCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 540
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_0

    .line 541
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    .end local v2    # "i":I
    .end local v5    # "tagCount":I
    :cond_1
    const-string/jumbo v7, "plain_text"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_3

    .line 547
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMergedPlainTextTag()Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, "plainText":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 549
    new-instance v7, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string/jumbo v8, "plain_text"

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v4    # "plainText":Ljava/lang/String;
    :cond_2
    return-object v3

    .line 552
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 554
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v1, :cond_2

    .line 555
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 557
    .local v6, "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v6, :cond_5

    .line 558
    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v5

    .line 559
    .restart local v5    # "tagCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v5, :cond_5

    .line 560
    invoke-virtual {v6, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 562
    .local v0, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_4

    .line 563
    invoke-virtual {v3, v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 568
    .end local v0    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v2    # "i":I
    .end local v5    # "tagCount":I
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    .line 569
    goto :goto_1
.end method

.method public getRepositoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRepositoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootElement()Lcom/samsung/android/smartclip/SmartClipDataRootElement;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    return-object v0
.end method

.method public getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

    return-object v0
.end method

.method public getWindowLayer()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRepositoryId:Ljava/lang/String;

    .line 661
    const-class v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    .line 676
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 677
    .local v0, "listArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    const-class v1, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "listArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 678
    .restart local v0    # "listArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 679
    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "capturedImageFilePath"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    .line 202
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    .line 203
    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "capturedImageFilePath"    # Ljava/lang/String;
    .param p2, "imageStyle"    # I

    .prologue
    .line 212
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    .line 213
    iput p2, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    .line 214
    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "capturedImageFilePath"    # Ljava/lang/String;
    .param p2, "capturedImageBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->setCapturedImage(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setRepositoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "repositoryId"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRepositoryId:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setWindowLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    .line 366
    iput p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    .line 367
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 623
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->determineContentType()Z

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRepositoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 633
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 636
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 639
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 645
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 649
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 650
    return-void
.end method

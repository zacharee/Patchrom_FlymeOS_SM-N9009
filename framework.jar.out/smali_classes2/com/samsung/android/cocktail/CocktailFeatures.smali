.class public Lcom/samsung/android/cocktail/CocktailFeatures;
.super Ljava/lang/Object;
.source "CocktailFeatures.java"


# static fields
.field public static final COCKTAIL_ENABLED:Z = false

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_OVERLAY_BAR:I = 0x0

.field public static final TYPE_SYSTEM_BAR:I = 0x1

.field private static sCocktailBarType:I

.field private static sQueriedTypeCocktail:Z

.field private static sSupportCocktail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/samsung/android/cocktail/CocktailFeatures;->sQueriedTypeCocktail:Z

    .line 42
    sput-boolean v0, Lcom/samsung/android/cocktail/CocktailFeatures;->sSupportCocktail:Z

    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/cocktail/CocktailFeatures;->sCocktailBarType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCocktailFeature(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-boolean v1, Lcom/samsung/android/cocktail/CocktailFeatures;->sQueriedTypeCocktail:Z

    if-nez v1, :cond_1

    .line 48
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/cocktail/CocktailFeatures;->sQueriedTypeCocktail:Z

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 55
    :cond_0
    if-eqz v0, :cond_2

    .line 56
    :try_start_0
    const-string v1, "com.sec.feature.cocktailbar"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cocktail/CocktailFeatures;->sSupportCocktail:Z

    .line 64
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 59
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system/etc/permissions/com.sec.feature.cocktailbar.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cocktail/CocktailFeatures;->sSupportCocktail:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isSupportCocktail(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/samsung/android/cocktail/CocktailFeatures;->checkCocktailFeature(Landroid/content/Context;)V

    .line 74
    sget-boolean v0, Lcom/samsung/android/cocktail/CocktailFeatures;->sSupportCocktail:Z

    return v0
.end method

.method public static isSupportEmmersiveMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public static isSystemBarType(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 90
    sget v1, Lcom/samsung/android/cocktail/CocktailFeatures;->sCocktailBarType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

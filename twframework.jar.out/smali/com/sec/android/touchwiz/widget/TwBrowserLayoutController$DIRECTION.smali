.class final enum Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;
.super Ljava/lang/Enum;
.source "TwBrowserLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DIRECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

.field public static final enum DIRECTION_LEFT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

.field public static final enum DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

.field public static final enum DIRECTION_RIGHT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    const-string v1, "DIRECTION_NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    .line 77
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    const-string v1, "DIRECTION_RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_RIGHT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    .line 78
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    const-string v1, "DIRECTION_LEFT"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_LEFT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_RIGHT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_LEFT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    invoke-virtual {v0}, [Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    return-object v0
.end method

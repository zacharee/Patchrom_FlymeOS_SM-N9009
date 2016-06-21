.class final enum Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
.super Ljava/lang/Enum;
.source "WifiP2pTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BoosterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

.field public static final enum BTCoexMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

.field public static final enum FullMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    const-string v1, "FullMode"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->FullMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    const-string v1, "BTCoexMode"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->BTCoexMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->FullMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->BTCoexMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->$VALUES:[Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->$VALUES:[Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual {v0}, [Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    return-object v0
.end method

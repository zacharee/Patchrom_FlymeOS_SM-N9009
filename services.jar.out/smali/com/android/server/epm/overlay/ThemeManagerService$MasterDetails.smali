.class Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MasterDetails"
.end annotation


# instance fields
.field mCategory:Ljava/lang/String;

.field mDesc:Ljava/lang/String;

.field mStatus:Z

.field mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "status"    # Z

    .prologue
    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    .line 947
    iput-object p2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mDesc:Ljava/lang/String;

    .line 948
    iput-object p3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mCategory:Ljava/lang/String;

    .line 949
    iput-boolean p4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mStatus:Z

    .line 950
    return-void
.end method

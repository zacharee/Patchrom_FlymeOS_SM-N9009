.class public Lcom/sec/android/touchwiz/app/BadgeNotification;
.super Ljava/lang/Object;
.source "BadgeNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.badge"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://com.sec.badge/"

.field private static final DEBUGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "BadgeNotification"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

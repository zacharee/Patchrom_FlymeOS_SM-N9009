.class public interface abstract Lcom/gsma/services/nfc/IOffHostService;
.super Ljava/lang/Object;
.source "IOffHostService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/IOffHostService$Stub;
    }
.end annotation


# virtual methods
.method public abstract commit(Lcom/gsma/services/nfc/OffHostService;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

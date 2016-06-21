.class public interface abstract Lcom/gsma/services/nfc/INfcControllerCallbacks;
.super Ljava/lang/Object;
.source "INfcControllerCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCardEmulationMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEnableNfcController(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Lcom/gsma/services/nfc/ISEControllerCallbacks;
.super Ljava/lang/Object;
.source "ISEControllerCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/ISEControllerCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetDefaultController(Lcom/gsma/services/nfc/SEController;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

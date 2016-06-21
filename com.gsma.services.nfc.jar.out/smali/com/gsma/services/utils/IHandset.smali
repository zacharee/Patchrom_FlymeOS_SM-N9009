.class public interface abstract Lcom/gsma/services/utils/IHandset;
.super Ljava/lang/Object;
.source "IHandset.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/utils/IHandset$Stub;
    }
.end annotation


# virtual methods
.method public abstract enableMultiEvt_transactionReception()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getProperty(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

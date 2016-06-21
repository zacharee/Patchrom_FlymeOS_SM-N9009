.class public abstract Lcom/gsma/services/nfc/INfcController$Stub;
.super Landroid/os/Binder;
.source "INfcController.java"

# interfaces
.implements Lcom/gsma/services/nfc/INfcController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/nfc/INfcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/INfcController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.nfc.INfcController"

.field static final TRANSACTION_defineOffHostService:I = 0x6

.field static final TRANSACTION_deleteOffHostService:I = 0x7

.field static final TRANSACTION_disableCardEmulationMode:I = 0x5

.field static final TRANSACTION_enableCardEmulationMode:I = 0x4

.field static final TRANSACTION_enableNfcController:I = 0x2

.field static final TRANSACTION_getDefaultOffHostService:I = 0x9

.field static final TRANSACTION_getOffHostServices:I = 0x8

.field static final TRANSACTION_isCardEmulationEnabled:I = 0x3

.field static final TRANSACTION_isEnabled:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.gsma.services.nfc.INfcController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/nfc/INfcController;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/gsma/services/nfc/INfcController;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/gsma/services/nfc/INfcController$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/gsma/services/nfc/INfcController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 44
    :sswitch_0
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v7, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/gsma/services/nfc/INfcController$Stub;->isEnabled()Z

    move-result v4

    .line 51
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->enableNfcController(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I

    move-result v4

    .line 61
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lcom/gsma/services/nfc/INfcControllerCallbacks;
    .end local v4    # "_result":I
    :sswitch_3
    const-string v7, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/gsma/services/nfc/INfcController$Stub;->isCardEmulationEnabled()Z

    move-result v4

    .line 69
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    move-result-object v0

    .line 78
    .restart local v0    # "_arg0":Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->enableCardEmulationMode(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I

    move-result v4

    .line 79
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":Lcom/gsma/services/nfc/INfcControllerCallbacks;
    .end local v4    # "_result":I
    :sswitch_5
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    move-result-object v0

    .line 88
    .restart local v0    # "_arg0":Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->disableCardEmulationMode(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I

    move-result v4

    .line 89
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":Lcom/gsma/services/nfc/INfcControllerCallbacks;
    .end local v4    # "_result":I
    :sswitch_6
    const-string v7, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gsma/services/nfc/INfcController$Stub;->defineOffHostService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;

    move-result-object v4

    .line 105
    .local v4, "_result":Lcom/gsma/services/nfc/OffHostService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v4, :cond_2

    .line 107
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {v4, p3, v6}, Lcom/gsma/services/nfc/OffHostService;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 111
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Lcom/gsma/services/nfc/OffHostService;
    :sswitch_7
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    sget-object v5, Lcom/gsma/services/nfc/OffHostService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/nfc/OffHostService;

    .line 127
    .local v1, "_arg1":Lcom/gsma/services/nfc/OffHostService;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/gsma/services/nfc/INfcController$Stub;->deleteOffHostService(Ljava/lang/String;Lcom/gsma/services/nfc/OffHostService;)I

    move-result v4

    .line 128
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    .end local v1    # "_arg1":Lcom/gsma/services/nfc/OffHostService;
    .end local v4    # "_result":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/gsma/services/nfc/OffHostService;
    goto :goto_1

    .line 134
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/gsma/services/nfc/OffHostService;
    :sswitch_8
    const-string v5, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->getOffHostServices(Ljava/lang/String;)[Lcom/gsma/services/nfc/OffHostService;

    move-result-object v4

    .line 138
    .local v4, "_result":[Lcom/gsma/services/nfc/OffHostService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 144
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[Lcom/gsma/services/nfc/OffHostService;
    :sswitch_9
    const-string v7, "com.gsma.services.nfc.INfcController"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/INfcController$Stub;->getDefaultOffHostService(Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;

    move-result-object v4

    .line 148
    .local v4, "_result":Lcom/gsma/services/nfc/OffHostService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v4, :cond_4

    .line 150
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v4, p3, v6}, Lcom/gsma/services/nfc/OffHostService;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 154
    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

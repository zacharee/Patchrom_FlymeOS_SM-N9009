.class public abstract Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub;
.super Landroid/os/Binder;
.source "IMotionRecognitionCallback.java"

# interfaces
.implements Lcom/samsung/android/motion/IMotionRecognitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/motion/IMotionRecognitionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.motion.IMotionRecognitionCallback"

.field static final TRANSACTION_getListenerInfo:I = 0x2

.field static final TRANSACTION_getListenerPackageName:I = 0x3

.field static final TRANSACTION_motionCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.motion.IMotionRecognitionCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/motion/IMotionRecognitionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.samsung.android.motion.IMotionRecognitionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/motion/IMotionRecognitionCallback;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/motion/IMotionRecognitionCallback;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v3, "com.samsung.android.motion.IMotionRecognitionCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "com.samsung.android.motion.IMotionRecognitionCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    sget-object v3, Lcom/samsung/android/motion/MREvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/motion/MREvent;

    .line 56
    .local v0, "_arg0":Lcom/samsung/android/motion/MREvent;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub;->motionCallback(Lcom/samsung/android/motion/MREvent;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    .end local v0    # "_arg0":Lcom/samsung/android/motion/MREvent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/motion/MREvent;
    goto :goto_1

    .line 62
    .end local v0    # "_arg0":Lcom/samsung/android/motion/MREvent;
    :sswitch_2
    const-string v3, "com.samsung.android.motion.IMotionRecognitionCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub;->getListenerInfo()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.samsung.android.motion.IMotionRecognitionCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub;->getListenerPackageName()Ljava/lang/String;

    move-result-object v1

    .line 72
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

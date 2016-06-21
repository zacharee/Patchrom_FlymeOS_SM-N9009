.class public Landroid/hardware/scontext/SContextAttribute;
.super Ljava/lang/Object;
.source "SContextAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityLocationLogging:Landroid/os/Bundle;

.field private mActivityNotification:Landroid/os/Bundle;

.field private mActivityNotificationEx:Landroid/os/Bundle;

.field private mAutoBrightness:Landroid/os/Bundle;

.field private mAutoRotation:Landroid/os/Bundle;

.field private mEnvironment:Landroid/os/Bundle;

.field private mExercise:Landroid/os/Bundle;

.field private mFlatMotionForTableMode:Landroid/os/Bundle;

.field private mInactiveTimer:Landroid/os/Bundle;

.field private mMovementForPositioning:Landroid/os/Bundle;

.field private mPedometer:Landroid/os/Bundle;

.field private mShakeMotion:Landroid/os/Bundle;

.field private mSleepMonitor:Landroid/os/Bundle;

.field private mSpecificPoseAlert:Landroid/os/Bundle;

.field private mStepCountAlert:Landroid/os/Bundle;

.field private mStepLevelMonitor:Landroid/os/Bundle;

.field private mTemperatureAlert:Landroid/os/Bundle;

.field private mWakeUpVoice:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Landroid/hardware/scontext/SContextAttribute$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAttribute$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mPedometer:Landroid/os/Bundle;

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepCountAlert:Landroid/os/Bundle;

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoRotation:Landroid/os/Bundle;

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironment:Landroid/os/Bundle;

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mMovementForPositioning:Landroid/os/Bundle;

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mShakeMotion:Landroid/os/Bundle;

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mWakeUpVoice:Landroid/os/Bundle;

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mTemperatureAlert:Landroid/os/Bundle;

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityLocationLogging:Landroid/os/Bundle;

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotification:Landroid/os/Bundle;

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSpecificPoseAlert:Landroid/os/Bundle;

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSleepMonitor:Landroid/os/Bundle;

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotificationEx:Landroid/os/Bundle;

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepLevelMonitor:Landroid/os/Bundle;

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mInactiveTimer:Landroid/os/Bundle;

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mFlatMotionForTableMode:Landroid/os/Bundle;

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoBrightness:Landroid/os/Bundle;

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mExercise:Landroid/os/Bundle;

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mPedometer:Landroid/os/Bundle;

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepCountAlert:Landroid/os/Bundle;

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoRotation:Landroid/os/Bundle;

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironment:Landroid/os/Bundle;

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mMovementForPositioning:Landroid/os/Bundle;

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mShakeMotion:Landroid/os/Bundle;

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mWakeUpVoice:Landroid/os/Bundle;

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mTemperatureAlert:Landroid/os/Bundle;

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityLocationLogging:Landroid/os/Bundle;

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotification:Landroid/os/Bundle;

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSpecificPoseAlert:Landroid/os/Bundle;

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSleepMonitor:Landroid/os/Bundle;

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotificationEx:Landroid/os/Bundle;

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepLevelMonitor:Landroid/os/Bundle;

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mInactiveTimer:Landroid/os/Bundle;

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mFlatMotionForTableMode:Landroid/os/Bundle;

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoBrightness:Landroid/os/Bundle;

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mExercise:Landroid/os/Bundle;

    .line 95
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAttribute;->readFromParcel(Landroid/os/Parcel;)V

    .line 96
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mPedometer:Landroid/os/Bundle;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepCountAlert:Landroid/os/Bundle;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoRotation:Landroid/os/Bundle;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironment:Landroid/os/Bundle;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mMovementForPositioning:Landroid/os/Bundle;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mShakeMotion:Landroid/os/Bundle;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mWakeUpVoice:Landroid/os/Bundle;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mTemperatureAlert:Landroid/os/Bundle;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityLocationLogging:Landroid/os/Bundle;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotification:Landroid/os/Bundle;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSpecificPoseAlert:Landroid/os/Bundle;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSleepMonitor:Landroid/os/Bundle;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotificationEx:Landroid/os/Bundle;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepLevelMonitor:Landroid/os/Bundle;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mInactiveTimer:Landroid/os/Bundle;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mFlatMotionForTableMode:Landroid/os/Bundle;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoBrightness:Landroid/os/Bundle;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mExercise:Landroid/os/Bundle;

    .line 290
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public getAttribute(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "service"    # I

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 148
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 112
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mPedometer:Landroid/os/Bundle;

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepCountAlert:Landroid/os/Bundle;

    goto :goto_0

    .line 116
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoRotation:Landroid/os/Bundle;

    goto :goto_0

    .line 118
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironment:Landroid/os/Bundle;

    goto :goto_0

    .line 120
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mMovementForPositioning:Landroid/os/Bundle;

    goto :goto_0

    .line 122
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mShakeMotion:Landroid/os/Bundle;

    goto :goto_0

    .line 124
    :pswitch_7
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mWakeUpVoice:Landroid/os/Bundle;

    goto :goto_0

    .line 126
    :pswitch_8
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mTemperatureAlert:Landroid/os/Bundle;

    goto :goto_0

    .line 128
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityLocationLogging:Landroid/os/Bundle;

    goto :goto_0

    .line 130
    :pswitch_a
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotification:Landroid/os/Bundle;

    goto :goto_0

    .line 132
    :pswitch_b
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSpecificPoseAlert:Landroid/os/Bundle;

    goto :goto_0

    .line 134
    :pswitch_c
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSleepMonitor:Landroid/os/Bundle;

    goto :goto_0

    .line 136
    :pswitch_d
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotificationEx:Landroid/os/Bundle;

    goto :goto_0

    .line 138
    :pswitch_e
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepLevelMonitor:Landroid/os/Bundle;

    goto :goto_0

    .line 140
    :pswitch_f
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mInactiveTimer:Landroid/os/Bundle;

    goto :goto_0

    .line 142
    :pswitch_10
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mFlatMotionForTableMode:Landroid/os/Bundle;

    goto :goto_0

    .line 144
    :pswitch_11
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoBrightness:Landroid/os/Bundle;

    goto :goto_0

    .line 146
    :pswitch_12
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mExercise:Landroid/os/Bundle;

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method setAttribute(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/os/Bundle;

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 217
    :goto_0
    :pswitch_0
    return-void

    .line 161
    :pswitch_1
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mPedometer:Landroid/os/Bundle;

    goto :goto_0

    .line 164
    :pswitch_2
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mStepCountAlert:Landroid/os/Bundle;

    goto :goto_0

    .line 167
    :pswitch_3
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoRotation:Landroid/os/Bundle;

    goto :goto_0

    .line 170
    :pswitch_4
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironment:Landroid/os/Bundle;

    goto :goto_0

    .line 173
    :pswitch_5
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mMovementForPositioning:Landroid/os/Bundle;

    goto :goto_0

    .line 176
    :pswitch_6
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mShakeMotion:Landroid/os/Bundle;

    goto :goto_0

    .line 179
    :pswitch_7
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mWakeUpVoice:Landroid/os/Bundle;

    goto :goto_0

    .line 182
    :pswitch_8
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mTemperatureAlert:Landroid/os/Bundle;

    goto :goto_0

    .line 185
    :pswitch_9
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityLocationLogging:Landroid/os/Bundle;

    goto :goto_0

    .line 188
    :pswitch_a
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotification:Landroid/os/Bundle;

    goto :goto_0

    .line 191
    :pswitch_b
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mSpecificPoseAlert:Landroid/os/Bundle;

    goto :goto_0

    .line 194
    :pswitch_c
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mSleepMonitor:Landroid/os/Bundle;

    goto :goto_0

    .line 197
    :pswitch_d
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotificationEx:Landroid/os/Bundle;

    goto :goto_0

    .line 200
    :pswitch_e
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mStepLevelMonitor:Landroid/os/Bundle;

    goto :goto_0

    .line 203
    :pswitch_f
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mInactiveTimer:Landroid/os/Bundle;

    goto :goto_0

    .line 206
    :pswitch_10
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mFlatMotionForTableMode:Landroid/os/Bundle;

    goto :goto_0

    .line 209
    :pswitch_11
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoBrightness:Landroid/os/Bundle;

    goto :goto_0

    .line 212
    :pswitch_12
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mExercise:Landroid/os/Bundle;

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 245
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mPedometer:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 246
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepCountAlert:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 247
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoRotation:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 248
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironment:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 249
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mMovementForPositioning:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 250
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mShakeMotion:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 251
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mWakeUpVoice:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 252
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mTemperatureAlert:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 253
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityLocationLogging:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 254
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotification:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 255
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSpecificPoseAlert:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 256
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSleepMonitor:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 257
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotificationEx:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 258
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepLevelMonitor:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 259
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mInactiveTimer:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 260
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mFlatMotionForTableMode:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 261
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoBrightness:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 262
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mExercise:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 263
    return-void
.end method

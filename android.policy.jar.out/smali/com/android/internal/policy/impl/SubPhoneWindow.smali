.class public Lcom/android/internal/policy/impl/SubPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "SubPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;,
        Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneWindowListener;,
        Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final SAFE_DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "SubPhoneWindow"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

.field private mContext:Landroid/content/Context;

.field private mHasStackFocus:Z

.field private mIsBorder:Z

.field private mIvt:[B

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScaleX:F

.field private mScaleY:F

.field private mStackBound:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private mSubPhoneWindowListener:Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneWindowListener;

.field private mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object v3, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 70
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    .line 73
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mHasStackFocus:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z

    .line 77
    iput-object v3, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 82
    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIvt:[B

    .line 93
    iput-object p1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    .line 94
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 98
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    .line 99
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "multiwindow_facade"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 101
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mStatusBarHeight:I

    .line 103
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 105
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 106
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 110
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z

    .line 114
    :cond_1
    return-void

    .line 108
    :cond_2
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_0

    .line 82
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/SubPhoneWindow;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SubPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/SubPhoneWindow;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SubPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/SubPhoneWindow;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/SubPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/SubPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/SubPhoneWindow;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SubPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/SubPhoneWindow;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SubPhoneWindow;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/SubPhoneWindow;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/SubPhoneWindow;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method private forceHideInputMethod()Z
    .locals 2

    .prologue
    .line 375
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 376
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 379
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStackBoxBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private isCascadeScaledWindow()Z
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStackFocus(Z)V
    .locals 2
    .param p1, "focus"    # Z

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mHasStackFocus:Z

    if-ne v0, p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mHasStackFocus:Z

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/Border;->setFocus(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .locals 4

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 121
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/Border;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/impl/multiwindow/Border;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    .line 126
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    new-instance v1, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;-><init>(Lcom/android/internal/policy/impl/SubPhoneWindow;Landroid/content/Context;I)V

    return-object v1
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 3
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    .line 301
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "doInvalidate":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 304
    const/4 v0, 0x1

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->isCascadeScaledWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z

    .line 312
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 315
    :cond_1
    return-void

    .line 310
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z

    goto :goto_0
.end method

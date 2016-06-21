.class public interface abstract Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;
.super Ljava/lang/Object;
.source "TwAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTwMultiSelectedListener"
.end annotation


# virtual methods
.method public abstract OnTwMultiSelectStart(II)V
.end method

.method public abstract OnTwMultiSelectStop(II)V
.end method

.method public abstract onTwMultiSelected(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation
.end method

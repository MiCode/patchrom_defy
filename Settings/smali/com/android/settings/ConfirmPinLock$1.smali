.class Lcom/android/settings/ConfirmPinLock$1;
.super Ljava/lang/Object;
.source "ConfirmPinLock.java"

# interfaces
.implements Lcom/motorola/internal/widget/LockPinView$OnPinListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmPinLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmPinLock;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmPinLock;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/ConfirmPinLock$1;->this$0:Lcom/android/settings/ConfirmPinLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPinCanceled()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/ConfirmPinLock$1;->this$0:Lcom/android/settings/ConfirmPinLock;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ConfirmPinLock;->setResult(ILandroid/content/Intent;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/ConfirmPinLock$1;->this$0:Lcom/android/settings/ConfirmPinLock;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmPinLock;->finish()V

    .line 66
    return-void
.end method

.method public onPinCleared()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onPinClicked(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 80
    return-void
.end method

.method public onPinDetected(Ljava/lang/String;)V
    .locals 1
    .parameter "pin"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/ConfirmPinLock$1;->this$0:Lcom/android/settings/ConfirmPinLock;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmPinLock;->onPasscodeDetected(Ljava/lang/String;)V

    .line 89
    return-void
.end method

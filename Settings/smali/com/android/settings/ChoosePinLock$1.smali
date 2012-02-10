.class Lcom/android/settings/ChoosePinLock$1;
.super Ljava/lang/Object;
.source "ChoosePinLock.java"

# interfaces
.implements Lcom/motorola/internal/widget/LockPinView$OnPinListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChoosePinLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChoosePinLock;


# direct methods
.method constructor <init>(Lcom/android/settings/ChoosePinLock;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPinCanceled()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v2, ""

    .line 68
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/ChoosePinLock;->access$000(Lcom/android/settings/ChoosePinLock;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/ChoosePinLock;->access$000(Lcom/android/settings/ChoosePinLock;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    invoke-virtual {v0, v5}, Lcom/android/settings/ChoosePinLock;->setResult(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    invoke-virtual {v0}, Lcom/android/settings/ChoosePinLock;->finish()V

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    const-string v1, ""

    #setter for: Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/settings/ChoosePinLock;->access$002(Lcom/android/settings/ChoosePinLock;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;
    invoke-static {v0}, Lcom/android/settings/ChoosePinLock;->access$100(Lcom/android/settings/ChoosePinLock;)Lcom/motorola/internal/widget/LockPinView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/internal/widget/LockPinView;->clearPin()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;
    invoke-static {v0}, Lcom/android/settings/ChoosePinLock;->access$100(Lcom/android/settings/ChoosePinLock;)Lcom/motorola/internal/widget/LockPinView;

    move-result-object v0

    const v1, 0x1080420

    invoke-virtual {v0, v1}, Lcom/motorola/internal/widget/LockPinView;->setCancelButton(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;
    invoke-static {v0}, Lcom/android/settings/ChoosePinLock;->access$100(Lcom/android/settings/ChoosePinLock;)Lcom/motorola/internal/widget/LockPinView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    const v2, 0x10403b4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mMinPin:I
    invoke-static {v4}, Lcom/android/settings/ChoosePinLock;->access$200(Lcom/android/settings/ChoosePinLock;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/ChoosePinLock;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/internal/widget/LockPinView;->setPinHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPinCleared()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onPinClicked(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 91
    return-void
.end method

.method public onPinDetected(Ljava/lang/String;)V
    .locals 6
    .parameter "pin"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 99
    const-string v0, ""

    .line 101
    .local v0, hint:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mMinPin:I
    invoke-static {v2}, Lcom/android/settings/ChoosePinLock;->access$200(Lcom/android/settings/ChoosePinLock;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    const v2, 0x10403bd

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mMinPin:I
    invoke-static {v4}, Lcom/android/settings/ChoosePinLock;->access$200(Lcom/android/settings/ChoosePinLock;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/ChoosePinLock;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;
    invoke-static {v1}, Lcom/android/settings/ChoosePinLock;->access$100(Lcom/android/settings/ChoosePinLock;)Lcom/motorola/internal/widget/LockPinView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/internal/widget/LockPinView;->setPinHint(Ljava/lang/CharSequence;)V

    .line 117
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    const v2, 0x10403be

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/ChoosePinLock;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/ChoosePinLock;->access$000(Lcom/android/settings/ChoosePinLock;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/ChoosePinLock;->access$000(Lcom/android/settings/ChoosePinLock;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #setter for: Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/settings/ChoosePinLock;->access$002(Lcom/android/settings/ChoosePinLock;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    const v2, 0x10403b6

    invoke-virtual {v1, v2}, Lcom/android/settings/ChoosePinLock;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;
    invoke-static {v1}, Lcom/android/settings/ChoosePinLock;->access$100(Lcom/android/settings/ChoosePinLock;)Lcom/motorola/internal/widget/LockPinView;

    move-result-object v1

    const v2, 0x1080423

    invoke-virtual {v1, v2}, Lcom/motorola/internal/widget/LockPinView;->setCancelButton(I)V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #getter for: Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/ChoosePinLock;->access$000(Lcom/android/settings/ChoosePinLock;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    #calls: Lcom/android/settings/ChoosePinLock;->saveChosenPinAndFinish(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/android/settings/ChoosePinLock;->access$300(Lcom/android/settings/ChoosePinLock;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock$1;->this$0:Lcom/android/settings/ChoosePinLock;

    const v2, 0x7f080041

    invoke-virtual {v1, v2}, Lcom/android/settings/ChoosePinLock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

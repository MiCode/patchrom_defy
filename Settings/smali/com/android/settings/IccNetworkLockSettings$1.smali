.class Lcom/android/settings/IccNetworkLockSettings$1;
.super Landroid/os/Handler;
.source "IccNetworkLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccNetworkLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccNetworkLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccNetworkLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/IccNetworkLockSettings$1;->this$0:Lcom/android/settings/IccNetworkLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 136
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 140
    :pswitch_0
    const-string v1, "IccNetworkLockSettings"

    const-string v2, " handleMessage() ==> get response event EVENT_SIM_NETWORK_LOCK_RESULT from icc card"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings$1;->this$0:Lcom/android/settings/IccNetworkLockSettings;

    #setter for: Lcom/android/settings/IccNetworkLockSettings;->mNumRetries:I
    invoke-static {v1, v3}, Lcom/android/settings/IccNetworkLockSettings;->access$002(Lcom/android/settings/IccNetworkLockSettings;I)I

    .line 142
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings$1;->this$0:Lcom/android/settings/IccNetworkLockSettings;

    #calls: Lcom/android/settings/IccNetworkLockSettings;->iccGetNetworkLockRetryLeft(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/settings/IccNetworkLockSettings;->access$100(Lcom/android/settings/IccNetworkLockSettings;Landroid/os/AsyncResult;)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings$1;->this$0:Lcom/android/settings/IccNetworkLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    #calls: Lcom/android/settings/IccNetworkLockSettings;->iccNetworkLockStateChanged(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/IccNetworkLockSettings;->access$200(Lcom/android/settings/IccNetworkLockSettings;Z)V

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

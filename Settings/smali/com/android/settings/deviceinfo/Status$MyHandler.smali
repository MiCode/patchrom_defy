.class Lcom/android/settings/deviceinfo/Status$MyHandler;
.super Landroid/os/Handler;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/Status;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/Status;Lcom/android/settings/deviceinfo/Status;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 122
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/Status;

    .line 127
    .local v2, status:Lcom/android/settings/deviceinfo/Status;
    if-nez v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    #setter for: Lcom/android/settings/deviceinfo/Status;->mSignalStrengthAsu:Z
    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/Status;->access$002(Lcom/android/settings/deviceinfo/Status;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_1
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 142
    :sswitch_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->mSignalStrengthAsu:Z
    invoke-static {v3}, Lcom/android/settings/deviceinfo/Status;->access$000(Lcom/android/settings/deviceinfo/Status;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrength()V

    goto :goto_0

    .line 134
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 135
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    const/4 v4, 0x1

    #setter for: Lcom/android/settings/deviceinfo/Status;->mSignalStrengthAsu:Z
    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/Status;->access$002(Lcom/android/settings/deviceinfo/Status;Z)Z

    goto :goto_1

    .line 151
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->mSignalStrengthAsu:Z
    invoke-static {v3}, Lcom/android/settings/deviceinfo/Status;->access$000(Lcom/android/settings/deviceinfo/Status;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    #getter for: Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/Status;->access$100(Lcom/android/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 153
    .local v1, serviceState:Landroid/telephony/ServiceState;
    #calls: Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v2, v1}, Lcom/android/settings/deviceinfo/Status;->access$200(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 159
    .end local v1           #serviceState:Landroid/telephony/ServiceState;
    :sswitch_2
    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/Status;->updateTimes()V

    .line 160
    const/16 v3, 0x1f4

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/deviceinfo/Status$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method

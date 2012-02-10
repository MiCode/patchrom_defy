.class public Lcom/android/settings/bluetooth/DockEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockEventReceiver.java"


# static fields
.field public static final ACTION_DOCK_SHOW_UI:Ljava/lang/String; = "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

.field private static final DEBUG:Z = false

.field private static final EXTRA_INVALID:I = -0x4d2

.field private static final TAG:Ljava/lang/String; = "DockEventReceiver"

.field private static final WAKELOCK_TIMEOUT:J = 0x1388L

.field private static mStartingService:Landroid/os/PowerManager$WakeLock;

.field private static final mStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 146
    sget-object v1, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    sget-object v2, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 148
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 149
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "StartingDockService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 153
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    sget-object v2, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 155
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 156
    const-string v2, "DockEventReceiver"

    const-string v3, "Can\'t start DockService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 166
    sget-object v0, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    sget-object v1, Lcom/android/settings/bluetooth/DockEventReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 171
    :cond_0
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const-string v11, "android.bluetooth.adapter.extra.STATE"

    const-class v9, Lcom/android/settings/bluetooth/DockService;

    .line 52
    if-nez p2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v7, "android.intent.extra.DOCK_STATE"

    const-string v8, "android.bluetooth.adapter.extra.STATE"

    const/16 v8, -0x4d2

    invoke-virtual {p2, v11, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 57
    .local v6, state:I
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 64
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 66
    :cond_2
    if-eqz v1, :cond_0

    .line 71
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 76
    .local v2, i:Landroid/content/Intent;
    const-class v7, Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v2, p1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    .end local v2           #i:Landroid/content/Intent;
    :cond_3
    const-string v7, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 91
    if-eqz v1, :cond_0

    .line 96
    const-string v7, "android.bluetooth.headset.extra.STATE"

    const/4 v8, 0x2

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 98
    .local v3, newState:I
    if-nez v3, :cond_0

    .line 100
    const-string v7, "android.bluetooth.headset.extra.DISCONNECT_INITIATOR"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 102
    .local v5, source:I
    if-nez v5, :cond_0

    .line 105
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 106
    .restart local v2       #i:Landroid/content/Intent;
    const-class v7, Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v2, p1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #newState:I
    .end local v5           #source:I
    :cond_4
    const-string v7, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 116
    if-eqz v1, :cond_0

    .line 121
    const-string v7, "android.bluetooth.a2dp.extra.SINK_STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 122
    .restart local v3       #newState:I
    const-string v7, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 123
    .local v4, oldState:I
    if-nez v3, :cond_0

    const/4 v7, 0x3

    if-eq v4, v7, :cond_0

    .line 126
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 127
    .restart local v2       #i:Landroid/content/Intent;
    const-class v7, Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v2, p1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 128
    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 131
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_5
    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 132
    const-string v7, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v11, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 133
    .local v0, btState:I
    const/16 v7, 0xb

    if-eq v0, v7, :cond_0

    .line 134
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 135
    .restart local v2       #i:Landroid/content/Intent;
    const-class v7, Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v2, p1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEventRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    const-string v18, "BluetoothEventRedirector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Received "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, action:Ljava/lang/String;
    const-string v18, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 65
    .local v10, device:Landroid/bluetooth/BluetoothDevice;
    const-string v18, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 66
    const-string v18, "android.bluetooth.adapter.extra.STATE"

    const/high16 v19, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 68
    .local v17, state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    .line 197
    .end local v17           #state:I
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v18, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #calls: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->persistDiscoveringTimestamp()V
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$100(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 73
    :cond_2
    const-string v18, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #calls: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->persistDiscoveringTimestamp()V
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$100(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 77
    :cond_3
    const-string v18, "android.bluetooth.device.action.FOUND"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 78
    const-string v18, "android.bluetooth.device.extra.RSSI"

    const/16 v19, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v16

    .line 79
    .local v16, rssi:S
    const-string v18, "android.bluetooth.device.extra.CLASS"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothClass;

    .line 80
    .local v8, btClass:Landroid/bluetooth/BluetoothClass;
    const-string v18, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 83
    .local v12, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    move/from16 v2, v16

    move-object v3, v8

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceAppeared(Landroid/bluetooth/BluetoothDevice;SLandroid/bluetooth/BluetoothClass;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    .end local v8           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v12           #name:Ljava/lang/String;
    .end local v16           #rssi:S
    :cond_4
    const-string v18, "android.bluetooth.device.action.DISAPPEARED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 88
    :cond_5
    const-string v18, "android.bluetooth.device.action.NAME_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 91
    :cond_6
    const-string v18, "android.bluetooth.device.action.NAME_FAILED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 94
    :cond_7
    const-string v18, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 95
    const-string v18, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v19, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 97
    .local v7, bondState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v9

    .line 98
    .local v9, cachedDeviceMgr:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {v9, v10, v7}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onBondingStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 100
    const-string v18, "android.bluetooth.device.extra.REASON"

    const/high16 v19, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 102
    .local v15, reason:I
    const/16 v18, 0xa

    move v0, v7

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v18, 0x9

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->unbond_device_remove(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 105
    :cond_8
    const/16 v18, 0xa

    move v0, v7

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->removeDockAutoConnectSetting(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    #calls: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$200(Lcom/android/settings/bluetooth/BluetoothEventRedirector;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 113
    invoke-virtual {v9, v10}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V

    .line 116
    :cond_9
    invoke-virtual {v9, v10, v15}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->showUnbondMessage(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 119
    .end local v7           #bondState:I
    .end local v9           #cachedDeviceMgr:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .end local v15           #reason:I
    :cond_a
    const-string v18, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 120
    const-string v18, "android.bluetooth.headset.extra.STATE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 121
    .local v13, newState:I
    const-string v18, "android.bluetooth.headset.extra.PREVIOUS_STATE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 122
    .local v14, oldState:I
    if-nez v13, :cond_b

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 124
    const-string v18, "BluetoothEventRedirector"

    const-string v19, "Failed to connect BT headset"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    sget-object v19, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v18

    move-object v1, v10

    move-object/from16 v2, v19

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0

    .line 130
    .end local v13           #newState:I
    .end local v14           #oldState:I
    :cond_c
    const-string v18, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 131
    const-string v18, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 132
    .restart local v13       #newState:I
    const-string v18, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 133
    .restart local v14       #oldState:I
    if-nez v13, :cond_d

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 135
    const-string v18, "BluetoothEventRedirector"

    const-string v19, "Failed to connect BT A2DP"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    sget-object v19, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v18

    move-object v1, v10

    move-object/from16 v2, v19

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0

    .line 141
    .end local v13           #newState:I
    .end local v14           #oldState:I
    :cond_e
    const-string v18, "android.bluetooth.hid.action.HID_STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 143
    const-string v18, "android.bluetooth.hid.extra.HID_STATE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 144
    .restart local v13       #newState:I
    const-string v18, "android.bluetooth.hid.extra.PREVIOUS_HID_STATE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 145
    .restart local v14       #oldState:I
    if-nez v13, :cond_f

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 147
    const-string v18, "BluetoothEventRedirector"

    const-string v19, "Failed to connect BT HID "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    sget-object v19, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v18

    move-object v1, v10

    move-object/from16 v2, v19

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0

    .line 153
    .end local v13           #newState:I
    .end local v14           #oldState:I
    :cond_10
    const-string v18, "android.bluetooth.device.action.CLASS_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 156
    :cond_11
    const-string v18, "com.motorola.android.bluetooth.dun.intent.action.DUN_STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 157
    const-string v18, "com.motorola.android.bluetooth.dun.intent.DUN_STATE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 158
    .restart local v13       #newState:I
    const-string v18, "com.motorola.android.bluetooth.dun.intent.DUN_PREVIOUS_STATE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 159
    .restart local v14       #oldState:I
    if-nez v13, :cond_12

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 161
    const-string v18, "BluetoothEventRedirector"

    const-string v19, "Failed to connect BT DUN"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    sget-object v19, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->DUN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v18

    move-object v1, v10

    move-object/from16 v2, v19

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0

    .line 168
    .end local v13           #newState:I
    .end local v14           #oldState:I
    :cond_13
    const-string v18, "com.motorola.android.bluetooth.pan.intent.action.ACTION_STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 169
    const-string v18, "BluetoothEventRedirector"

    const-string v19, "Action state change for pan received"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v18, "com.motorola.android.bluetooth.pan.intent.EXTRA_STATE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 171
    .restart local v13       #newState:I
    const-string v18, "com.motorola.android.bluetooth.pan.intent.EXTRA_PREVIOUS_STATE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 172
    .restart local v14       #oldState:I
    if-nez v13, :cond_14

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 174
    const-string v18, "BluetoothEventRedirector"

    const-string v19, "Failed to connect BT PAN"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    sget-object v19, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->PAN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v18

    move-object v1, v10

    move-object/from16 v2, v19

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0

    .line 180
    .end local v13           #newState:I
    .end local v14           #oldState:I
    :cond_15
    const-string v18, "android.bleutooth.device.action.UUID"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 183
    :cond_16
    const-string v18, "android.bluetooth.device.action.PAIRING_CANCEL"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 184
    const v11, 0x7f0803a8

    .line 185
    .local v11, errorMsg:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    const v19, 0x7f0803a7

    move-object/from16 v0, v18

    move-object v1, v10

    move/from16 v2, v19

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 187
    .end local v11           #errorMsg:I
    :cond_17
    const-string v18, "android.intent.action.DOCK_EVENT"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 189
    const/4 v6, 0x1

    .line 190
    .local v6, anythingButUnDocked:I
    const-string v18, "android.intent.extra.DOCK_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 191
    .restart local v17       #state:I
    if-nez v17, :cond_0

    .line 192
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0
.end method

.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HidProfileManager"
.end annotation


# instance fields
.field private mService:Landroid/bluetooth/BluetoothHid;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .parameter "localManager"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 309
    new-instance v0, Landroid/bluetooth/BluetoothHid;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothHid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Landroid/bluetooth/BluetoothHid;

    .line 310
    return-void
.end method


# virtual methods
.method public checkConnection()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Landroid/bluetooth/BluetoothHid;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHid;->connectHid(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public convertState(I)I
    .locals 1
    .parameter "hidState"

    .prologue
    .line 379
    packed-switch p1, :pswitch_data_0

    .line 389
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 381
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 383
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 385
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 387
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Landroid/bluetooth/BluetoothHid;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHid;->disconnectHid(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Landroid/bluetooth/BluetoothHid;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHid;->getHidState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->convertState(I)I

    move-result v0

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 319
    const/4 v0, -0x1

    return v0
.end method

.method public getSummary(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 353
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const v1, 0x7f080092

    .line 356
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v1

    goto :goto_0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Landroid/bluetooth/BluetoothHid;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHid;->getHidPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Landroid/bluetooth/BluetoothHid;

    if-eqz p2, :cond_0

    const/16 v1, 0x64

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHid;->setHidPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 369
    return-void

    .line 367
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Landroid/bluetooth/BluetoothHid;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHid;->unplugHid(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

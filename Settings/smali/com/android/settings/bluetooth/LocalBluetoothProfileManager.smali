.class public abstract Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DunProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$OppProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    }
.end annotation


# static fields
.field static final A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field static final HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field static final HID_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field static final OPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field static final PAN_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothProfileManager"

.field private static sProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-array v0, v4, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 60
    new-array v0, v4, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 65
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HidDevice:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HID_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 69
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->OPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 73
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->PAN_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 0
    .parameter "localManager"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 169
    return-void
.end method

.method public static getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 5
    .parameter "localManager"
    .parameter "profile"

    .prologue
    .line 116
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 118
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    if-nez v0, :cond_0

    .line 119
    const-string v2, "LocalBluetoothProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileManager can\'t be found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    monitor-exit v1

    return-object v0

    .line 122
    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static init(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 4
    .parameter "localManager"

    .prologue
    .line 84
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 88
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 89
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;

    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 92
    .restart local v0       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanProfileManager;

    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 95
    .restart local v0       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->PAN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 98
    .restart local v0       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$OppProfileManager;

    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$OppProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 101
    .restart local v0       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->OPP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DunProfileManager;

    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DunProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 105
    .restart local v0       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->DUN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_0
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static updateProfiles([Landroid/os/ParcelUuid;Ljava/util/List;)V
    .locals 1
    .parameter "uuids"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 136
    if-nez p0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HID_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_2
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_3
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_4
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->OPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->OPP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_5
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DunProfileManager;->DUN_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 158
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->DUN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_6
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->PAN_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->PAN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public abstract checkConnection()Z
.end method

.method public abstract connect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract convertState(I)I
.end method

.method public abstract disconnect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract getConnectedDevices()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getPreferred(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getSummary(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v0

    return v0
.end method

.method public abstract isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
.end method

.method public unplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

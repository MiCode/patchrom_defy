.class Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothJob"
.end annotation


# instance fields
.field final cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field final command:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

.field final profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

.field timeSent:J


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .locals 2
    .parameter "command"
    .parameter "cachedDevice"
    .parameter "profile"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    .line 138
    iput-object p2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 139
    iput-object p3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->timeSent:J

    .line 141
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, " Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #getter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$000(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    if-eqz v1, :cond_0

    .line 149
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_0
    const-string v1, " TimeSent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-wide v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->timeSent:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 153
    const-string v1, "not yet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 155
    :cond_1
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->timeSent:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.class final enum Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;
.super Ljava/lang/Enum;
.source "CachedBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BluetoothCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

.field public static final enum CONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

.field public static final enum DISCONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

.field public static final enum REMOVE_BOND:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

.field public static final enum UNPLUG:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    const-string v1, "DISCONNECT"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->DISCONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    const-string v1, "REMOVE_BOND"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->REMOVE_BOND:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    const-string v1, "UNPLUG"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->UNPLUG:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    .line 124
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    sget-object v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->DISCONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->REMOVE_BOND:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->UNPLUG:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->$VALUES:[Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;
    .locals 1
    .parameter "name"

    .prologue
    .line 124
    const-class v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->$VALUES:[Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    invoke-virtual {v0}, [Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    return-object v0
.end method

.class public final enum Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
.super Ljava/lang/Enum;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Profile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

.field public static final enum A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

.field public static final enum DUN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

.field public static final enum HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

.field public static final enum HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

.field public static final enum OPP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

.field public static final enum PAN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;


# instance fields
.field public final localizedString:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    const-string v1, "HEADSET"

    const v2, 0x7f0803ba

    invoke-direct {v0, v1, v4, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 203
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    const-string v1, "A2DP"

    const v2, 0x7f0803b9

    invoke-direct {v0, v1, v5, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 204
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    const-string v1, "OPP"

    const v2, 0x7f0803bb

    invoke-direct {v0, v1, v6, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->OPP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 205
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    const-string v1, "HID"

    const v2, 0x7f080084

    invoke-direct {v0, v1, v7, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 206
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    const-string v1, "PAN"

    const v2, 0x7f080085

    invoke-direct {v0, v1, v8, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->PAN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 208
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    const-string v1, "DUN"

    const/4 v2, 0x5

    const v3, 0x7f080083

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->DUN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 201
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->OPP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->PAN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->DUN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->$VALUES:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "localizedString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 214
    iput p3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->localizedString:I

    .line 215
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .locals 1
    .parameter "name"

    .prologue
    .line 201
    const-class v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->$VALUES:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {v0}, [Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    return-object v0
.end method

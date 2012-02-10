.class public Lcom/android/settings/bluetooth/SettingsBtStatus;
.super Ljava/lang/Object;
.source "SettingsBtStatus.java"


# static fields
.field public static final CONNECTION_STATUS_ACTIVE:I = 0x1

.field public static final CONNECTION_STATUS_CONNECTED:I = 0x2

.field public static final CONNECTION_STATUS_CONNECTING:I = 0x3

.field public static final CONNECTION_STATUS_DISCONNECTED:I = 0x4

.field public static final CONNECTION_STATUS_DISCONNECTING:I = 0x5

.field public static final CONNECTION_STATUS_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SettingsBtStatus"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getConnectionStatusSummary(I)I
    .locals 1
    .parameter "connectionStatus"

    .prologue
    const v0, 0x7f0802df

    .line 41
    packed-switch p0, :pswitch_data_0

    .line 55
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 47
    :pswitch_1
    const v0, 0x7f0802e2

    goto :goto_0

    .line 49
    :pswitch_2
    const v0, 0x7f0802e0

    goto :goto_0

    .line 51
    :pswitch_3
    const v0, 0x7f0802e1

    goto :goto_0

    .line 53
    :pswitch_4
    const v0, 0x7f0802e3

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final getPairingStatusSummary(I)I
    .locals 1
    .parameter "bondState"

    .prologue
    .line 70
    packed-switch p0, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 72
    :pswitch_0
    const v0, 0x7f0802e6

    goto :goto_0

    .line 74
    :pswitch_1
    const v0, 0x7f0802e5

    goto :goto_0

    .line 76
    :pswitch_2
    const v0, 0x7f0802e4

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final isConnectionStatusBusy(I)Z
    .locals 1
    .parameter "connectionStatus"

    .prologue
    .line 65
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isConnectionStatusConnected(I)Z
    .locals 2
    .parameter "connectionStatus"

    .prologue
    const/4 v1, 0x1

    .line 60
    if-eq p0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

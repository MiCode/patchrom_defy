.class public final Lcom/android/settings/wifi/WifiApDefaults;
.super Ljava/lang/Object;
.source "WifiApDefaults.java"


# static fields
.field public static final BLACKLIST_MAC_DURATION:I = 0x493e0

.field public static final CONNECTED_DEVICE_POLL_INTERVAL:I = 0x1388

.field public static final DATA_COUNTER_UI_ALIVE_KEY:Ljava/lang/String; = "wifi_ap_data_counter_ui_alive"

.field public static final LINK_STATS_FAST_POLL_INTERVAL:I = 0x3e8

.field public static final LINK_STATS_SLOW_POLL_INTERVAL:I = 0x2710

.field public static final MIN_PSK_LEN:I = 0x8

.field public static final SETTINGS_ALLOW_ALL_DEVICES_DEFUALT_VALUE:Ljava/lang/String; = "TRUE"

.field public static final SETTINGS_AP_MODE_DEFAULT_VALUE:I = 0x2

.field public static final SETTINGS_BATTERY_MANAGEMENT_TIMEOUT_DEFAULT_VALUE:I = -0x1

.field public static final SETTINGS_BATTERY_MANAGEMENT_TIMEOUT_KEY:Ljava/lang/String; = "wifi_ap_battery_timeout"

.field public static final SETTINGS_BROADCAST_SSID_DEFAULT_VALUE:Z = true

.field public static final SETTINGS_CHANNEL_NUMBER_DEFAULT_VALUE:I = 0x0

.field public static final SETTINGS_CHANNEL_NUMBER_MAX_VALUE:I = 0xe

.field public static final SETTINGS_CURRENT_SESSION_RX_BYTES_KEY:Ljava/lang/String; = "wifi_ap_curr_rx"

.field public static final SETTINGS_CURRENT_SESSION_TX_BYTES_KEY:Ljava/lang/String; = "wifi_ap_curr_tx"

.field public static final SETTINGS_DATA_COUNTER_RESET_WARN:Ljava/lang/String; = "wifi_ap_reset_data_warn"

.field public static final SETTINGS_DATA_COUNTER_RESET_WARN_BAND_DEFAULT_VALUE:J = 0x2800L

.field public static final SETTINGS_DHCP_END_ADDRESS_DEFAULT_VALUE:Ljava/lang/String; = "192.168.42.254"

.field public static final SETTINGS_DHCP_MAX_CLIENTS:I = 0x32

.field public static final SETTINGS_DHCP_START_ADDRESS_DEFAULT_VALUE:Ljava/lang/String; = "192.168.42.2"

.field public static final SETTINGS_DISPLAY_STARTUP_WARNING_DEFAULT_VALUE:I = 0x0

.field public static final SETTINGS_DISPLAY_STARTUP_WARNING_KEY:Ljava/lang/String; = "wifi_ap_display_starup_warning"

.field public static final SETTINGS_DNS1_ADDRESS_DEFAULT_VALUE:Ljava/lang/String; = "8.8.8.8"

.field public static final SETTINGS_DNS2_ADDRESS_DEFAULT_VALUE:Ljava/lang/String; = "4.2.2.2"

.field public static final SETTINGS_GATEWAY_ADDRESS_DEFAULT_VALUE:Ljava/lang/String; = "192.168.42.1"

.field public static final SETTINGS_LIFETIME_RX_BYTES_KEY:Ljava/lang/String; = "wifi_ap_lifetime_rx"

.field public static final SETTINGS_LIFETIME_TX_BYTES_KEY:Ljava/lang/String; = "wifi_ap_lifetime_tx"

.field public static final SETTINGS_MAX_CONNECTED_DEVICES_DEFAULT_VALUE:I = 0x0

.field public static final SETTINGS_MAX_CONNECTED_DEVICES_KEY:Ljava/lang/String; = "wifi_ap_max_connected_devices"

.field public static final SETTINGS_MAX_CONNECTED_DEVICES_VENDORS_VALUE:I = 0xa

.field public static final SETTINGS_NETMASK_ADDRESS_DEFAULT_VALUE:Ljava/lang/String; = "255.255.255.0"

.field public static final SETTINGS_RESET_COUNTER_TIME_KEY:Ljava/lang/String; = "wifi_ap_reset_at"

.field public static final SETTINGS_RESET_SESSION_RX_BYTES_KEY:Ljava/lang/String; = "wifi_ap_reset_rx"

.field public static final SETTINGS_RESET_SESSION_TX_BYTES_KEY:Ljava/lang/String; = "wifi_ap_reset_tx"

.field public static final SETTINGS_SECURITY_TYPE_DEFAULT_VALUE:I = 0x1

.field public static final SHARED_PREFERENCE_DEVICE_STATS:Ljava/lang/String; = "SHARED_PREFERENCE_DEVICE_STATS"

.field public static final UNKNOWN_STA_NAME:Ljava/lang/String; = "Unknown"

.field private static mIsdefaultloaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiApDefaults;->mIsdefaultloaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateKey(I)Ljava/lang/String;
    .locals 5
    .parameter "keyLen"

    .prologue
    .line 118
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 119
    .local v2, rand:Ljava/util/Random;
    const-string v1, ""

    .line 120
    .local v1, key:Ljava/lang/String;
    move v0, p0

    .line 121
    .local v0, count:I
    :goto_0
    if-lez v0, :cond_0

    .line 122
    add-int/lit8 v0, v0, -0x1

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 125
    :cond_0
    return-object v1
.end method

.method public static loadDefaultWifiConfig(Landroid/content/ContentResolver;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .parameter "cr"

    .prologue
    const/16 v9, 0x2327

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, " "

    .line 78
    const-string v1, "Mobile"

    .line 79
    .local v1, model:Ljava/lang/String;
    const-string v0, "Verizon"

    .line 81
    .local v0, carrier:Ljava/lang/String;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 82
    .local v2, rand:Ljava/util/Random;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 83
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 85
    :cond_0
    const-string v4, "WifiApDefaults"

    const-string v5, "Loading default configuration"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 87
    .local v3, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v5, "verizon"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 93
    :goto_0
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 95
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 97
    const/16 v4, 0x8

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApDefaults;->generateKey(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 100
    :cond_1
    iput v6, v3, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    .line 101
    iput v6, v3, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 102
    iput-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 104
    sget-boolean v4, Lcom/android/settings/wifi/WifiApDefaults;->mIsdefaultloaded:Z

    if-nez v4, :cond_2

    .line 105
    const-string v4, "wifi_ap_dhcp_start_addr"

    const-string v5, "192.168.42.2"

    invoke-static {p0, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    const-string v4, "wifi_ap_dhcp_end_addr"

    const-string v5, "192.168.42.254"

    invoke-static {p0, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    const-string v4, "wifi_ap_gateway"

    const-string v5, "192.168.42.1"

    invoke-static {p0, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    const-string v4, "wifi_ap_netmask"

    const-string v5, "255.255.255.0"

    invoke-static {p0, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    const-string v4, "wifi_ap_dns1"

    const-string v5, "8.8.8.8"

    invoke-static {p0, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    const-string v4, "wifi_ap_dns2"

    const-string v5, "4.2.2.2"

    invoke-static {p0, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    sput-boolean v7, Lcom/android/settings/wifi/WifiApDefaults;->mIsdefaultloaded:Z

    .line 113
    :cond_2
    return-object v3

    .line 90
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

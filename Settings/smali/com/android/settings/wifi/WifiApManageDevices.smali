.class public Lcom/android/settings/wifi/WifiApManageDevices;
.super Landroid/preference/PreferenceActivity;
.source "WifiApManageDevices.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;,
        Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;
    }
.end annotation


# static fields
.field public static final DISABLE_MAC_SUFFIX:Ljava/lang/String; = "--DIS"

.field private static final KEY_ALLOW_ALL_DEVICES:Ljava/lang/String; = "wifi_ap_allow_all_devices"

.field private static final LOGTAG:Ljava/lang/String; = "WifiApManageDevices"

.field public static final SHARED_PERFERENCE_ALLOWED_DEVICES_FILENAME:Ljava/lang/String; = "WIFI_AP_ALLOWED_DEVICE_SHARED_PREF"

.field private static mAllowAllDevices:Landroid/preference/CheckBoxPreference;

.field private static mAllowedDevices:Lcom/android/settings/ProgressCategory;

.field public static mConnectedDevices:Lcom/android/settings/ProgressCategory;

.field private static mContext:Landroid/content/Context;

.field private static mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

.field private static mSharedPrefs:Landroid/content/SharedPreferences;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;


# instance fields
.field private final MAX_DEVICES_KEY:Ljava/lang/String;

.field private mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

.field private mAllowedDevicePref:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mMaxDevicePref:Landroid/preference/Preference;

.field private mRes:Landroid/content/res/Resources;

.field private mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    .line 66
    sput-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 67
    sput-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    const-string v0, "max_devices"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->MAX_DEVICES_KEY:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;

    .line 437
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApManageDevices;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApManageDevices;->invokeServiceToUnBlackList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Lcom/android/settings/ProgressCategory;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static addConnectedDeviceToScreen(Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 204
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 205
    new-instance v0, Lcom/android/settings/wifi/ConnectedDevice;

    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/ConnectedDevice;->mConnectTime:Landroid/text/format/Time;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)V

    .line 210
    .local v0, newDev:Lcom/android/settings/wifi/ConnectedDevice;
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    .end local v0           #newDev:Lcom/android/settings/wifi/ConnectedDevice;
    :cond_0
    return-void
.end method

.method private static getAllAllowedDeviceFromSharedPrefs(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->initPrefs(Landroid/content/Context;)V

    .line 252
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 253
    .local v0, deviceList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const-string v1, "wifi_ap_allow_all_devices"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :goto_0
    return-object v0

    .line 256
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method private static initPrefs(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "wifi_ap_allow_all_devices"

    .line 235
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 236
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 237
    const-string v1, "WIFI_AP_ALLOWED_DEVICE_SHARED_PREF"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 238
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 239
    .local v0, deviceList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wifi_ap_allow_all_devices"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    :cond_0
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "wifi_ap_allow_all_devices"

    const-string v2, "TRUE"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    .end local v0           #deviceList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private invokeServiceToUnBlackList(Ljava/lang/String;)V
    .locals 3
    .parameter "mac"

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "unblacklist_mac"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, unBlackListIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    if-eqz p1, :cond_0

    .line 296
    const-string v1, "mac_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 300
    return-void
.end method

.method public static isWhiteListAllEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "TRUE"

    .line 246
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->initPrefs(Landroid/content/Context;)V

    .line 247
    const-string v0, "TRUE"

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "wifi_ap_allow_all_devices"

    const-string v2, "TRUE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeConnectedDeviceFromScreen(Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 215
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_1

    .line 216
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->access$000(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)Lcom/android/settings/wifi/ConnectedDevice;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/ConnectedDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->dismiss()V

    .line 219
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, p0}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    :cond_1
    return-void
.end method

.method public static setAllowIfWhiteMac(ZLjava/lang/String;Landroid/content/Context;)Z
    .locals 8
    .parameter "enable"
    .parameter "mac"
    .parameter "context"

    .prologue
    const-string v7, "--DIS"

    .line 303
    invoke-static {p2}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 304
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 305
    .local v4, whiteList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p1

    .line 306
    .local v2, removeMac:Ljava/lang/String;
    move-object v0, p1

    .line 307
    .local v0, addMac:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--DIS"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    :goto_0
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    if-eqz v5, :cond_0

    .line 315
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, p1}, Lcom/android/settings/ProgressCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 316
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, p1}, Lcom/android/settings/ProgressCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 320
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 321
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 322
    .local v3, spedit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    .local v1, devName:Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 325
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 326
    const/4 v5, 0x1

    .line 329
    .end local v0           #addMac:Ljava/lang/String;
    .end local v1           #devName:Ljava/lang/String;
    .end local v2           #removeMac:Ljava/lang/String;
    .end local v3           #spedit:Landroid/content/SharedPreferences$Editor;
    .end local v4           #whiteList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return v5

    .line 310
    .restart local v0       #addMac:Ljava/lang/String;
    .restart local v2       #removeMac:Ljava/lang/String;
    .restart local v4       #whiteList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--DIS"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    .end local v0           #addMac:Ljava/lang/String;
    .end local v2           #removeMac:Ljava/lang/String;
    .end local v4           #whiteList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static setApAllowedDeviceConfig(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v2, "WifiApManageDevices"

    .line 261
    const-string v1, "WifiApManageDevices"

    const-string v1, "Entered setApAllowedDeviceConfig"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getAllAllowedDeviceFromSharedPrefs(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 263
    .local v0, devList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    const-string v1, "WifiApManageDevices"

    const-string v1, "setApAllowedDeviceConfig: dev list is not empty"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 266
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->manageSta(Ljava/util/List;Z)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const-string v1, "WifiApManageDevices"

    const-string v1, "setApAllowedDeviceConfig: dev list is empty"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 272
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->manageSta(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public static updateConnectedDevice(Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 224
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_0

    .line 225
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/ProgressCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    .line 226
    .local v0, dev:Lcom/android/settings/wifi/ConnectedDevice;
    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 229
    invoke-virtual {v0}, Lcom/android/settings/wifi/ConnectedDevice;->updateDisplay()V

    .line 232
    .end local v0           #dev:Lcom/android/settings/wifi/ConnectedDevice;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "wifi_ap_allow_all_devices"

    const-string v5, "WifiApManageDevices"

    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const-string v1, "WifiApManageDevices"

    const-string v1, "Launching WifiApManageDevices"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const v1, 0x7f040039

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->addPreferencesFromResource(I)V

    .line 83
    const-string v1, "wifi_ap_connected_devices"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ProgressCategory;

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/ProgressCategory;

    .line 84
    sput-object p0, Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;

    .line 85
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v11}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 87
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 88
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 89
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    .line 90
    .local v0, c:Lcom/android/settings/wifi/ConnectedDevice;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->addConnectedDeviceToScreen(Lcom/android/settings/wifi/ConnectedDevice;)V

    goto :goto_0

    .line 93
    .end local v0           #c:Lcom/android/settings/wifi/ConnectedDevice;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_0
    const-string v1, "max_devices"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mMaxDevicePref:Landroid/preference/Preference;

    .line 94
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mMaxDevicePref:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mMaxDevicePref:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mMaxDevicePref:Landroid/preference/Preference;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 100
    :goto_1
    const-string v1, "wifi_ap_allow_device"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevicePref:Landroid/preference/Preference;

    .line 101
    const-string v1, "wifi_ap_allowed_devices"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ProgressCategory;

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    .line 102
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevicePref:Landroid/preference/Preference;

    if-nez v1, :cond_3

    .line 103
    :cond_1
    const-string v1, "WifiApManageDevices"

    const-string v1, "Got mAllowedDevices == nULL - bailing out"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->finish()V

    .line 142
    .end local p0
    :goto_2
    return-void

    .line 98
    .restart local p0
    :cond_2
    const-string v1, "WifiApManageDevices"

    const-string v1, "Got mMaxDevicePref = NUll- something wrong!"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    :cond_3
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v11}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 108
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 109
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->initPrefs(Landroid/content/Context;)V

    .line 110
    const-string v1, "wifi_ap_allow_all_devices"

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiApManageDevices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    .line 111
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_4

    .line 112
    const-string v1, "WifiApManageDevices"

    const-string v1, "Got mAllowAllDevices  == nULL - bailing out"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->finish()V

    goto :goto_2

    .line 116
    :cond_4
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 118
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v9

    .line 119
    .local v9, savedAllowedDevices:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "wifi_ap_allow_all_devices"

    invoke-interface {v9, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 121
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 122
    .local v6, dev:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 123
    .local v4, mac:Ljava/lang/String;
    const/4 v8, 0x1

    .line 124
    .local v8, macEnable:Z
    const-string v1, "--DIS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 125
    const/4 v8, 0x0

    .line 126
    const-string v1, "--DIS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 128
    :cond_5
    new-instance v0, Lcom/android/settings/wifi/ConnectedDevice;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)V

    .line 129
    .restart local v0       #c:Lcom/android/settings/wifi/ConnectedDevice;
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 130
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/settings/ProgressCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 131
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    sget-object v2, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "wifi_ap_allow_all_devices"

    invoke-virtual {v1, v12}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto :goto_3

    .line 133
    .end local v0           #c:Lcom/android/settings/wifi/ConnectedDevice;
    .end local v4           #mac:Ljava/lang/String;
    .end local v6           #dev:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #macEnable:Z
    :cond_6
    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiApManageDevices;->updateAllowAllPref(Z)V

    .line 138
    .end local v7           #i$:Ljava/util/Iterator;
    :goto_4
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;

    .line 141
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiManager;

    sput-object p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    goto/16 :goto_2

    .line 136
    .restart local p0
    :cond_7
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiApManageDevices;->updateAllowAllPref(Z)V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 147
    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/ProgressCategory;

    .line 148
    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    .line 149
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 150
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x1

    .line 173
    const-string v4, "max_devices"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    const/4 v2, 0x0

    .line 176
    .local v2, maxDevices:I
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 186
    .end local p2
    :goto_0
    sget-object v4, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 188
    sget-object v4, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 189
    .local v3, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    iput v2, v3, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    .line 190
    sget-object v4, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v3, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 192
    .end local v3           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_ap_max_connected_devices"

    invoke-static {v4, v5, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    .end local v2           #maxDevices:I
    .end local p1
    :cond_1
    :goto_1
    return v7

    .line 177
    .restart local v2       #maxDevices:I
    .restart local p1
    .restart local p2
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 178
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "WifiApManageDevices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check your xml file!! Poor array value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recieved - ignore set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #maxDevices:I
    .restart local p2
    :cond_2
    sget-object v4, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_1

    .line 196
    sget-object v4, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "wifi_ap_allow_all_devices"

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "FALSE"

    :goto_2
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiApManageDevices;->invokeServiceToUnBlackList(Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_3
    const-string v6, "TRUE"

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 154
    instance-of v0, p2, Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_ap_manage_devices_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    check-cast p2, Lcom/android/settings/wifi/ConnectedDevice;

    .end local p2
    invoke-direct {v0, p0, p0, p2}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;Lcom/android/settings/wifi/ConnectedDevice;)V

    sput-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    .line 157
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->show()V

    move v0, v2

    .line 169
    :goto_0
    return v0

    .line 159
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevicePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 160
    new-instance v0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->show()V

    move v0, v2

    .line 162
    goto :goto_0

    .line 163
    :cond_1
    instance-of v0, p2, Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_ap_manage_allowed_devices_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    new-instance v0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    check-cast p2, Lcom/android/settings/wifi/ConnectedDevice;

    .end local p2
    invoke-direct {v0, p0, p0, p2}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;Lcom/android/settings/wifi/ConnectedDevice;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->show()V

    move v0, v2

    .line 167
    goto :goto_0

    .line 169
    .restart local p2
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    .line 287
    const-string v0, "WifiApManageDevices"

    const-string v1, "Entered onSharedPreferenceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->setApAllowedDeviceConfig(Landroid/content/Context;)V

    .line 289
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices;->updateAllowAllPref(Z)V

    .line 290
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAllowAllPref(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 279
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 280
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevicePref:Landroid/preference/Preference;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 282
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setEnabled(Z)V

    .line 283
    return-void

    :cond_1
    move v1, v2

    .line 279
    goto :goto_0

    .line 281
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

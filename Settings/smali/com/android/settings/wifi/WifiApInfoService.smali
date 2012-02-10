.class public Lcom/android/settings/wifi/WifiApInfoService;
.super Landroid/app/Service;
.source "WifiApInfoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApInfoService$Test;,
        Lcom/android/settings/wifi/WifiApInfoService$MaxConnectedDevicesSettingsObserver;,
        Lcom/android/settings/wifi/WifiApInfoService$BatteryManagementSettingsObserver;,
        Lcom/android/settings/wifi/WifiApInfoService$LocalBinder;
    }
.end annotation


# static fields
.field private static final CARRIER:Ljava/lang/String; = "/carrier"

.field private static final FILE_MOBILE_RX_BYTES:Ljava/lang/String; = "/rx_bytes"

.field private static final FILE_MOBILE_TX_BYTES:Ljava/lang/String; = "/tx_bytes"

.field public static final INTENT_EXTRA_MAC_STRING:Ljava/lang/String; = "mac_string"

.field public static final INTENT_RESTART_HOTSPOT:Ljava/lang/String; = "restart_hotspot"

.field public static final INTENT_UNBLACKLIST_MAC:Ljava/lang/String; = "unblacklist_mac"

.field private static final LOGTAG:Ljava/lang/String; = "WifiApInfoService"

.field public static final NOTIFICATION_INDEX_CONNECTION:I = 0x1

.field public static final NOTIFICATION_INDEX_DATA_WARNING:I = 0x3

.field public static final NOTIFICATION_INDEX_ROAMING:I = 0x2

.field private static final STATISTICS:Ljava/lang/String; = "/statistics"

.field private static final SYS_CLASS_NET_PATH:Ljava/lang/String; = "sys/class/net/"

.field private static mBlackListedMacList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mConnectedDevicesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/ConnectedDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static mMaxConnectedDevices:I

.field private static mRestartHs:Z

.field private static mTimeoutActive:Z


# instance fields
.field private mBatteryManagementSettingsObserver:Lcom/android/settings/wifi/WifiApInfoService$BatteryManagementSettingsObserver;

.field private mBatteryTimeoutValue:I

.field private final mBinder:Landroid/os/IBinder;

.field private mBlaskListSta:Ljava/lang/Runnable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentIface:Ljava/lang/String;

.field private mDeferedNotificationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/ConnectedDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceActivityCheck:Ljava/lang/Runnable;

.field private mDeviceStatSharedPref:Landroid/content/SharedPreferences;

.field private mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLinkStatsPoll:Ljava/lang/Runnable;

.field private mMaxConnectedDevicesSettingsObserver:Lcom/android/settings/wifi/WifiApInfoService$MaxConnectedDevicesSettingsObserver;

.field private mNotificationIntent:Landroid/app/PendingIntent;

.field private mNotifyManager:Landroid/app/NotificationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRefreshConnectedDeviceList:Ljava/lang/Runnable;

.field private mRes:Landroid/content/res/Resources;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegExs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Lcom/android/settings/wifi/WifiApInfoService;->mRestartHs:Z

    .line 75
    sput-boolean v0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 70
    const-string v0, "null"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/android/settings/wifi/WifiApInfoService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApInfoService$1;-><init>(Lcom/android/settings/wifi/WifiApInfoService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRefreshConnectedDeviceList:Ljava/lang/Runnable;

    .line 141
    new-instance v0, Lcom/android/settings/wifi/WifiApInfoService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApInfoService$2;-><init>(Lcom/android/settings/wifi/WifiApInfoService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/android/settings/wifi/WifiApInfoService$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApInfoService$3;-><init>(Lcom/android/settings/wifi/WifiApInfoService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;

    .line 336
    new-instance v0, Lcom/android/settings/wifi/WifiApInfoService$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApInfoService$4;-><init>(Lcom/android/settings/wifi/WifiApInfoService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 415
    new-instance v0, Lcom/android/settings/wifi/WifiApInfoService$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApInfoService$5;-><init>(Lcom/android/settings/wifi/WifiApInfoService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBlaskListSta:Ljava/lang/Runnable;

    .line 530
    new-instance v0, Lcom/android/settings/wifi/WifiApInfoService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApInfoService$LocalBinder;-><init>(Lcom/android/settings/wifi/WifiApInfoService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBinder:Landroid/os/IBinder;

    .line 579
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApInfoService;Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApInfoService;->updateNotificationDetails(Lcom/android/settings/wifi/ConnectedDevice;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotificationIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRefreshConnectedDeviceList:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiApInfoService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiRegExs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/settings/wifi/WifiApInfoService;->mRestartHs:Z

    return v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-boolean p0, Lcom/android/settings/wifi/WifiApInfoService;->mRestartHs:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiApInfoService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApInfoService;->clearUnBlackList()V

    return-void
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-boolean p0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApInfoService;ZLcom/android/settings/wifi/ConnectedDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiApInfoService;->updateConnDisconnNotification(ZLcom/android/settings/wifi/ConnectedDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApInfoService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApInfoService;->checkStartIdleCheckTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApInfoService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/WifiApInfoService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/WifiApInfoService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method private checkStartIdleCheckTimer()V
    .locals 4

    .prologue
    .line 267
    sget-object v0, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:I

    if-lez v0, :cond_1

    .line 269
    sget-boolean v0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    if-nez v0, :cond_0

    .line 270
    const-string v0, "WifiApInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No device connected - monitor idle for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private clearUnBlackList()V
    .locals 4

    .prologue
    .line 435
    const-string v2, "WifiApInfoService"

    const-string v3, "Unblack ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBlaskListSta:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, numBlackMacs:I
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    monitor-enter v2

    .line 439
    :try_start_0
    sget-object v3, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 440
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 441
    .end local v0           #numBlackMacs:I
    .local v1, numBlackMacs:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #numBlackMacs:I
    .restart local v0       #numBlackMacs:I
    if-lez v1, :cond_0

    .line 442
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBlaskListSta:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    move v1, v0

    .end local v0           #numBlackMacs:I
    .restart local v1       #numBlackMacs:I
    goto :goto_0

    .line 440
    .end local v1           #numBlackMacs:I
    .restart local v0       #numBlackMacs:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 445
    :cond_0
    return-void
.end method

.method public static readSettingsValueAndInit(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 5
    .parameter "contentResolver"
    .parameter "settingName"
    .parameter "defaultValue"

    .prologue
    .line 533
    move v1, p2

    .line 535
    .local v1, retVal:I
    :try_start_0
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 543
    :goto_0
    return v1

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, e:Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
    const-string v2, "WifiApInfoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldnt find setting settingName - defaulting to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and persisting..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {v0}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;->printStackTrace()V

    .line 539
    invoke-static {p0, p1, p2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateConnDisconnNotification(ZLcom/android/settings/wifi/ConnectedDevice;)Z
    .locals 10
    .parameter "isConnect"
    .parameter "c"

    .prologue
    const v7, 0x7f08024f

    const v6, 0x7f08024e

    const/4 v5, 0x1

    const-string v9, " "

    const-string v8, "\n"

    .line 291
    if-eqz p1, :cond_2

    .line 292
    iget-object v1, p2, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    const-string v2, "0.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_0
    const/4 v1, 0x0

    .line 324
    :goto_0
    return v1

    .line 299
    :cond_1
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020097

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f080256

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 302
    .local v0, n:Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f080254

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotificationIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 306
    const-string v1, "WifiApInfoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_1
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 322
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 323
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move v1, v5

    .line 324
    goto/16 :goto_0

    .line 308
    .end local v0           #n:Landroid/app/Notification;
    :cond_2
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020098

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f080257

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 311
    .restart local v0       #n:Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f080255

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotificationIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 316
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 319
    :cond_3
    const-string v1, "WifiApInfoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateNotificationDetails(Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/WifiApInfoService;->updateConnDisconnNotification(ZLcom/android/settings/wifi/ConnectedDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 286
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 457
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    .line 458
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 459
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    .line 460
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 461
    .local v0, cm:Landroid/net/ConnectivityManager;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/wifi/WifiApManageDevices;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 463
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotificationIntent:Landroid/app/PendingIntent;

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mContentResolver:Landroid/content/ContentResolver;

    .line 466
    new-instance v2, Lcom/android/settings/wifi/WifiApInfoService$BatteryManagementSettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiApInfoService$BatteryManagementSettingsObserver;-><init>(Lcom/android/settings/wifi/WifiApInfoService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryManagementSettingsObserver:Lcom/android/settings/wifi/WifiApInfoService$BatteryManagementSettingsObserver;

    .line 467
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "wifi_ap_battery_timeout"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/wifi/WifiApInfoService;->readSettingsValueAndInit(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:I

    .line 470
    new-instance v2, Lcom/android/settings/wifi/WifiApInfoService$MaxConnectedDevicesSettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiApInfoService$MaxConnectedDevicesSettingsObserver;-><init>(Lcom/android/settings/wifi/WifiApInfoService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevicesSettingsObserver:Lcom/android/settings/wifi/WifiApInfoService$MaxConnectedDevicesSettingsObserver;

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->readMaxConnectedDevicesSetting()V

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SHARED_PREFERENCE_DEVICE_STATS"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;

    .line 473
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 474
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 475
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/WifiApInfoService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiRegExs:[Ljava/lang/String;

    .line 477
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 478
    sput-boolean v5, Lcom/android/settings/wifi/WifiApInfoService;->mRestartHs:Z

    .line 479
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 480
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRefreshConnectedDeviceList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 512
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 513
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    .line 514
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 516
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApInfoService;->clearUnBlackList()V

    .line 518
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 519
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApInfoService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 520
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 521
    return-void

    .line 516
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "mac_string"

    const-string v3, "WifiApInfoService"

    .line 484
    const-string v1, "WifiApInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 487
    const-string v1, "unblacklist_mac"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    const-string v1, "WifiApInfoService"

    const-string v1, "Recieved a UnBlacklist request"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v1, "mac_string"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    const-string v1, "mac_string"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, mac:Ljava/lang/String;
    const-string v1, "WifiApInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unblack MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    monitor-enter v1

    .line 494
    :try_start_0
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget-object v3, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->manageSta(Ljava/util/List;Z)V

    .line 496
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBlaskListSta:Ljava/lang/Runnable;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 506
    .end local v0           #mac:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 496
    .restart local v0       #mac:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 499
    .end local v0           #mac:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApInfoService;->clearUnBlackList()V

    goto :goto_0

    .line 501
    :cond_2
    const-string v1, "restart_hotspot"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    sput-boolean v5, Lcom/android/settings/wifi/WifiApInfoService;->mRestartHs:Z

    .line 503
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0
.end method

.method readMaxConnectedDevicesSetting()V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_ap_max_connected_devices"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiApInfoService;->readSettingsValueAndInit(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I

    .line 450
    sget v0, Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I

    if-nez v0, :cond_0

    .line 452
    const/16 v0, 0xa

    sput v0, Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I

    .line 454
    :cond_0
    return-void
.end method

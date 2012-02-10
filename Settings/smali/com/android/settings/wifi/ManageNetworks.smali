.class public Lcom/android/settings/wifi/ManageNetworks;
.super Landroid/preference/PreferenceActivity;
.source "ManageNetworks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ManageNetworks$Scanner;
    }
.end annotation


# static fields
.field public static final CERT_CONTENT_URI:Landroid/net/Uri; = null

#the value of this static final field might be set in the static constructor
.field private static final HOTSPOT_ENABLED:Z = false

.field private static final KEY_FORGET_ALL:Ljava/lang/String; = "forget_all"

.field private static final MENU_ID_ADVANCED:I = 0x2

.field private static final MENU_ID_CONNECT:I = 0x3

.field private static final MENU_ID_FORGET:I = 0x4

.field private static final MENU_ID_MODIFY:I = 0x5

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_ID_UPDATE_PROXY:I = 0x6

.field private static final MENU_ID_WAPICERT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ManageNetworks"

.field private static dialogClassName:Ljava/lang/String;


# instance fields
.field private mAccessPoints:Lcom/android/settings/ProgressCategory;

.field private mDialog:Landroid/app/Dialog;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetAll:Landroid/preference/Preference;

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastPriority:I

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mNetworkStateChanged:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetNetworks:Z

.field private final mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    const-string v0, "content://com.motorola.wapicertificatemanager/certs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/ManageNetworks;->CERT_CONTENT_URI:Landroid/net/Uri;

    .line 127
    const-string v0, "ro.mot.wifi.hotspot"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/ManageNetworks;->HOTSPOT_ENABLED:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 116
    iput-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mKeyStoreNetworkId:I

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mNetworkStateChanged:Z

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$1;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/ManageNetworks$Scanner;-><init>(Lcom/android/settings/wifi/ManageNetworks;Lcom/android/settings/wifi/ManageNetworks$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/ManageNetworks;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ManageNetworks;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/ManageNetworks;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/ManageNetworks;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private connect(I)V
    .locals 9
    .parameter "networkId"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 516
    if-ne p1, v7, :cond_0

    .line 558
    :goto_0
    return-void

    .line 521
    :cond_0
    iget v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    const v5, 0xf4240

    if-le v4, v5, :cond_3

    .line 522
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v4

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 523
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 524
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v7, :cond_1

    .line 525
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 526
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 527
    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 528
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 522
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 531
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_2
    iput v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    .line 535
    .end local v2           #i:I
    :cond_3
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 536
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    iput p1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 537
    iget v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 539
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_4

    .line 540
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v3

    .line 541
    .local v3, level:I
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->networkMode:I

    .line 542
    if-ne v3, v7, :cond_4

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkMode:I

    if-ne v4, v6, :cond_4

    .line 543
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->displayAdhocPrompt()V

    .line 547
    .end local v3           #level:I
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_5

    .line 548
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    check-cast v4, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v4, v1}, Lcom/android/settings/wifi/WifiDialog;->updateProxyFieldsToConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 551
    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 552
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->saveNetworks()V

    .line 555
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, p1, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 556
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 557
    iput-boolean v6, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    goto :goto_0
.end method

.method private enableNetworks()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 561
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 562
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 563
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v5, v8, :cond_0

    .line 564
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 561
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 568
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 569
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3

    .line 570
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 571
    .local v4, remConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_2

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v5, v8, :cond_2

    .line 572
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_1

    .line 577
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #remConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iput-boolean v7, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    .line 578
    return-void
.end method

.method private forget(I)V
    .locals 1
    .parameter "networkId"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 488
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->saveNetworks()V

    .line 489
    return-void
.end method

.method private forgetAllNetworks()V
    .locals 5

    .prologue
    .line 492
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 493
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 494
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 498
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    sget-boolean v3, Lcom/android/settings/wifi/ManageNetworks;->HOTSPOT_ENABLED:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->isHotSpotSsid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getHotSpotOption()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    const-string v3, "ManageNetworks"

    const-string v4, "Not forgetting Hot Spot when AutoConnect is on"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_0
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ManageNetworks;->forget(I)V

    goto :goto_0

    .line 513
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private getWapiCertCount()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 326
    const/4 v6, 0x0

    .line 327
    .local v6, cur:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 328
    .local v7, curCert:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "ascertpath"

    aput-object v0, v2, v9

    .line 331
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/ManageNetworks;->CERT_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 337
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v9

    .line 340
    :goto_1
    return v0

    .line 333
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 334
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "ManageNetworks"

    const-string v1, "query failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v6, 0x0

    goto :goto_0

    .line 340
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_1
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 636
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ManageNetworks;->updateWifiState(I)V

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    goto :goto_0

    .line 642
    :cond_2
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 643
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 644
    iput-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 646
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    goto :goto_0

    .line 647
    :cond_4
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 648
    const-string v1, "newState"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SupplicantState;

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ManageNetworks;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 650
    :cond_5
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 651
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mNetworkStateChanged:Z

    .line 652
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ManageNetworks;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 654
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mNetworkStateChanged:Z

    goto :goto_0

    .line 655
    :cond_6
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ManageNetworks;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private launchWAPICertMgr()V
    .locals 4

    .prologue
    .line 702
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 703
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    const-string v2, "vnd.motorola.wapicertificatemanager/vnd.motorola.wapi.certs"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/ManageNetworks;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "ManageNetworks"

    const-string v3, "No proper activity can be launched to view vnd.motorola.wapi.certs"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    .line 459
    invoke-static {p1}, Lcom/android/settings/wifi/WifiDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 461
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mKeyStoreNetworkId:I

    .line 462
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    move v0, v1

    .line 465
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetworks()V
    .locals 1

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->enableNetworks()V

    .line 583
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 584
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    .line 585
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 438
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    .line 439
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 440
    return-void
.end method

.method private showForgetAllDialog()V
    .locals 3

    .prologue
    .line 443
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080178

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08028b

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08034c

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 455
    .local v0, dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    .line 456
    return-void
.end method

.method private updateAccessPoints()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v1, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 590
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_4

    .line 591
    iput v10, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    .line 592
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 593
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v9, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    if-le v8, v9, :cond_0

    .line 594
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    .line 598
    :cond_0
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v8, :cond_2

    .line 599
    const/4 v8, 0x2

    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 605
    :cond_1
    :goto_1
    sget-boolean v8, Lcom/android/settings/wifi/ManageNetworks;->HOTSPOT_ENABLED:Z

    if-eqz v8, :cond_3

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/wifi/AccessPoint;->isHotSpotSsid(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getHotSpotOption()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 607
    const-string v8, "ManageNetworks"

    const-string v9, "Not adding ATT Hotspots in the list of managed networks"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    :cond_2
    iget-boolean v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    if-eqz v8, :cond_1

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 601
    iput v10, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 612
    :cond_3
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 613
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v9, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v8, v9}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 614
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v7

    .line 620
    .local v7, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v7, :cond_6

    .line 621
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 622
    .local v6, result:Landroid/net/wifi/ScanResult;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 623
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v6}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    goto :goto_2

    .line 629
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #result:Landroid/net/wifi/ScanResult;
    :cond_6
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v8}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 630
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 631
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v8, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 633
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_7
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 663
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->pause()V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_3

    .line 668
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->pause()V

    .line 673
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 674
    if-eqz p1, :cond_2

    .line 675
    iput-object p1, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 678
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_4

    .line 679
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 678
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 670
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->resume()V

    goto :goto_1

    .line 682
    .restart local v0       #i:I
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_5

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_5

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 684
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    .line 685
    iget-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mNetworkStateChanged:Z

    if-eqz v1, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->enableNetworks()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 691
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->resume()V

    .line 693
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    .line 698
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->pause()V

    .line 696
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    goto :goto_0
.end method


# virtual methods
.method public error(I)V
    .locals 1
    .parameter "messageResId"

    .prologue
    .line 471
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 472
    return-void
.end method

.method public getHotSpotOption()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 477
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 479
    .local v1, isHotSpotAutoConnect:Z
    :try_start_0
    const-string v2, "wifi_hotspot_autoconnect"

    invoke-static {v0, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v3, :cond_0

    move v1, v3

    .line 481
    :goto_0
    return v1

    .line 479
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 480
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v4, 0x5

    const v7, 0x7f080719

    const/4 v6, 0x1

    const/4 v5, -0x1

    const-string v8, "\"null\""

    .line 346
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    if-nez v3, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, dialogClassName:Ljava/lang/String;
    const-string v3, "android.app.AlertDialog"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 352
    if-ne p2, v5, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->forgetAllNetworks()V

    goto :goto_0

    .line 358
    :cond_2
    const/4 v3, -0x3

    if-ne p2, v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_4

    .line 362
    sget-boolean v3, Lcom/android/settings/wifi/ManageNetworks;->HOTSPOT_ENABLED:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->isHotSpotSsid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getHotSpotOption()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    const-string v3, "ManageNetworks"

    const-string v4, "Not forgetting Hot Spot when AutoConnect is on"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const v3, 0x7f0801d9

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ManageNetworks;->error(I)V

    goto :goto_0

    .line 370
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ManageNetworks;->forget(I)V

    goto :goto_0

    .line 375
    :cond_4
    if-ne p2, v5, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    check-cast v2, Lcom/android/settings/wifi/WifiDialog;

    .line 377
    .local v2, temp:Lcom/android/settings/wifi/WifiDialog;
    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 379
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 381
    if-eqz v0, :cond_7

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-ne v3, v6, :cond_7

    .line 383
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    const-string v4, "\"null\""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    const-string v4, "\"null\""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 385
    :cond_5
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 386
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v5, :cond_0

    .line 387
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ManageNetworks;->forget(I)V

    goto/16 :goto_0

    .line 390
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->getWapiCertCount()I

    move-result v3

    if-nez v3, :cond_a

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v5, :cond_a

    .line 391
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 392
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ManageNetworks;->forget(I)V

    goto/16 :goto_0

    .line 395
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_a

    .line 396
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v3, v4, :cond_a

    .line 398
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->wapiASCert:Ljava/lang/String;

    const-string v4, "\"null\""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->wapiUserCert:Ljava/lang/String;

    const-string v4, "\"null\""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 399
    :cond_8
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 400
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v5, :cond_0

    .line 402
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ManageNetworks;->forget(I)V

    goto/16 :goto_0

    .line 406
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->getWapiCertCount()I

    move-result v3

    if-nez v3, :cond_a

    .line 407
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 408
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ManageNetworks;->forget(I)V

    goto/16 :goto_0

    .line 416
    :cond_a
    if-nez v0, :cond_b

    .line 417
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ManageNetworks;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ManageNetworks;->connect(I)V

    goto/16 :goto_0

    .line 420
    :cond_b
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v5, :cond_0

    .line 421
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    .line 422
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 423
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->saveNetworks()V

    .line 425
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    .line 426
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ManageNetworks;->connect(I)V

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const v6, 0x7f080719

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "\"null\""

    .line 252
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_0

    .line 253
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 307
    .end local p0
    :goto_0
    return v2

    .line 255
    .restart local p0
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 307
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 258
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 259
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 263
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->wapiASCert:Ljava/lang/String;

    const-string v3, "\"null\""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->wapiUserCert:Ljava/lang/String;

    const-string v3, "\"null\""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    :cond_1
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v4

    .line 265
    goto :goto_0

    .line 267
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->getWapiCertCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 268
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 269
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->forget(I)V

    move v2, v4

    .line 270
    goto :goto_0

    .line 275
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->connect(I)V

    :cond_4
    :goto_1
    move v2, v4

    .line 288
    goto :goto_0

    .line 277
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v2, :cond_6

    .line 279
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 280
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 281
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 282
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 283
    .local v1, networkId:I
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 284
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ManageNetworks;->connect(I)V

    goto :goto_1

    .line 286
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #networkId:I
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v5}, Lcom/android/settings/wifi/ManageNetworks;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_1

    .line 290
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->forget(I)V

    move v2, v4

    .line 291
    goto/16 :goto_0

    .line 293
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/ManageNetworks;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    move v2, v4

    .line 294
    goto/16 :goto_0

    .line 297
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/ManageNetworks;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 298
    iget-object p0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    .end local p0
    check-cast p0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiDialog;->setProxySettingsConfig(Z)V

    move v2, v4

    .line 299
    goto/16 :goto_0

    .line 303
    .restart local p0
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->launchWAPICertMgr()V

    move v2, v4

    .line 304
    goto/16 :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 161
    const v0, 0x7f040018

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->addPreferencesFromResource(I)V

    .line 162
    const-string v0, "access_points"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->registerForContextMenu(Landroid/view/View;)V

    .line 166
    const-string v0, "forget_all"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mForgetAll:Landroid/preference/Preference;

    .line 167
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v5, 0x5

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 215
    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 219
    .local v0, preference:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 220
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .end local v0           #preference:Landroid/preference/Preference;
    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 221
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 222
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 223
    const/4 v1, 0x3

    const v2, 0x7f0803e3

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_1

    .line 226
    const/4 v1, 0x4

    const v2, 0x7f0803e4

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 227
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_1

    .line 228
    const v1, 0x7f0803e5

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 232
    :cond_1
    const/4 v1, 0x6

    const v2, 0x7f0801cf

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 235
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v1, v5, :cond_2

    .line 238
    const/4 v1, 0x7

    const v2, 0x7f0803e6

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 244
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 191
    const/4 v0, 0x1

    const v1, 0x7f0803e1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 193
    const/4 v0, 0x2

    const v1, 0x7f0803e2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 195
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 210
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->resume()V

    :cond_0
    move v0, v2

    .line 205
    goto :goto_0

    .line 207
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/AdvancedSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 208
    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->pause()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Landroid/app/Dialog;

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    if-eqz v0, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->enableNetworks()V

    .line 187
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 312
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 313
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 314
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/ManageNetworks;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 320
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 315
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mForgetAll:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->showForgetAllDialog()V

    goto :goto_0

    .line 318
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/ManageNetworks;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-void
.end method

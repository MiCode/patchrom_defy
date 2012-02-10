.class public Lcom/android/settings/wifi/PrefNetworkFinder;
.super Landroid/preference/PreferenceActivity;
.source "PrefNetworkFinder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH_FOR_NETWORK_NAME:I = 0x22

.field private static final MENU_ID_SETTINGS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PrefNetworkFinder"


# instance fields
.field private final WPS_MSG_DISMISS:I

.field private final WPS_MSG_SHOW:I

.field private mAccessPoints:Lcom/android/settings/ProgressCategory;

.field private mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastPriority:I

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mNetworkStateChanged:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetNetworks:Z

.field private final mScanner:Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsPbcOverlapShown:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 63
    const/16 v0, 0x6d

    iput v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->WPS_MSG_SHOW:I

    .line 64
    const/16 v0, 0x6e

    iput v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->WPS_MSG_DISMISS:I

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mResetNetworks:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mKeyStoreNetworkId:I

    .line 85
    iput-boolean v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mNetworkStateChanged:Z

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mFilter:Landroid/content/IntentFilter;

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.motorola.android.net.wifi.WPS_EVENT_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/android/settings/wifi/PrefNetworkFinder$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/PrefNetworkFinder$1;-><init>(Lcom/android/settings/wifi/PrefNetworkFinder;)V

    iput-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;-><init>(Lcom/android/settings/wifi/PrefNetworkFinder;Lcom/android/settings/wifi/PrefNetworkFinder$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mScanner:Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/PrefNetworkFinder;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/PrefNetworkFinder;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/PrefNetworkFinder;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/PrefNetworkFinder;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private connect(I)V
    .locals 8
    .parameter "networkId"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 273
    if-ne p1, v6, :cond_0

    .line 308
    :goto_0
    return-void

    .line 278
    :cond_0
    iget v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastPriority:I

    const v4, 0xf4240

    if-le v3, v4, :cond_3

    .line 279
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    sub-int v2, v3, v5

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 280
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 281
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v6, :cond_1

    .line 282
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 283
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 284
    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 285
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 279
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 288
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_2
    iput v7, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastPriority:I

    .line 291
    .end local v2           #i:I
    :cond_3
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 292
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    iput p1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 293
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_5

    .line 294
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->networkMode:I

    .line 299
    :cond_4
    :goto_2
    iget v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastPriority:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastPriority:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 300
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 301
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->saveNetworks()V

    .line 305
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 306
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 307
    iput-boolean v5, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mResetNetworks:Z

    goto :goto_0

    .line 295
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_4

    .line 296
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget v3, v3, Lcom/android/settings/wifi/WifiDialog;->netMode:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->networkMode:I

    goto :goto_2
.end method

.method private displayAdhocPrompt()V
    .locals 2

    .prologue
    .line 470
    const v0, 0x7f0800cb

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 471
    return-void
.end method

.method private enableNetworks()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 311
    iget-object v5, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 312
    iget-object v5, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 313
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v5, v8, :cond_0

    .line 314
    iget-object v5, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 311
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 317
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 318
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3

    .line 319
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

    .line 320
    .local v4, remConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_2

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v5, v8, :cond_2

    .line 321
    iget-object v5, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_1

    .line 325
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #remConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iput-boolean v7, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mResetNetworks:Z

    .line 326
    return-void
.end method

.method private findConfiguredNetwork(Lcom/android/settings/wifi/AccessPoint;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .parameter "state"

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 554
    .local v2, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 555
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 556
    .local v1, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v4, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v4, :cond_0

    move-object v3, v1

    .line 561
    .end local v1           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    return-object v3

    .line 554
    .restart local v1       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 561
    .end local v1           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private forget(I)V
    .locals 1
    .parameter "networkId"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 269
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->saveNetworks()V

    .line 270
    return-void
.end method

.method private getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 566
    .local v0, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    return-object v0
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 395
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder;->updateWifiState(I)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->updateAccessPoints()V

    goto :goto_0

    .line 401
    :cond_2
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 402
    iget-object v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 403
    iput-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 405
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->updateAccessPoints()V

    goto :goto_0

    .line 406
    :cond_4
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 407
    const-string v1, "newState"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SupplicantState;

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 409
    :cond_5
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mNetworkStateChanged:Z

    .line 411
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 413
    iput-boolean v2, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mNetworkStateChanged:Z

    goto :goto_0

    .line 414
    :cond_6
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 415
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/PrefNetworkFinder;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 417
    :cond_7
    const-string v1, "com.motorola.android.net.wifi.WPS_EVENT_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    const-string v1, "wpsEvent"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "wpsEventInfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/PrefNetworkFinder;->handleWpsEventAvailable(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private handleWpsEventAvailable(ILjava/lang/String;)V
    .locals 11
    .parameter "event"
    .parameter "info"

    .prologue
    const/16 v9, 0x9

    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v6, 0x1

    const-string v10, "PrefNetworkFinder"

    .line 571
    const-string v4, "PrefNetworkFinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WPS EVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v4, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiDialog;->getAPInstance()Lcom/android/settings/wifi/AccessPoint;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    .line 576
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_0

    .line 577
    if-eq p1, v6, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v4, 0x3

    if-ne p1, v4, :cond_8

    .line 580
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getWpsPinCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 581
    .local v2, isWpsPbcRunning:Z
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v4

    sub-int v1, v4, v6

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 582
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 583
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isWpsPbcActivated()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    .line 586
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-object v5, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/WifiDialog;->startWpsPbc(Lcom/android/settings/wifi/AccessPoint;)Z

    .line 587
    const-string v4, "PrefNetworkFinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found PBC activated AP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v1           #i:I
    .end local v2           #isWpsPbcRunning:Z
    :cond_3
    :goto_2
    if-eq p1, v7, :cond_4

    if-eq p1, v8, :cond_4

    if-ne p1, v9, :cond_5

    .line 631
    :cond_4
    const/16 p1, 0x6e

    .line 634
    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v4, p1, p2}, Lcom/android/settings/wifi/PrefNetworkFinder;->onWpsEventAvailable(Lcom/android/settings/wifi/AccessPoint;ILjava/lang/String;)V

    .line 636
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_0

    .line 637
    const/16 v4, 0x6e

    if-eq p1, v4, :cond_6

    if-eq p1, v7, :cond_6

    if-eq p1, v8, :cond_6

    if-ne p1, v9, :cond_0

    .line 641
    :cond_6
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    goto/16 :goto_0

    .line 581
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .restart local v1       #i:I
    .restart local v2       #isWpsPbcRunning:Z
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 591
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v1           #i:I
    .end local v2           #isWpsPbcRunning:Z
    :cond_8
    const/4 v4, 0x4

    if-ne p1, v4, :cond_9

    .line 592
    iget-boolean v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWpsPbcOverlapShown:Z

    if-nez v4, :cond_0

    .line 595
    iput-boolean v6, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWpsPbcOverlapShown:Z

    .line 601
    const/16 p1, 0x6d

    .line 602
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const v5, 0x7f0800b9

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/WifiDialog;->readWpsString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 603
    :cond_9
    const/4 v4, 0x5

    if-eq p1, v4, :cond_3

    .line 604
    const/4 v4, 0x6

    if-ne p1, v4, :cond_b

    .line 605
    const/16 p1, 0x6d

    .line 606
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getWpsPinCode()Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, pinCode:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 608
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const v5, 0x7f0800b2

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/WifiDialog;->readWpsString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 610
    :cond_a
    iget-object v4, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const v5, 0x7f0800b4

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/WifiDialog;->readWpsString(I)Ljava/lang/String;

    move-result-object p2

    .line 611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 613
    .end local v3           #pinCode:Ljava/lang/String;
    :cond_b
    if-ne p1, v7, :cond_c

    .line 614
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/PrefNetworkFinder;->handleWpsSuccessEvent(Ljava/lang/String;)V

    goto :goto_2

    .line 615
    :cond_c
    if-ne p1, v8, :cond_d

    .line 616
    const v4, 0x7f0800b7

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 618
    :cond_d
    if-ne p1, v9, :cond_3

    .line 619
    const v4, 0x7f0800b8

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2
.end method

.method private handleWpsSuccessEvent(Ljava/lang/String;)V
    .locals 19
    .parameter "info"

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v15, wpsConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    const-string v16, "id="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 481
    const-string v16, "="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 482
    .local v12, val:Ljava/lang/String;
    const-string v16, ","

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, arrayNetworkIds:[Ljava/lang/String;
    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v9, v0

    .line 484
    .local v9, idarr:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 486
    :try_start_0
    aget-object v16, v4, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    aput v16, v9, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 487
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    .line 488
    .local v7, e:Ljava/lang/NumberFormatException;
    const/16 v16, -0x1

    aput v16, v9, v8

    goto :goto_2

    .line 492
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v14

    .line 493
    .local v14, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    .line 494
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 495
    .local v13, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 496
    move-object v0, v13

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    aget v17, v9, v10

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 497
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 495
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 504
    .end local v4           #arrayNetworkIds:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #idarr:[I
    .end local v10           #j:I
    .end local v12           #val:Ljava/lang/String;
    .end local v13           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v14           #wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_6

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder;->findConfiguredNetwork(Lcom/android/settings/wifi/AccessPoint;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 506
    .local v6, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_0

    .line 507
    monitor-enter p0

    .line 508
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 509
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v16

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16

    .line 514
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    const/4 v5, 0x0

    .line 515
    .local v5, bMatched:Z
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    sub-int v8, v16, v17

    .restart local v8       #i:I
    :goto_5
    if-ltz v8, :cond_8

    .line 516
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 517
    .restart local v13       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v16, "PrefNetworkFinder"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "New network config from WPS method, id: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v13

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    monitor-enter p0

    .line 521
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v16, v0

    move-object v0, v13

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/PrefNetworkFinder;->mCurrentWpsAp:Lcom/android/settings/wifi/AccessPoint;

    move-object v3, v0

    .line 524
    .local v3, ap:Lcom/android/settings/wifi/AccessPoint;
    const/4 v5, 0x1

    .line 529
    .end local v3           #ap:Lcom/android/settings/wifi/AccessPoint;
    :cond_7
    monitor-exit p0

    .line 515
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 529
    :catchall_1
    move-exception v16

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v16

    .line 532
    .end local v13           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_8
    const/16 v16, 0x1

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/wifi/WifiDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 534
    .restart local v6       #config:Landroid/net/wifi/WifiConfiguration;
    if-nez v6, :cond_9

    .line 535
    const-string v16, "PrefNetworkFinder"

    const-string v17, "handleWpsSuccessEvent...config=null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 538
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v11

    .line 539
    .local v11, networkId:I
    const/16 v16, -0x1

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move v1, v11

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 541
    iput v11, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 542
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder;->connect(I)V

    goto/16 :goto_0
.end method

.method private onWpsEventAvailable(Lcom/android/settings/wifi/AccessPoint;ILjava/lang/String;)V
    .locals 1
    .parameter "ap"
    .parameter "event"
    .parameter "info"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    instance-of v0, v0, Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/wifi/WifiDialog;->onWpsEventAvailable(Lcom/android/settings/wifi/AccessPoint;ILjava/lang/String;)V

    .line 651
    :cond_0
    return-void
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    .line 250
    invoke-static {p1}, Lcom/android/settings/wifi/WifiDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 252
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mKeyStoreNetworkId:I

    .line 253
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    move v0, v1

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetworks()V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->enableNetworks()V

    .line 331
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 332
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->updateAccessPoints()V

    .line 333
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 245
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 247
    return-void
.end method

.method private updateAccessPoints()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v1, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v9, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 339
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_4

    .line 340
    iput v11, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastPriority:I

    .line 341
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 342
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v10, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastPriority:I

    if-le v9, v10, :cond_1

    .line 343
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v9, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastPriority:I

    .line 347
    :cond_1
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v9, :cond_3

    .line 348
    const/4 v9, 0x2

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 353
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v9, :cond_0

    .line 354
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 355
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v9, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v10, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v9, v10}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 356
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    iget-boolean v9, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mResetNetworks:Z

    if-eqz v9, :cond_2

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 350
    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 361
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 362
    .local v8, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v8, :cond_9

    .line 363
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 364
    .local v7, result:Landroid/net/wifi/ScanResult;
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    .line 367
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v10, "[IBSS]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 369
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v10, "WEP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v10, "OPEN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 374
    :cond_6
    const/4 v4, 0x0

    .line 375
    .local v4, found:Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 376
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 377
    const/4 v4, 0x1

    goto :goto_3

    .line 380
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_8
    if-nez v4, :cond_5

    .line 381
    new-instance v9, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v9, p0, v7}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 386
    .end local v4           #found:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #result:Landroid/net/wifi/ScanResult;
    :cond_9
    iget-object v9, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 387
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 388
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    .line 389
    iget-object v9, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 392
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_b
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mScanner:Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->pause()V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_3

    .line 432
    iget-object v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mScanner:Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->pause()V

    .line 437
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 438
    if-eqz p1, :cond_2

    .line 439
    iput-object p1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_4

    .line 443
    iget-object v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 442
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 434
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mScanner:Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->resume()V

    goto :goto_1

    .line 446
    .restart local v0       #i:I
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mResetNetworks:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_5

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_5

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 448
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->updateAccessPoints()V

    .line 449
    iget-boolean v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mNetworkStateChanged:Z

    if-eqz v1, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->enableNetworks()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 455
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mScanner:Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->resume()V

    .line 457
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->updateAccessPoints()V

    .line 459
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 465
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mScanner:Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->pause()V

    .line 463
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    goto :goto_0
.end method


# virtual methods
.method public error(I)V
    .locals 1
    .parameter "messageResId"

    .prologue
    .line 264
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 265
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 192
    const/4 v3, -0x3

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/PrefNetworkFinder;->forget(I)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    if-ne p2, v5, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 196
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x22

    if-le v3, v4, :cond_2

    .line 198
    const v3, 0x7f0800c0

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 200
    :cond_2
    if-nez v0, :cond_3

    .line 201
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/PrefNetworkFinder;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/PrefNetworkFinder;->connect(I)V

    goto :goto_0

    .line 204
    :cond_3
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v5, :cond_4

    .line 205
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 207
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->saveNetworks()V

    .line 208
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    .line 209
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/PrefNetworkFinder;->connect(I)V

    goto :goto_0

    .line 211
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->isWpsSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 212
    const/4 v2, 0x0

    .line 213
    .local v2, result:I
    iput-boolean v6, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWpsPbcOverlapShown:Z

    .line 214
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->handleWPSConnect()I

    move-result v2

    .line 215
    if-ne v2, v5, :cond_5

    .line 216
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 217
    .local v1, networkId:I
    if-eq v1, v5, :cond_0

    .line 218
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 219
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 220
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder;->connect(I)V

    goto/16 :goto_0

    .line 222
    .end local v1           #networkId:I
    :cond_5
    const v3, 0x7f0800bf

    if-eq v2, v3, :cond_6

    const v3, 0x7f0800b6

    if-ne v2, v3, :cond_0

    .line 224
    :cond_6
    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 227
    .end local v2           #result:I
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 228
    .restart local v1       #networkId:I
    if-eq v1, v5, :cond_0

    .line 229
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 230
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 231
    iget-object v3, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v3, v3, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v3, :cond_8

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/PrefNetworkFinder;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 232
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->saveNetworks()V

    .line 233
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder;->connect(I)V

    goto/16 :goto_0

    .line 235
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder;->connect(I)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrefNetworkFinder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 113
    const v0, 0x7f04003b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrefNetworkFinder;->addPreferencesFromResource(I)V

    .line 115
    const-string v0, "access_points"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrefNetworkFinder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrefNetworkFinder;->registerForContextMenu(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 158
    const/4 v0, 0x1

    const v1, 0x7f0801b7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 160
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->unbindLastProgressBar()V

    .line 153
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 175
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 167
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, iSetting:Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrefNetworkFinder;->startActivity(Landroid/content/Intent;)V

    .line 173
    const/4 v1, 0x1

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrefNetworkFinder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mScanner:Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->pause()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mResetNetworks:Z

    if-eqz v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/android/settings/wifi/PrefNetworkFinder;->enableNetworks()V

    .line 143
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 181
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 182
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 188
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 186
    .restart local p2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 123
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    iget v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mKeyStoreNetworkId:I

    if-eq v0, v2, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 126
    iget v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mKeyStoreNetworkId:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/PrefNetworkFinder;->connect(I)V

    .line 128
    :cond_0
    iput v2, p0, Lcom/android/settings/wifi/PrefNetworkFinder;->mKeyStoreNetworkId:I

    .line 129
    return-void
.end method

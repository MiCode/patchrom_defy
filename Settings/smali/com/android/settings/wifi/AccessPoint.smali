.class Lcom/android/settings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# static fields
.field public static final ADHOC:I = 0x1

.field private static final ADHOC_CAPABILITY:Ljava/lang/String; = "[IBSS]"

#the value of this static final field might be set in the static constructor
.field private static final HOTSPOT_ENABLED:Z = false

.field public static final INFRASTRUCTURE:I = 0x0

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_WAPI_CERT:I = 0x5

.field static final SECURITY_WAPI_PSK:I = 0x4

.field static final SECURITY_WEP:I = 0x1

.field static final SECURITY_WPA_PSK:I = 0x2

.field private static final STATE_NONE:[I = null

.field private static final STATE_SECURED:[I = null

.field private static final TAG:Ljava/lang/String; = "AccessPoint"

.field public static final WAPI_PASSWORD_ASCII:I = 0x0

.field public static final WAPI_PASSWORD_HEX:I = 0x1

.field public static final WPS:Ljava/lang/String; = "WPS"

.field public static final WPS_PBC:Ljava/lang/String; = "WPS-PBC"

.field public static final WPS_PIN:Ljava/lang/String; = "WPS-PIN"

.field public static final mHotSpotSsidMask:Ljava/lang/String; = "AT&T Wi-Fi"

.field public static final mHotSpotSsid_1:Ljava/lang/String; = "Wayport_Access"

.field public static final mHotSpotSsid_2:Ljava/lang/String; = "attmetrowifi"

.field public static final mHotSpotSsid_3:Ljava/lang/String; = "attwifi"


# instance fields
.field public frequency:I

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mContext:Landroid/content/Context;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mPasswordType:I

.field private mRssi:I

.field private mSignal:Landroid/widget/ImageView;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field final networkId:I

.field public networkMode:I

.field public proxyEnabled:Z

.field public proxyExceptions:Ljava/lang/String;

.field public proxyHost:Ljava/lang/String;

.field public proxyPort:I

.field final security:I

.field final ssid:Ljava/lang/String;

.field public wapiASCert:Ljava/lang/String;

.field public wapiPSKType:I

.field public wapiUserCert:Ljava/lang/String;

.field public wpsMode:Ljava/lang/String;

.field public wpsPinCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 44
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    .line 101
    const-string v0, "ro.mot.wifi.hotspot"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/AccessPoint;->HOTSPOT_ENABLED:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 272
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 274
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 275
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->getMaskedHotspotSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 277
    invoke-static {p2}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 279
    iget v0, p2, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 281
    invoke-static {p2}, Lcom/android/settings/wifi/AccessPoint;->getScanResultWpsCapability(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWpsMode(Ljava/lang/String;)V

    .line 284
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[IBSS]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setNetworkMode(I)V

    .line 289
    :goto_0
    iget v0, p2, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    .line 291
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setNetworkMode(I)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "context"
    .parameter "config"

    .prologue
    const-string v2, ""

    .line 239
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 240
    const v1, 0x7f03003d

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 242
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 243
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    move-object v0, v2

    .line 244
    .local v0, ssidTemp:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->getMaskedHotspotSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 246
    invoke-static {p2}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 247
    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 248
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 250
    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->networkMode:I

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->setNetworkMode(I)V

    .line 251
    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->frequency:I

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->setFrequency(I)V

    .line 253
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 254
    const-string v1, ""

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    .line 255
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->parseWifiConfigurationProxy(Landroid/net/wifi/WifiConfiguration;)V

    .line 256
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 260
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->setWAPIASCertificate(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->setWAPIUserCertificate(Ljava/lang/String;)V

    .line 268
    :cond_0
    :goto_1
    return-void

    .line 243
    .end local v0           #ssidTemp:Ljava/lang/String;
    :cond_1
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 263
    .restart local v0       #ssidTemp:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->wapiPskMode:I

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->setWAPIPSKType(I)V

    goto :goto_1
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const-string v4, "\""

    .line 442
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 443
    .local v0, lastPos:I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    move-object v1, p0

    .line 446
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getScanResultWpsCapability(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 7
    .parameter "scanResult"

    .prologue
    const/4 v5, 0x1

    const-string v6, ""

    .line 532
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 533
    .local v0, cap:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    const-string v3, ""

    move-object v3, v6

    .line 544
    :goto_0
    return-object v3

    .line 537
    :cond_0
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "WPS"

    aput-object v4, v2, v3

    const-string v3, "WPS-PBC"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "WPS-PIN"

    aput-object v4, v2, v3

    .line 538
    .local v2, wpsModes:[Ljava/lang/String;
    array-length v3, v2

    sub-int v1, v3, v5

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 539
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    aget-object v3, v2, v1

    goto :goto_0

    .line 538
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 544
    :cond_2
    const-string v3, ""

    move-object v3, v6

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA2-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    const/4 v0, 0x3

    goto :goto_0

    .line 172
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    const/4 v0, 0x4

    goto :goto_0

    .line 174
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    const/4 v0, 0x5

    goto :goto_0

    .line 178
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 157
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v4

    .line 147
    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    .line 151
    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    const/4 v0, 0x5

    goto :goto_0

    .line 157
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public static isHotSpotSsid(Ljava/lang/String;)Z
    .locals 7
    .parameter "ssid"

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    sget-boolean v2, Lcom/android/settings/wifi/AccessPoint;->HOTSPOT_ENABLED:Z

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    :cond_0
    move v2, v4

    .line 232
    :goto_0
    return v2

    .line 220
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v1, v2, v5

    .line 221
    .local v1, lastPos:I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_4

    .line 222
    :cond_2
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, checkString:Ljava/lang/String;
    :goto_1
    const-string v2, "AT&T Wi-Fi"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Wayport_Access"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "attmetrowifi"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "attwifi"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    move v2, v5

    .line 230
    goto :goto_0

    .line 224
    .end local v0           #checkString:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #checkString:Ljava/lang/String;
    goto :goto_1

    :cond_5
    move v2, v4

    .line 232
    goto :goto_0
.end method

.method private static isPackageAlreadyInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v3, 0x1

    .line 565
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 570
    :goto_0
    return v1

    .line 567
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 568
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWapiForOlympus()Z
    .locals 4

    .prologue
    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, isOlympus:Z
    const-string v2, "ro.product.product_name"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, product_name:Ljava/lang/String;
    const-string v2, "olympus_china"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    const/4 v0, 0x1

    .line 642
    :cond_0
    return v0
.end method

.method public static isWapiSupported(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 574
    const-string v0, "com.motorola.wapicertificatemanager"

    invoke-static {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->isPackageAlreadyInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private parseWifiConfigurationProxy(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "wifiConfig"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 184
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->proxyEnabled:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyEnabled:Z

    .line 185
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->proxyHost:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyHost:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyHost:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyHost:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v2

    .line 188
    .local v0, lastPos:I
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyHost:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyHost:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyHost:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyHost:Ljava/lang/String;

    .line 192
    .end local v0           #lastPos:I
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->proxyPort:I

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyPort:I

    .line 193
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->proxyExceptions:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyExceptions:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyExceptions:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyExceptions:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v2

    .line 196
    .restart local v0       #lastPos:I
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyExceptions:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyExceptions:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyExceptions:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->proxyExceptions:Ljava/lang/String;

    .line 200
    .end local v0           #lastPos:I
    :cond_1
    return-void
.end method

.method private refresh()V
    .locals 14

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v13, ","

    .line 450
    iget-object v8, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    if-nez v8, :cond_0

    .line 515
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 454
    .local v1, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 456
    iget-object v8, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v8, :cond_1

    .line 457
    iget-object v8, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v1, v8}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 460
    :cond_1
    const/4 v5, 0x0

    .local v5, status:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, modeInfo:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, sigStatus:Ljava/lang/String;
    const/4 v0, 0x0

    .line 461
    .local v0, apStatus:Ljava/lang/String;
    iget v8, p0, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    if-ne v8, v10, :cond_2

    .line 462
    const v8, 0x7f0800d0

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 464
    :cond_2
    iget v8, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v9, 0x7fffffff

    if-ne v8, v9, :cond_3

    .line 465
    const v8, 0x7f0803f9

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 467
    :cond_3
    iget-object v8, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v8, :cond_4

    .line 468
    iget-object v8, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v8, v10, :cond_7

    const v8, 0x7f0803f8

    :goto_1
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    :cond_4
    :goto_2
    if-eqz v3, :cond_9

    if-eqz v0, :cond_9

    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 486
    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getVerboseWpsInfo()Ljava/lang/String;

    move-result-object v7

    .line 488
    .local v7, verboseWps:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 489
    if-eqz v5, :cond_b

    .line 490
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 496
    .end local v7           #verboseWps:Ljava/lang/String;
    :cond_6
    :goto_4
    iget v8, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v8, :cond_c

    .line 497
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 468
    :cond_7
    const v8, 0x7f0803f7

    goto :goto_1

    .line 472
    :cond_8
    if-eqz v4, :cond_4

    .line 473
    move-object v0, v4

    goto :goto_2

    .line 477
    :cond_9
    if-eqz v3, :cond_a

    .line 478
    move-object v5, v3

    goto :goto_3

    .line 479
    :cond_a
    if-eqz v0, :cond_5

    .line 480
    move-object v5, v0

    goto :goto_3

    .line 492
    .restart local v7       #verboseWps:Ljava/lang/String;
    :cond_b
    move-object v5, v7

    goto :goto_4

    .line 499
    .end local v7           #verboseWps:Ljava/lang/String;
    :cond_c
    if-nez v5, :cond_d

    const v8, 0x7f0803fa

    :goto_5
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, format:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->isWapiSupported(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 504
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 508
    .local v6, type:[Ljava/lang/String;
    :goto_6
    array-length v8, v6

    iget v9, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-le v8, v9, :cond_f

    .line 509
    new-array v8, v12, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v9, v6, v9

    aput-object v9, v8, v11

    aput-object v5, v8, v10

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 499
    .end local v2           #format:Ljava/lang/String;
    .end local v6           #type:[Ljava/lang/String;
    :cond_d
    const v8, 0x7f0803fb

    goto :goto_5

    .line 506
    .restart local v2       #format:Ljava/lang/String;
    :cond_e
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .restart local v6       #type:[Ljava/lang/String;
    goto :goto_6

    .line 511
    :cond_f
    new-array v8, v12, [Ljava/lang/Object;

    const v9, 0x7f0800a3

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    aput-object v5, v8, v10

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 433
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 434
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    sub-int v1, v0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 436
    sub-int v1, v0, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 438
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 10
    .parameter "preference"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 314
    instance-of v4, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_0

    move v4, v6

    .line 362
    :goto_0
    return v4

    .line 317
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    move-object v3, v0

    .line 319
    .local v3, other:Lcom/android/settings/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, v3, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v4, v5, :cond_2

    .line 320
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_0

    .line 325
    :cond_2
    sget-boolean v4, Lcom/android/settings/wifi/AccessPoint;->HOTSPOT_ENABLED:Z

    if-eqz v4, :cond_5

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, comparison:I
    iget-object v4, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->isHotSpotSsid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/wifi/AccessPoint;->isHotSpotSsid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    sub-int v1, v4, v5

    .line 328
    if-eqz v1, :cond_5

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v8

    .line 327
    goto :goto_1

    :cond_4
    move v5, v8

    goto :goto_2

    .line 333
    .end local v1           #comparison:I
    :cond_5
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v5, v3, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_7

    .line 334
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_6

    move v4, v7

    goto :goto_0

    :cond_6
    move v4, v6

    goto :goto_0

    .line 337
    :cond_7
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget v5, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_9

    .line 338
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v7, :cond_8

    move v4, v7

    goto :goto_0

    :cond_8
    move v4, v6

    goto :goto_0

    .line 343
    :cond_9
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    iget v5, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v4, v5, :cond_f

    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    iget v5, v3, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    if-ne v4, v5, :cond_f

    .line 344
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v4, :cond_a

    iget v4, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v4, v9, :cond_b

    :cond_a
    move v4, v7

    .line 345
    goto :goto_0

    .line 346
    :cond_b
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v4, v9, :cond_c

    iget v4, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v4, :cond_d

    :cond_c
    move v4, v6

    .line 347
    goto :goto_0

    .line 349
    :cond_d
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    iget v5, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_e

    move v4, v7

    goto :goto_0

    :cond_e
    move v4, v6

    goto :goto_0

    .line 352
    :cond_f
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    iget v5, v3, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    if-eq v4, v5, :cond_11

    .line 353
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    if-nez v4, :cond_10

    move v4, v7

    goto/16 :goto_0

    :cond_10
    move v4, v6

    goto/16 :goto_0

    .line 357
    :cond_11
    iget v4, v3, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v2

    .line 358
    .local v2, difference:I
    if-eqz v2, :cond_12

    move v4, v2

    .line 359
    goto/16 :goto_0

    .line 362
    :cond_12
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public displayAdhocPrompt()V
    .locals 3

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800cb

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 523
    return-void
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 414
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 415
    const/4 v0, -0x1

    .line 417
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getMaskedHotspotSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 206
    sget-boolean v0, Lcom/android/settings/wifi/AccessPoint;->HOTSPOT_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->isHotSpotSsid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "AT&T Wi-Fi"

    .line 211
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public getNetworkMode()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    return v0
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public getVerboseWpsInfo()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 599
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v3

    .line 610
    :goto_0
    return-object v1

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 603
    .local v0, mContext:Landroid/content/Context;
    const-string v1, "WPS"

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 605
    :cond_1
    const-string v1, "WPS-PBC"

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 607
    :cond_2
    const-string v1, "WPS-PIN"

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 608
    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 610
    goto :goto_0
.end method

.method public getWpsPinCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsPinCode:Ljava/lang/String;

    return-object v0
.end method

.method public hasSecurity()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 548
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    move v0, v2

    .line 551
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 549
    goto :goto_0

    .line 551
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-lt v0, v2, :cond_2

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public isWpsPbcActivated()Z
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    const-string v1, "WPS-PBC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWpsPinActivated()Z
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    const-string v1, "WPS-PIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWpsSupported()Z
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 296
    const v0, 0x7f0c00a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    .line 297
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 309
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 310
    return-void

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getNetworkMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 305
    :cond_2
    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_2
.end method

.method public setFrequency(I)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 132
    iput p1, p0, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    .line 133
    return-void
.end method

.method public setNetworkMode(I)V
    .locals 1
    .parameter "networkMode"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    if-eq v0, p1, :cond_0

    .line 126
    iput p1, p0, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    .line 127
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 129
    :cond_0
    return-void
.end method

.method public setWAPIASCertificate(Ljava/lang/String;)V
    .locals 1
    .parameter "cert"

    .prologue
    .line 627
    if-eqz p1, :cond_0

    .line 628
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->wapiASCert:Ljava/lang/String;

    .line 629
    :cond_0
    return-void
.end method

.method public setWAPIPSKType(I)V
    .locals 1
    .parameter "Type"

    .prologue
    const/4 v0, 0x1

    .line 618
    if-ne p1, v0, :cond_0

    .line 619
    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->wapiPSKType:I

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->wapiPSKType:I

    goto :goto_0
.end method

.method public setWAPIUserCertificate(Ljava/lang/String;)V
    .locals 1
    .parameter "cert"

    .prologue
    .line 632
    if-eqz p1, :cond_0

    .line 633
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->wapiUserCert:Ljava/lang/String;

    .line 634
    :cond_0
    return-void
.end method

.method public setWpsMode(Ljava/lang/String;)V
    .locals 1
    .parameter "wpsMode"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    .line 558
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 560
    :cond_1
    return-void
.end method

.method public setWpsPinCode(Ljava/lang/String;)V
    .locals 0
    .parameter "wpsPinCode"

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->wpsPinCode:Ljava/lang/String;

    .line 592
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, reorder:Z
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 388
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 389
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 390
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 391
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 392
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 399
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 402
    :cond_1
    return-void

    .line 388
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 393
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 394
    const/4 v0, 0x1

    .line 395
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 396
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 397
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 369
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[IBSS]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setNetworkMode(I)V

    .line 374
    :goto_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    .line 376
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 379
    :cond_0
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getScanResultWpsCapability(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWpsMode(Ljava/lang/String;)V

    move v0, v3

    .line 382
    :goto_1
    return v0

    .line 372
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPoint;->setNetworkMode(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 382
    goto :goto_1
.end method

.method public updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "wifiConfig"

    .prologue
    .line 406
    if-eqz p1, :cond_0

    .line 407
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 408
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 410
    :cond_0
    return-void
.end method

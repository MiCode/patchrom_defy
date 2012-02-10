.class Lcom/android/settings/wifi/WifiApInfoService$MaxConnectedDevicesSettingsObserver;
.super Landroid/database/ContentObserver;
.source "WifiApInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaxConnectedDevicesSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApInfoService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiApInfoService;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$MaxConnectedDevicesSettingsObserver;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    .line 567
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 568
    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/settings/wifi/WifiApInfoService;->access$2100(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_max_connected_devices"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 570
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 573
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 574
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$MaxConnectedDevicesSettingsObserver;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApInfoService;->readMaxConnectedDevicesSetting()V

    .line 575
    return-void
.end method

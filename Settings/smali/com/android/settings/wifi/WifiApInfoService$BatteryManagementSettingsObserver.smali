.class Lcom/android/settings/wifi/WifiApInfoService$BatteryManagementSettingsObserver;
.super Landroid/database/ContentObserver;
.source "WifiApInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryManagementSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApInfoService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiApInfoService;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$BatteryManagementSettingsObserver;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    .line 548
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 549
    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/settings/wifi/WifiApInfoService;->access$2100(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_battery_timeout"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 551
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 554
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$BatteryManagementSettingsObserver;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$BatteryManagementSettingsObserver;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$2100(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_battery_timeout"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/WifiApInfoService;->readSettingsValueAndInit(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$502(Lcom/android/settings/wifi/WifiApInfoService;I)I

    .line 558
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$BatteryManagementSettingsObserver;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    #calls: Lcom/android/settings/wifi/WifiApInfoService;->checkStartIdleCheckTimer()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$300(Lcom/android/settings/wifi/WifiApInfoService;)V

    .line 559
    return-void
.end method

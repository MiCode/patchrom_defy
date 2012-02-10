.class Lcom/android/settings/wifi/WifiApInfoService$5;
.super Ljava/lang/Object;
.source "WifiApInfoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApInfoService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApInfoService;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$5;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 418
    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$2000()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 419
    :try_start_0
    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$2000()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 420
    .local v0, mac:Ljava/lang/String;
    const-string v2, "WifiApInfoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing Blacklisted MAC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService$5;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/settings/wifi/WifiApManageDevices;->setAllowIfWhiteMac(ZLjava/lang/String;Landroid/content/Context;)Z

    .line 422
    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$2000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$5;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageDevices;->setApAllowedDeviceConfig(Landroid/content/Context;)V

    .line 430
    :cond_0
    :goto_0
    monitor-exit v1

    .line 431
    return-void

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$5;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 427
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$5;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$2000()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->manageSta(Ljava/util/List;Z)V

    goto :goto_0

    .line 430
    .end local v0           #mac:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

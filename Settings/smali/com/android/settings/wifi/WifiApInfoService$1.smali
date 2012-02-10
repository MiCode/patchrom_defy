.class Lcom/android/settings/wifi/WifiApInfoService$1;
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
    .line 81
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const-string v2, "WifiApInfoService"

    .line 83
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v12, workList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/ConnectedDevice;>;"
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectedDevList()Ljava/util/List;

    move-result-object v11

    .line 87
    .local v11, staList:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/wifi/StaInfo;>;"
    const-string v1, "WifiApInfoService"

    const-string v1, "polling mRefreshConnectedDeviceList"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    .line 89
    .local v0, c:Lcom/android/settings/wifi/ConnectedDevice;
    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    invoke-interface {v11, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/wifi/StaInfo;

    iget-object v1, v1, Lcom/motorola/android/wifi/StaInfo;->ip:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    .line 92
    invoke-interface {v11, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/wifi/StaInfo;

    iget-object v1, v1, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 93
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->updateConnectedDevice(Lcom/android/settings/wifi/ConnectedDevice;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    #calls: Lcom/android/settings/wifi/WifiApInfoService;->updateNotificationDetails(Lcom/android/settings/wifi/ConnectedDevice;)V
    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$100(Lcom/android/settings/wifi/WifiApInfoService;Lcom/android/settings/wifi/ConnectedDevice;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    invoke-interface {v11, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 96
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "WifiApInfoService"

    const-string v1, "Something is not right in the index IP update"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 101
    .end local v6           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    #calls: Lcom/android/settings/wifi/WifiApInfoService;->updateConnDisconnNotification(ZLcom/android/settings/wifi/ConnectedDevice;)Z
    invoke-static {v1, v13, v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$200(Lcom/android/settings/wifi/WifiApInfoService;ZLcom/android/settings/wifi/ConnectedDevice;)Z

    .line 102
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->removeConnectedDeviceFromScreen(Lcom/android/settings/wifi/ConnectedDevice;)V

    .line 103
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v0           #c:Lcom/android/settings/wifi/ConnectedDevice;
    :cond_1
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    .line 110
    .restart local v0       #c:Lcom/android/settings/wifi/ConnectedDevice;
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    .end local v0           #c:Lcom/android/settings/wifi/ConnectedDevice;
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/android/wifi/StaInfo;

    .line 115
    .local v10, s:Lcom/motorola/android/wifi/StaInfo;
    new-instance v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v10, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    iget-object v3, v10, Lcom/motorola/android/wifi/StaInfo;->ip:Ljava/lang/String;

    iget-object v4, v10, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)V

    .line 116
    .restart local v0       #c:Lcom/android/settings/wifi/ConnectedDevice;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    const/4 v2, 0x1

    #calls: Lcom/android/settings/wifi/WifiApInfoService;->updateConnDisconnNotification(ZLcom/android/settings/wifi/ConnectedDevice;)Z
    invoke-static {v1, v2, v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$200(Lcom/android/settings/wifi/WifiApInfoService;ZLcom/android/settings/wifi/ConnectedDevice;)Z

    .line 117
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->addConnectedDeviceToScreen(Lcom/android/settings/wifi/ConnectedDevice;)V

    goto :goto_3

    .line 127
    .end local v0           #c:Lcom/android/settings/wifi/ConnectedDevice;
    .end local v10           #s:Lcom/motorola/android/wifi/StaInfo;
    :cond_3
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I

    if-le v1, v2, :cond_4

    .line 128
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I

    sub-int v8, v1, v2

    .local v8, numToPop:I
    move v9, v8

    .line 129
    .end local v8           #numToPop:I
    .local v9, numToPop:I
    :goto_4
    add-int/lit8 v8, v9, -0x1

    .end local v9           #numToPop:I
    .restart local v8       #numToPop:I
    if-lez v9, :cond_4

    .line 130
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    sget v2, Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I

    add-int/2addr v2, v8

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    .line 131
    .restart local v0       #c:Lcom/android/settings/wifi/ConnectedDevice;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    #calls: Lcom/android/settings/wifi/WifiApInfoService;->updateConnDisconnNotification(ZLcom/android/settings/wifi/ConnectedDevice;)Z
    invoke-static {v1, v13, v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$200(Lcom/android/settings/wifi/WifiApInfoService;ZLcom/android/settings/wifi/ConnectedDevice;)Z

    .line 132
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->removeConnectedDeviceFromScreen(Lcom/android/settings/wifi/ConnectedDevice;)V

    move v9, v8

    .line 133
    .end local v8           #numToPop:I
    .restart local v9       #numToPop:I
    goto :goto_4

    .line 135
    .end local v0           #c:Lcom/android/settings/wifi/ConnectedDevice;
    .end local v9           #numToPop:I
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    #calls: Lcom/android/settings/wifi/WifiApInfoService;->checkStartIdleCheckTimer()V
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$300(Lcom/android/settings/wifi/WifiApInfoService;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$400(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    return-void
.end method

.class Lcom/android/settings/wifi/WifiApInfoService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiApInfoService.java"


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
    .line 336
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, action:Ljava/lang/String;
    const-string v16, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 341
    const-string v16, "wifi_state"

    const/16 v17, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 343
    .local v4, apState:I
    packed-switch v4, :pswitch_data_0

    .line 401
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v16

    monitor-enter v16

    .line 402
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiApInfoService;->access$400(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/wifi/WifiApInfoService;->access$1200(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->access$400(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRefreshConnectedDeviceList:Ljava/lang/Runnable;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiApInfoService;->access$1300(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->access$400(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiApInfoService;->access$1700(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v16, v0

    #calls: Lcom/android/settings/wifi/WifiApInfoService;->clearUnBlackList()V
    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->access$1800(Lcom/android/settings/wifi/WifiApInfoService;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;
    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->access$1100(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/NotificationManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/NotificationManager;->cancelAll()V

    .line 408
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->access$1902(Z)Z

    .line 412
    .end local v4           #apState:I
    :cond_1
    :goto_1
    return-void

    .line 346
    .restart local v4       #apState:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->access$400(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRefreshConnectedDeviceList:Ljava/lang/Runnable;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiApInfoService;->access$1300(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->access$400(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRefreshConnectedDeviceList:Ljava/lang/Runnable;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiApInfoService;->access$1300(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v17

    const-wide/16 v18, 0x1388

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v16

    monitor-enter v16

    .line 349
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    const-string v18, "null"

    #setter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/settings/wifi/WifiApInfoService;->access$602(Lcom/android/settings/wifi/WifiApInfoService;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiApInfoService;->access$400(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/wifi/WifiApInfoService;->access$1200(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 352
    new-instance v8, Ljava/io/File;

    const-string v17, "sys/class/net/"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    .local v8, f:Ljava/io/File;
    const/4 v12, 0x0

    .line 354
    .local v12, ifaceList:[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 355
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    .line 357
    :cond_2
    if-eqz v12, :cond_4

    .line 358
    move-object v5, v12

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v13           #len$:I
    .local v10, i$:I
    :goto_2
    if-ge v10, v13, :cond_4

    aget-object v11, v5, v10

    .line 359
    .local v11, iface:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mWifiRegExs:[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiApInfoService;->access$1400(Lcom/android/settings/wifi/WifiApInfoService;)[Ljava/lang/String;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/String;
    array-length v14, v6

    .local v14, len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .restart local v9       #i$:I
    :goto_3
    if-ge v9, v14, :cond_3

    aget-object v7, v6, v9

    .line 360
    .local v7, base:Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    new-instance v17, Ljava/io/File;

    const-string v18, "sys/class/net/"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/carrier"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    #setter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$602(Lcom/android/settings/wifi/WifiApInfoService;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    const-string v17, "WifiApInfoService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Link Mon Tether interface matched - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v7           #base:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "null"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 374
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #iface:Ljava/lang/String;
    .end local v14           #len$:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "null"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiApInfoService;->access$400(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/wifi/WifiApInfoService;->access$1200(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v19, 0x2710

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    :cond_5
    monitor-exit v16

    goto/16 :goto_1

    .end local v8           #f:Ljava/io/File;
    .end local v12           #ifaceList:[Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 359
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v7       #base:Ljava/lang/String;
    .restart local v8       #f:Ljava/io/File;
    .restart local v9       #i$:I
    .restart local v11       #iface:Ljava/lang/String;
    .restart local v12       #ifaceList:[Ljava/lang/String;
    .restart local v14       #len$:I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 358
    .end local v7           #base:Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto/16 :goto_2

    .line 381
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #f:Ljava/io/File;
    .end local v10           #i$:I
    .end local v11           #iface:Ljava/lang/String;
    .end local v12           #ifaceList:[Ljava/lang/String;
    .end local v14           #len$:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->access$1500(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v16

    monitor-enter v16

    .line 383
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "null"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiApInfoService;->access$400(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/wifi/WifiApInfoService;->access$1200(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 386
    :cond_8
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    sget-object v16, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    .line 386
    :catchall_1
    move-exception v17

    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 390
    :pswitch_3
    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$1600()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 391
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->access$1602(Z)Z

    .line 392
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const-class v17, Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v15, sendIntent:Landroid/content/Intent;
    const-string v16, "restart_hotspot"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const/high16 v16, 0x5400

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApInfoService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 403
    .end local v15           #sendIntent:Landroid/content/Intent;
    :catchall_2
    move-exception v17

    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v17

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

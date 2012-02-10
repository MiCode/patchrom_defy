.class Lcom/android/settings/wifi/WifiApInfoService$3;
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
.field private final buf:[B

.field final synthetic this$0:Lcom/android/settings/wifi/WifiApInfoService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApInfoService;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->buf:[B

    return-void
.end method

.method private declared-synchronized getState(Ljava/io/File;)J
    .locals 11
    .parameter "file"

    .prologue
    const/16 v8, 0x30

    const-wide/16 v9, 0x0

    const-string v5, "Exception closing "

    const-string v5, "WifiApInfoService"

    .line 225
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 226
    const-string v5, "WifiApInfoService"

    const-string v6, "The file is not exist, can\'t fetch the number from it!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v5, "WifiApInfoService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The file abs path is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v9

    .line 261
    :goto_0
    monitor-exit p0

    return-wide v5

    .line 231
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 234
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    if-eqz v4, :cond_1

    .line 241
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 248
    :cond_1
    :goto_1
    const-wide/16 v2, 0x0

    .line 249
    .local v2, num:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    :try_start_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->buf:[B

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 250
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->buf:[B

    aget-byte v5, v5, v1

    if-lt v5, v8, :cond_2

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->buf:[B

    aget-byte v5, v5, v1

    const/16 v6, 0x39

    if-le v5, v6, :cond_5

    :cond_2
    move-wide v5, v2

    .line 257
    goto :goto_0

    .line 242
    .end local v1           #i:I
    .end local v2           #num:J
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/io/IOException;
    const-string v5, "WifiApInfoService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception closing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 258
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 259
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_5
    const-string v5, "WifiApInfoService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception opening TCP statistics file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide v5, v9

    .line 261
    goto :goto_0

    .line 235
    .end local v0           #e:Ljava/io/IOException;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 236
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_6
    const-string v5, "WifiApInfoService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception getting TCP bytes from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 239
    if-eqz v4, :cond_3

    .line 241
    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_3
    move-wide v5, v9

    .line 244
    goto/16 :goto_0

    .line 242
    :catch_3
    move-exception v0

    .line 243
    :try_start_8
    const-string v5, "WifiApInfoService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception closing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 225
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 239
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    if-eqz v4, :cond_4

    .line 241
    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 244
    :cond_4
    :goto_4
    :try_start_a
    throw v5

    .line 242
    :catch_4
    move-exception v0

    .line 243
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "WifiApInfoService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception closing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 253
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i:I
    .restart local v2       #num:J
    :cond_5
    const-wide/16 v5, 0xa

    mul-long/2addr v2, v5

    .line 254
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->buf:[B

    aget-byte v5, v5, v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    sub-int/2addr v5, v8

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v22

    monitor-enter v22

    .line 155
    :try_start_0
    const-string v23, "WifiApInfoService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Polling stats on "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v23, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "sys/class/net/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/statistics"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/tx_bytes"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApInfoService$3;->getState(Ljava/io/File;)J

    move-result-wide v7

    .line 158
    .local v7, currTxBytes:J
    new-instance v23, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "sys/class/net/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/statistics"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/rx_bytes"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApInfoService$3;->getState(Ljava/io/File;)J

    move-result-wide v5

    .line 160
    .local v5, currRxBytes:J
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v22

    const-string v23, "wifi_ap_lifetime_tx"

    const-wide/16 v24, 0x0

    invoke-interface/range {v22 .. v25}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    add-long v11, v7, v22

    .line 162
    .local v11, lifeTxBytes:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v22

    const-string v23, "wifi_ap_lifetime_rx"

    const-wide/16 v24, 0x0

    invoke-interface/range {v22 .. v25}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    add-long v9, v5, v22

    .line 163
    .local v9, lifeRxBytes:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v22

    const-string v23, "wifi_ap_reset_tx"

    const-wide/16 v24, 0x0

    invoke-interface/range {v22 .. v25}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    add-long v17, v7, v22

    .line 164
    .local v17, resetTxBytes:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v22

    const-string v23, "wifi_ap_reset_rx"

    const-wide/16 v24, 0x0

    invoke-interface/range {v22 .. v25}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    add-long v15, v5, v22

    .line 166
    .local v15, resetRxBytes:J
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 167
    .local v14, now:Landroid/text/format/Time;
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 168
    .local v19, savedTime:Landroid/text/format/Time;
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v22

    const-string v23, "wifi_ap_reset_at"

    const/16 v24, 0x0

    move-object v0, v14

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 171
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 172
    const-string v22, "WifiApInfoService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Triggering reset time - Now =>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    move-object v0, v14

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Reset at "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-wide/16 v17, 0x0

    .line 175
    const-wide/16 v15, 0x0

    .line 177
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 178
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 179
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 183
    :goto_0
    const-string v22, "WifiApInfoService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Next reset scheduled at : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "wifi_ap_reset_at"

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v22

    const-string v23, "wifi_ap_reset_data_warn"

    const-wide/16 v24, 0x0

    invoke-interface/range {v22 .. v25}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 188
    .local v20, warnBytes:J
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_1

    .line 189
    add-long v22, v17, v15

    const-wide/16 v24, 0x2800

    add-long v22, v22, v24

    cmp-long v22, v22, v20

    if-lez v22, :cond_1

    .line 191
    new-instance v13, Landroid/app/Notification;

    const v22, 0x1080027

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/wifi/WifiApInfoService;->access$900(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f080268

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object v0, v13

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 194
    .local v13, n:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/wifi/WifiApInfoService;->access$900(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f080268

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/wifi/WifiApInfoService;->access$900(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f080269

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNotificationIntent:Landroid/app/PendingIntent;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/PendingIntent;

    move-result-object v25

    move-object v0, v13

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 198
    move-object v0, v13

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x10

    move/from16 v0, v22

    move-object v1, v13

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$1100(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/NotificationManager;

    move-result-object v22

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/app/NotificationManager;->cancel(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$1100(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/NotificationManager;

    move-result-object v22

    const/16 v23, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 204
    .end local v13           #n:Landroid/app/Notification;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "wifi_ap_lifetime_tx"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-wide v2, v11

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "wifi_ap_lifetime_rx"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-wide v2, v9

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "wifi_ap_reset_tx"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-wide/from16 v2, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "wifi_ap_reset_rx"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-wide v2, v15

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "wifi_ap_curr_tx"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-wide v2, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "wifi_ap_curr_rx"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-wide v2, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v22

    monitor-enter v22

    .line 212
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/wifi/WifiApInfoService;->access$400(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/wifi/WifiApInfoService;->access$1200(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v25

    const-string v26, "wifi_ap_data_counter_ui_alive"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_3

    const-wide/16 v25, 0x3e8

    :goto_1
    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    return-void

    .line 160
    .end local v5           #currRxBytes:J
    .end local v7           #currTxBytes:J
    .end local v9           #lifeRxBytes:J
    .end local v11           #lifeTxBytes:J
    .end local v14           #now:Landroid/text/format/Time;
    .end local v15           #resetRxBytes:J
    .end local v17           #resetTxBytes:J
    .end local v19           #savedTime:Landroid/text/format/Time;
    .end local v20           #warnBytes:J
    :catchall_0
    move-exception v23

    :try_start_2
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v23

    .line 181
    .restart local v5       #currRxBytes:J
    .restart local v7       #currTxBytes:J
    .restart local v9       #lifeRxBytes:J
    .restart local v11       #lifeTxBytes:J
    .restart local v14       #now:Landroid/text/format/Time;
    .restart local v15       #resetRxBytes:J
    .restart local v17       #resetTxBytes:J
    .restart local v19       #savedTime:Landroid/text/format/Time;
    :cond_2
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto/16 :goto_0

    .line 212
    .restart local v20       #warnBytes:J
    :cond_3
    const-wide/16 v25, 0x2710

    goto :goto_1

    .line 214
    :catchall_1
    move-exception v23

    :try_start_3
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v23
.end method

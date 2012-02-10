.class Lcom/android/settings/deviceinfo/CheckUpdate$1;
.super Landroid/content/BroadcastReceiver;
.source "CheckUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/CheckUpdate;->registerUpdateReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/CheckUpdate;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/CheckUpdate;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x3

    const-string v4, "CheckUpdate"

    .line 127
    const-string v2, "com.motorola.blur.service.blur.upgrade.requestid"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 128
    .local v1, requestId:I
    if-eqz v1, :cond_1

    .line 130
    const-string v2, "CheckUpdate"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string v2, "CheckUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore check update response, requestId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v2, "com.motorola.blur.service.blur.upgrade.check_error"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, errorCode:Ljava/lang/String;
    const-string v2, "CheckUpdate"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    const-string v2, "CheckUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received check update response, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_2
    const-string v2, "ERR_OK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ERR_ALREADY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/CheckUpdate;->finish()V

    goto :goto_0

    .line 147
    :cond_4
    const-string v2, "ERR_NET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 148
    iget-object v2, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const v3, 0x7f080032

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/CheckUpdate;->showDialog(I)V

    goto :goto_0

    .line 149
    :cond_5
    const-string v2, "ERR_DOWNLOADING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 150
    iget-object v2, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const v3, 0x7f080036

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/CheckUpdate;->showDialog(I)V

    goto :goto_0

    .line 151
    :cond_6
    const-string v2, "ERR_NOTFOUND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 152
    iget-object v2, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const v3, 0x7f080033

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/CheckUpdate;->showDialog(I)V

    goto :goto_0

    .line 153
    :cond_7
    const-string v2, "ERR_TEMP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 154
    iget-object v2, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const v3, 0x7f080034

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/CheckUpdate;->showDialog(I)V

    goto :goto_0

    .line 155
    :cond_8
    const-string v2, "ERR_FAIL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 156
    iget-object v2, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const v3, 0x7f080035

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/CheckUpdate;->showDialog(I)V

    goto/16 :goto_0

    .line 157
    :cond_9
    const-string v2, "ERR_BADPARAM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const v3, 0x7f080031

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/CheckUpdate;->showDialog(I)V

    goto/16 :goto_0
.end method

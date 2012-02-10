.class public Lcom/android/settings/deviceinfo/CheckUpdate;
.super Landroid/app/Activity;
.source "CheckUpdate.java"


# static fields
.field public static final ACTION_MANUAL_CHECK_UPDATE:Ljava/lang/String; = "com.motorola.blur.service.blur.Actions.MANUAL_CHECK_UPDATE"

.field private static final BLUR_REQUIRED_ACTION:Ljava/lang/String; = "com.motorola.blur.setup.SETUP_BLUR_ACCOUNT"

.field private static final ERR_ALREADY:Ljava/lang/String; = "ERR_ALREADY"

.field private static final ERR_BADPARAM:Ljava/lang/String; = "ERR_BADPARAM"

.field private static final ERR_DOWNLOADING:Ljava/lang/String; = "ERR_DOWNLOADING"

.field private static final ERR_FAIL:Ljava/lang/String; = "ERR_FAIL"

.field private static final ERR_NET:Ljava/lang/String; = "ERR_NET"

.field private static final ERR_NOTFOUND:Ljava/lang/String; = "ERR_NOTFOUND"

.field private static final ERR_OK:Ljava/lang/String; = "ERR_OK"

.field private static final ERR_TEMP:Ljava/lang/String; = "ERR_TEMP"

.field private static final EXTRA_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_BOOTSTRAP:Ljava/lang/String; = "com.motorola.blur.service.blur.upgrade.bootstrap"

.field private static final KEY_CHECK_ERROR:Ljava/lang/String; = "com.motorola.blur.service.blur.upgrade.check_error"

.field private static final KEY_REQUESTID:Ljava/lang/String; = "com.motorola.blur.service.blur.upgrade.requestid"

.field private static final MOTHER_USER_CREDS_TYPE:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

.field private static final TAG:Ljava/lang/String; = "CheckUpdate"

.field private static final UPGRADE_CHECK_FOR_UPDATE:Ljava/lang/String; = "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE"

.field private static final UPGRADE_CHECK_FOR_UPDATE_RESPONSE:Ljava/lang/String; = "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE_RESPONSE"


# instance fields
.field private mUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/CheckUpdate;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/CheckUpdate;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method private registerUpdateReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/settings/deviceinfo/CheckUpdate$1;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/CheckUpdate$1;-><init>(Lcom/android/settings/deviceinfo/CheckUpdate;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/deviceinfo/CheckUpdate;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 164
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const-string v10, "com.motorola.blur.setup"

    const-string v8, "CheckUpdate"

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 77
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v6, v0

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 78
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.motorola.blur.setup.SETUP_BLUR_ACCOUNT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, intent:Landroid/content/Intent;
    :try_start_0
    const-string v6, "app_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v6, "title"

    const v7, 0x7f080181

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/CheckUpdate;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v6, "message"

    const v7, 0x7f080182

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/CheckUpdate;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/CheckUpdate;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/CheckUpdate;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 87
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "CheckUpdate"

    const-string v6, "FAILED TO LAUNCH BLUR SETUP!!"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/CheckUpdate;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 89
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 91
    .local v2, info:Landroid/content/pm/PackageInfo;
    :try_start_1
    const-string v6, "com.motorola.blur.setup"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 96
    :goto_1
    if-eqz v2, :cond_0

    .line 97
    const-string v6, "CheckUpdate"

    const-string v6, "Setup installed"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v6, "com.motorola.blur.setup"

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 99
    const-string v6, "CheckUpdate"

    const-string v6, "but disabled!"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 93
    .local v4, nameException:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CheckUpdate"

    const-string v6, "Setup not installed!!"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #nameException:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    const v6, 0x7f030009

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/CheckUpdate;->setContentView(I)V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/CheckUpdate;->registerUpdateReceiver()V

    .line 107
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.motorola.blur.service.blur.Actions.MANUAL_CHECK_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/CheckUpdate;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v6, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "com.motorola.blur.service.blur.upgrade.bootstrap"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const-string v6, "com.motorola.blur.service.blur.upgrade.requestid"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/CheckUpdate;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "i"

    .prologue
    .line 186
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 188
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/deviceinfo/CheckUpdate$2;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/CheckUpdate$2;-><init>(Lcom/android/settings/deviceinfo/CheckUpdate;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 208
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/settings/deviceinfo/CheckUpdate$3;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/CheckUpdate$3;-><init>(Lcom/android/settings/deviceinfo/CheckUpdate;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 220
    return-object v1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/CheckUpdate;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "CheckUpdate"

    const-string v1, "unregister receiver in onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/CheckUpdate;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/CheckUpdate;->registerUpdateReceiver()V

    .line 171
    return-void
.end method

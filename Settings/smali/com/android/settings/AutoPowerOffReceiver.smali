.class public Lcom/android/settings/AutoPowerOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoPowerOffReceiver.java"


# static fields
.field static final BOOT_COMPLETE:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field static final DBG:Z = false

.field static final POWEROFF_ALARM_DISABLE:Ljava/lang/String; = "com.android.motorola.poweroff.alarm.disable"

.field static final POWEROFF_ALARM_ENABLE:Ljava/lang/String; = "com.android.motorola.poweroff.alarm.enable"

.field static final POWEROFF_ALARM_PROPERTY:Ljava/lang/String; = "persist.sys.poweroff.alarm"

.field static final POWEROFF_ALARM_SYNC_INTENT:Ljava/lang/String; = "poweroff.alarm.sync.intent"

.field static final SETTINGS_AUTO_POWEROFF_ENABLED:Ljava/lang/String; = "auto_shutdown_enabled"

.field static final SETTINGS_AUTO_POWEROFF_HOUR:Ljava/lang/String; = "auto_shutdown_hour"

.field static final SETTINGS_AUTO_POWEROFF_INTENT:Ljava/lang/String; = "com.android.settings.schedule_shutdown"

.field static final SETTINGS_AUTO_POWEROFF_MINUTES:Ljava/lang/String; = "auto_shutdown_minutes"

.field static final SETTINGS_AUTO_POWERON_ENABLED:Ljava/lang/String; = "auto_powerup_enabled"

.field static final SETTINGS_AUTO_POWERON_HOUR:Ljava/lang/String; = "auto_powerup_hour"

.field static final SETTINGS_AUTO_POWERON_INTENT:Ljava/lang/String; = "com.android.settings.autopoweron.triggered"

.field static final SETTINGS_AUTO_POWERON_MINUTES:Ljava/lang/String; = "auto_powerup_minutes"

.field static final SETTINGS_TIME_SET_INTENT:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field static final SHUTDOWN_INTENT:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field static final TAG:Ljava/lang/String; = "AutoPowerOffReceiver"


# instance fields
.field private mAM:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AutoPowerOffReceiver;->mAM:Landroid/app/AlarmManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AutoPowerOffReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/settings/AutoPowerOffReceiver;->restoreAutoPowerONSetting(Landroid/content/Context;)V

    return-void
.end method

.method private restoreAutoPowerOFFSetting(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 105
    const/4 v0, -0x1

    .line 106
    .local v0, Hour:I
    const/4 v1, -0x1

    .line 107
    .local v1, Minute:I
    const/4 v3, 0x0

    .line 108
    .local v3, intent:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 110
    .local v4, sender:Landroid/app/PendingIntent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_shutdown_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_1

    move v2, v9

    .line 111
    .local v2, autoPowerOFFEnabled:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_shutdown_hour"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_shutdown_minutes"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 117
    if-eq v0, v7, :cond_2

    if-eq v1, v7, :cond_2

    .line 118
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v5, "com.android.settings.schedule_shutdown"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-static {p1, v8, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 120
    iget-object v5, p0, Lcom/android/settings/AutoPowerOffReceiver;->mAM:Landroid/app/AlarmManager;

    invoke-static {v0, v1}, Lcom/android/settings/PowerScheduleSettings;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v10, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 125
    :cond_0
    :goto_1
    return-void

    .end local v2           #autoPowerOFFEnabled:Z
    :cond_1
    move v2, v8

    .line 110
    goto :goto_0

    .line 122
    .restart local v2       #autoPowerOFFEnabled:Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings/AutoPowerOffReceiver;->mAM:Landroid/app/AlarmManager;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v10, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private restoreAutoPowerONSetting(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 81
    const/4 v0, -0x1

    .line 82
    .local v0, Hour:I
    const/4 v1, -0x1

    .line 83
    .local v1, Minute:I
    const/4 v3, 0x0

    .line 84
    .local v3, intent:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 86
    .local v4, sender:Landroid/app/PendingIntent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_powerup_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_1

    move v2, v9

    .line 87
    .local v2, autoPowerONEnabled:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_powerup_hour"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_powerup_minutes"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 92
    if-eq v0, v7, :cond_2

    if-eq v1, v7, :cond_2

    .line 93
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v5, "com.android.settings.autopoweron.triggered"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-static {p1, v8, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 96
    iget-object v5, p0, Lcom/android/settings/AutoPowerOffReceiver;->mAM:Landroid/app/AlarmManager;

    invoke-static {v0, v1}, Lcom/android/settings/PowerScheduleSettings;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v10, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 101
    :cond_0
    :goto_1
    return-void

    .end local v2           #autoPowerONEnabled:Z
    :cond_1
    move v2, v8

    .line 86
    goto :goto_0

    .line 98
    .restart local v2       #autoPowerONEnabled:Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings/AutoPowerOffReceiver;->mAM:Landroid/app/AlarmManager;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v10, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 38
    iget-object v5, p0, Lcom/android/settings/AutoPowerOffReceiver;->mAM:Landroid/app/AlarmManager;

    if-nez v5, :cond_0

    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/settings/AutoPowerOffReceiver;->mAM:Landroid/app/AlarmManager;

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings.schedule_shutdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_shutdown_hour"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, Hour:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_shutdown_minutes"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 43
    .local v1, Minute:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 44
    .local v2, c:Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v0, v5, :cond_1

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v1, v5, :cond_1

    .line 45
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.motorola.internal.intent.action.AUTOPOWEROFF__FIRED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, i:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    .end local v0           #Hour:I
    .end local v1           #Minute:I
    .end local v2           #c:Ljava/util/Calendar;
    .end local v4           #i:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 54
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/AutoPowerOffReceiver;->restoreAutoPowerONSetting(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/AutoPowerOffReceiver;->restoreAutoPowerOFFSetting(Landroid/content/Context;)V

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/AutoPowerOffReceiver;->restoreAutoPowerONSetting(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/AutoPowerOffReceiver;->restoreAutoPowerOFFSetting(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings.autopoweron.triggered"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    move-object v3, p1

    .line 67
    .local v3, fcontext:Landroid/content/Context;
    new-instance v5, Lcom/android/settings/AutoPowerOffReceiver$1;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/AutoPowerOffReceiver$1;-><init>(Lcom/android/settings/AutoPowerOffReceiver;Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/settings/AutoPowerOffReceiver$1;->start()V

    goto :goto_0
.end method

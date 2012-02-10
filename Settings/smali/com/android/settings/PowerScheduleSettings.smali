.class public Lcom/android/settings/PowerScheduleSettings;
.super Landroid/preference/PreferenceActivity;
.source "PowerScheduleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final SETTINGS_AUTO_POWEROFF_ENABLED:Ljava/lang/String; = "auto_shutdown_enabled"

.field static final SETTINGS_AUTO_POWEROFF_HOUR:Ljava/lang/String; = "auto_shutdown_hour"

.field static final SETTINGS_AUTO_POWEROFF_INTENT:Ljava/lang/String; = "com.android.settings.schedule_shutdown"

.field static final SETTINGS_AUTO_POWEROFF_MINUTES:Ljava/lang/String; = "auto_shutdown_minutes"

.field static final SETTINGS_AUTO_POWERON_ENABLED:Ljava/lang/String; = "auto_powerup_enabled"

.field static final SETTINGS_AUTO_POWERON_HOUR:Ljava/lang/String; = "auto_powerup_hour"

.field static final SETTINGS_AUTO_POWERON_INTENT:Ljava/lang/String; = "com.android.settings.auto_power_on_changed"

.field static final SETTINGS_AUTO_POWERON_MINUTES:Ljava/lang/String; = "auto_powerup_minutes"


# instance fields
.field private mAM:Landroid/app/AlarmManager;

.field private mAutoPoweronEnable:Z

.field private mPowerupEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mPowerupHour:I

.field private mPowerupMinutes:I

.field mPowerupTimeLisener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mPowerupTimePref:Landroid/preference/Preference;

.field private mShutdownEnabled:Z

.field private mShutdownEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mShutdownHour:I

.field private mShutdownMinutes:I

.field mShutdownTimeLisener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mShutdownTimePref:Landroid/preference/Preference;

.field private mWarnPowerup:Landroid/content/DialogInterface;

.field private mWarnTime:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/android/settings/PowerScheduleSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PowerScheduleSettings$1;-><init>(Lcom/android/settings/PowerScheduleSettings;)V

    iput-object v0, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownTimeLisener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 91
    new-instance v0, Lcom/android/settings/PowerScheduleSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/PowerScheduleSettings$2;-><init>(Lcom/android/settings/PowerScheduleSettings;)V

    iput-object v0, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupTimeLisener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/PowerScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownHour:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/PowerScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownMinutes:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/PowerScheduleSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/PowerScheduleSettings;->isTimeCorrect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/PowerScheduleSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/PowerScheduleSettings;->savePowerOffTime()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/PowerScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings/PowerScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupMinutes:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/PowerScheduleSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/PowerScheduleSettings;->savePowerOnTime()V

    return-void
.end method

.method static calculateAlarm(II)Ljava/util/Calendar;
    .locals 8
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 206
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 207
    .local v1, nowHour:I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 209
    .local v2, nowMinute:I
    if-lt p0, v1, :cond_0

    if-ne p0, v1, :cond_1

    if-gt p1, v2, :cond_1

    .line 211
    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 213
    :cond_1
    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    .line 214
    invoke-virtual {v0, v7, p1}, Ljava/util/Calendar;->set(II)V

    .line 215
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 216
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 218
    return-object v0
.end method

.method private isTimeCorrect()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v4, "AutoPower"

    .line 279
    const/4 v1, 0x1

    .line 281
    .local v1, res:Z
    iget-boolean v2, p0, Lcom/android/settings/PowerScheduleSettings;->mAutoPoweronEnable:Z

    if-eqz v2, :cond_0

    .line 282
    const-string v2, "AutoPower"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTimeCorrect:set="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shutdown hour="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "powerup hour="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v2, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownHour:I

    iget v3, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I

    if-ne v2, v3, :cond_0

    .line 288
    iget v2, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownMinutes:I

    iget v3, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupMinutes:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 289
    .local v0, abs:I
    const-string v2, "AutoPower"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTimeCorrect: abs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v2, 0x5

    if-le v2, v0, :cond_0

    .line 291
    const/4 v1, 0x0

    .line 292
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080289

    invoke-virtual {p0, v3}, Lcom/android/settings/PowerScheduleSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08028a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/PowerScheduleSettings;->mWarnTime:Landroid/content/DialogInterface;

    .line 302
    .end local v0           #abs:I
    :cond_0
    return v1

    .line 282
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private savePowerOffTime()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, -0x1

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.schedule_shutdown"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 225
    .local v2, sender:Landroid/app/PendingIntent;
    iget-boolean v3, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownEnabled:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownHour:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownMinutes:I

    if-eq v3, v5, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_shutdown_hour"

    iget v5, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownHour:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_shutdown_minutes"

    iget v5, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownMinutes:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    const-string v3, "Mark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePowerOffTime() is called and mShutdownHour ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownHour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mShutdownMinutes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownMinutes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v3, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownHour:I

    iget v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownMinutes:I

    invoke-static {v3, v4}, Lcom/android/settings/PowerScheduleSettings;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v0

    .line 232
    .local v0, c:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownTimePref:Landroid/preference/Preference;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v3, p0, Lcom/android/settings/PowerScheduleSettings;->mAM:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 241
    .end local v0           #c:Ljava/util/Calendar;
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v3, p0, Lcom/android/settings/PowerScheduleSettings;->mAM:Landroid/app/AlarmManager;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private savePowerOnTime()V
    .locals 8

    .prologue
    const/4 v6, 0x6

    const/4 v5, -0x1

    const-string v7, "Mark"

    .line 245
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.auto_power_on_changed"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 248
    .local v2, sender:Landroid/app/PendingIntent;
    iget-boolean v3, p0, Lcom/android/settings/PowerScheduleSettings;->mAutoPoweronEnable:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupMinutes:I

    if-eq v3, v5, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_powerup_hour"

    iget v5, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_powerup_minutes"

    iget v5, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupMinutes:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    const-string v3, "Mark"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savePowerOnTime() is called and mPowerupHour ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPowerupMinutes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupMinutes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget v3, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I

    iget v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupMinutes:I

    invoke-static {v3, v4}, Lcom/android/settings/PowerScheduleSettings;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v0

    .line 255
    .local v0, c:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupTimePref:Landroid/preference/Preference;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v3, p0, Lcom/android/settings/PowerScheduleSettings;->mAM:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 265
    .end local v0           #c:Ljava/util/Calendar;
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v3, "Mark"

    const-string v3, "Need to disable AutoPowerOn."

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v3, p0, Lcom/android/settings/PowerScheduleSettings;->mAM:Landroid/app/AlarmManager;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private warnPowerup()V
    .locals 3

    .prologue
    .line 269
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080287

    invoke-virtual {p0, v1}, Lcom/android/settings/PowerScheduleSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080288

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PowerScheduleSettings;->mWarnPowerup:Landroid/content/DialogInterface;

    .line 276
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "auto_powerup_enabled"

    .line 193
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings;->mWarnPowerup:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_powerup_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    iput-boolean v2, p0, Lcom/android/settings/PowerScheduleSettings;->mAutoPoweronEnable:Z

    .line 201
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/PowerScheduleSettings;->savePowerOnTime()V

    .line 202
    return-void

    .line 198
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/PowerScheduleSettings;->mAutoPoweronEnable:Z

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_powerup_enabled"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/settings/PowerScheduleSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/settings/PowerScheduleSettings;->mAM:Landroid/app/AlarmManager;

    .line 108
    const v4, 0x7f04001a

    invoke-virtual {p0, v4}, Lcom/android/settings/PowerScheduleSettings;->addPreferencesFromResource(I)V

    .line 109
    const-string v4, "shutdown_enabled"

    invoke-virtual {p0, v4}, Lcom/android/settings/PowerScheduleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 110
    const-string v4, "shutdown_time"

    invoke-virtual {p0, v4}, Lcom/android/settings/PowerScheduleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownTimePref:Landroid/preference/Preference;

    .line 111
    const-string v4, "powerup_enabled"

    invoke-virtual {p0, v4}, Lcom/android/settings/PowerScheduleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 112
    const-string v4, "powerup_time"

    invoke-virtual {p0, v4}, Lcom/android/settings/PowerScheduleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupTimePref:Landroid/preference/Preference;

    .line 114
    const/4 v3, 0x0

    .line 115
    .local v3, enabled:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 116
    .local v2, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_shutdown_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, autoPoweroffenabled:I
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_powerup_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, autoPowerOnenabled:I
    if-ne v1, v6, :cond_2

    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownEnabled:Z

    .line 121
    if-ne v0, v6, :cond_3

    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/PowerScheduleSettings;->mAutoPoweronEnable:Z

    .line 123
    iput v7, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownHour:I

    .line 124
    iput v7, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownMinutes:I

    .line 125
    iput v7, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I

    .line 126
    iput v7, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupMinutes:I

    .line 128
    iget-boolean v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownEnabled:Z

    if-eqz v4, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_shutdown_hour"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownHour:I

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_shutdown_minutes"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownMinutes:I

    .line 133
    iget v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownHour:I

    if-eq v4, v8, :cond_0

    iget v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownMinutes:I

    if-eq v4, v8, :cond_0

    .line 134
    iget v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownHour:I

    iget v5, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownMinutes:I

    invoke-static {v4, v5}, Lcom/android/settings/PowerScheduleSettings;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v2

    .line 135
    iget-object v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownTimePref:Landroid/preference/Preference;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/PowerScheduleSettings;->savePowerOffTime()V

    .line 139
    :cond_0
    iget-object v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownEnabledPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownEnabled:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 141
    iget-boolean v4, p0, Lcom/android/settings/PowerScheduleSettings;->mAutoPoweronEnable:Z

    if-eqz v4, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_powerup_hour"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_powerup_minutes"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupMinutes:I

    .line 144
    iget v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I

    if-eq v4, v8, :cond_1

    iget v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupMinutes:I

    if-eq v4, v8, :cond_1

    .line 146
    iget v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I

    iget v5, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupMinutes:I

    invoke-static {v4, v5}, Lcom/android/settings/PowerScheduleSettings;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v2

    .line 147
    iget-object v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupTimePref:Landroid/preference/Preference;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    invoke-direct {p0}, Lcom/android/settings/PowerScheduleSettings;->savePowerOnTime()V

    .line 151
    :cond_1
    iget-object v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupEnabledPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/settings/PowerScheduleSettings;->mAutoPoweronEnable:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    return-void

    :cond_2
    move v4, v7

    .line 120
    goto/16 :goto_0

    :cond_3
    move v4, v7

    .line 121
    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "auto_shutdown_enabled"

    const-string v1, "Mark"

    .line 157
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 158
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownTimeLisener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownHour:I

    iget v4, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownMinutes:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 189
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownEnabledPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    const-string v0, "mark"

    const-string v1, "set mShutdownEnabled to true."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput-boolean v3, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownEnabled:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_shutdown_enabled"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/PowerScheduleSettings;->savePowerOffTime()V

    goto :goto_0

    .line 167
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/PowerScheduleSettings;->mShutdownEnabled:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_shutdown_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupEnabledPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 174
    const-string v0, "Mark"

    const-string v0, "PowerupEablePref pressed."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/PowerScheduleSettings;->warnPowerup()V

    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PowerScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_powerup_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    iput-boolean v2, p0, Lcom/android/settings/PowerScheduleSettings;->mAutoPoweronEnable:Z

    .line 181
    invoke-direct {p0}, Lcom/android/settings/PowerScheduleSettings;->savePowerOnTime()V

    goto :goto_0

    .line 184
    :cond_5
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 185
    const-string v0, "Mark"

    const-string v0, "PowerUP time picker pressed."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupTimeLisener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I

    iget v4, p0, Lcom/android/settings/PowerScheduleSettings;->mPowerupMinutes:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    goto :goto_0
.end method

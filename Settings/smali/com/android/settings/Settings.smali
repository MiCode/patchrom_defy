.class public Lcom/android/settings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# static fields
.field private static final ACCOUNT_SETTINGS_PREFERENCE:Ljava/lang/String; = "account_settings"

.field private static final BATTERY_AND_DATAMANAGER_PREFERENCE:Ljava/lang/String; = "battery_and_datamanager"

.field private static final HDMI_MIRROR_PREFERENCE:Ljava/lang/String; = "hdmi_settings_mirror"

.field private static final HDMI_PREFERENCE:Ljava/lang/String; = "hdmi_settings"

.field private static final KEY_BACKUP_ASSISTANT_SETTINGS:Ljava/lang/String; = "backup_assistant_settings"

.field private static final KEY_BATT_MANAGER_SETTINGS:Ljava/lang/String; = "battery_manager_settings"

.field private static final KEY_CALL_SETTINGS:Ljava/lang/String; = "call_settings"

.field private static final KEY_DOCK_SETTINGS:Ljava/lang/String; = "dock_settings"

.field private static final KEY_DRIVESMART_SETTINGS:Ljava/lang/String; = "driving_smart_settings"

.field private static final KEY_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_POWER_SCHEDULE_SETTINGS:Ljava/lang/String; = "power_schedule_settings"

.field private static final KEY_SYNC_SETTINGS:Ljava/lang/String; = "sync_settings"

.field private static final TAG:Ljava/lang/String; = "HDMISettings"

.field private static final TAG_BUA:Ljava/lang/String; = "BUASettings"

.field private static final TAG_HDMI:Ljava/lang/String; = "HDMISettings"


# instance fields
.field private final LOCATION_SETTINGS:Ljava/lang/String;

.field private mBackupAssistantPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 84
    const-string v0, "location_settings"

    iput-object v0, p0, Lcom/android/settings/Settings;->LOCATION_SETTINGS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isBlurSupported()Z
    .locals 6

    .prologue
    const-string v5, "HDMISettings"

    .line 302
    const/4 v1, 0x0

    .line 304
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.motorola.blur.setup"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 311
    const-string v2, "HDMISettings"

    const-string v2, "Blur is supported"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 306
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 308
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "HDMISettings"

    const-string v2, "Blur is not supported"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDataManagerSupported()Z
    .locals 6

    .prologue
    const-string v5, "HDMISettings"

    .line 286
    const/4 v1, 0x0

    .line 288
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.motorola.blur.datamanager.app"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 295
    const-string v2, "HDMISettings"

    const-string v2, "DataManager is supported"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 290
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 292
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "HDMISettings"

    const-string v2, "DataManager is not supported"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isHdmiSupported()Z
    .locals 6

    .prologue
    const-string v5, "HDMISettings"

    .line 249
    const/4 v1, 0x0

    .line 252
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.motorola.android.extdispservice"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 261
    const-string v2, "HDMISettings"

    const-string v2, "HDMI is supported"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 256
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 258
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "HDMISettings"

    const-string v2, "HDMI is not supported"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isMirrorModeSupported()Z
    .locals 6

    .prologue
    const-string v5, "HDMISettings"

    .line 266
    const/4 v1, 0x0

    .line 269
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.motorola.android.mirrorservice"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 278
    const-string v2, "HDMISettings"

    const-string v2, "Mirror Mode is supported"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 273
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 275
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "HDMISettings"

    const-string v2, "Mirror Mode is not supported"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const-string v7, "ro.product.name"

    const-string v8, "unknow_product"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, productName:Ljava/lang/String;
    const-string v7, "motodev"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 147
    const v7, 0x7f040028

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->addPreferencesFromResource(I)V

    .line 153
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 155
    .local v0, activePhoneType:I
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 156
    .local v4, parent:Landroid/preference/PreferenceGroup;
    const-string v7, "sync_settings"

    const/4 v8, 0x0

    invoke-static {p0, v4, v7, v8}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 159
    const-string v7, "power_schedule_settings"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 160
    .local v5, powerScheduleSettings:Landroid/preference/Preference;
    if-eqz v5, :cond_0

    .line 161
    const v7, 0x7f080281

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 166
    :cond_0
    const-string v7, "backup_assistant_settings"

    const/4 v8, 0x0

    invoke-static {p0, v4, v7, v8}, Lcom/android/settings/Utils;->updatePreferenceToSpecificReceiverOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 170
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "Battery_Manager_Enabled"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_9

    .line 171
    const-string v7, "battery_manager_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 172
    .local v1, batt_manager_pref:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    .end local v1           #batt_manager_pref:Landroid/preference/Preference;
    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isHdmiSupported()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 185
    :cond_2
    const-string v7, "HDMISettings"

    const-string v8, "HDMI is not supported, removing hdmi preferences"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v7, "hdmi_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    const-string v7, "hdmi_settings_mirror"

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isDataManagerSupported()Z

    move-result v7

    if-nez v7, :cond_4

    .line 205
    const-string v7, "HDMISettings"

    const-string v8, "DataManager is not supported, removing DataManager preferences"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v7, "battery_and_datamanager"

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    :cond_4
    if-eqz v4, :cond_5

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isBlurSupported()Z

    move-result v7

    if-nez v7, :cond_5

    .line 215
    const-string v7, "HDMISettings"

    const-string v8, "Blur is not supported, removing Blur account settings preferences"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v7, "account_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    :cond_5
    const-string v7, "dock_settings"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 222
    .local v2, dockSettings:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v2, :cond_6

    .line 223
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    :cond_6
    const-string v7, "driving_smart_settings"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 227
    .local v3, driveSmartSettings:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v3, :cond_7

    .line 229
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :cond_7
    const-string v7, "backup_assistant_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/Settings;->mBackupAssistantPreference:Landroid/preference/Preference;

    .line 236
    return-void

    .line 150
    .end local v0           #activePhoneType:I
    .end local v2           #dockSettings:Landroid/preference/Preference;
    .end local v3           #driveSmartSettings:Landroid/preference/Preference;
    .end local v4           #parent:Landroid/preference/PreferenceGroup;
    .end local v5           #powerScheduleSettings:Landroid/preference/Preference;
    :cond_8
    const v7, 0x7f040027

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 176
    .restart local v0       #activePhoneType:I
    .restart local v4       #parent:Landroid/preference/PreferenceGroup;
    .restart local v5       #powerScheduleSettings:Landroid/preference/Preference;
    :cond_9
    const-string v7, "battery_manager_settings"

    const/4 v8, 0x0

    invoke-static {p0, v4, v7, v8}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 189
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isMirrorModeSupported()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 190
    const-string v7, "HDMISettings"

    const-string v8, "Mirror mode supported, removing standard HDMI preferences"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v7, "hdmi_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 193
    :cond_b
    const-string v7, "HDMISettings"

    const-string v8, "Mirror mode not supported, removing mirror mode preferences"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v7, "hdmi_settings_mirror"

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, key:Ljava/lang/String;
    const-string v3, "location_settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 107
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "restriction_lock"

    invoke-static {v0, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v5, v3, :cond_0

    const-string v3, "location_restriction"

    invoke-static {v0, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v5, v3, :cond_0

    .line 109
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/android/settings/restriction/Restriction;->LAUNCH_RESTRICTION_SETTINGS:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/Settings;->startActivity(Landroid/content/Intent;)V

    move v3, v5

    .line 131
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v3

    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_0
    move v3, v4

    .line 117
    goto :goto_0

    .line 121
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/Settings;->mBackupAssistantPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.motorola.BackupAssistanceClient.ACTION_MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/Settings;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    const-string v3, "BUASettings"

    const-string v4, "sendBroadcast to BackupAssistanceClient"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 126
    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    move v3, v4

    .line 131
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 241
    const-string v0, "call_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 244
    return-void

    .line 241
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

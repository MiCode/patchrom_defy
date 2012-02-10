.class public Lcom/android/settings/SoundSettings;
.super Lcom/motorola/ringtone/AbstractSetAlarm;
.source "SoundSettings.java"

# interfaces
.implements Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;
.implements Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CDMA_RINGTONE_KEY:Ljava/lang/String; = "cdma_ringtone_settings"

.field public static final DIALOG_MUSIC:I = 0x1

.field public static final DIALOG_RINGTONE:I = 0x0

.field private static final FALLBACK_EMERGENCY_TONE_VALUE:I = 0x0

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final GSM_RINGTONE_KEY:Ljava/lang/String; = "gsm_ringtone_settings"

.field private static final KEY_AUDIO_EFFECT:Ljava/lang/String; = "audio_effect"

.field private static final KEY_CALL_CONNECT_TONE:Ljava/lang/String; = "call_connect_tone"

.field static final KEY_CDMA_RINGTONE_TYPE:Ljava/lang/String; = "cdma_preferences_ringtone_type"

.field private static final KEY_DTMF_TONE:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_ERI_ALERT_SOUNDS:Ljava/lang/String; = "eri_alert_sounds"

.field private static final KEY_FULL_CHARGE_NOTIFICATION:Ljava/lang/String; = "full_charge_notification"

.field static final KEY_GSM_RINGTONE_TYPE:Ljava/lang/String; = "gsm_preferences_ringtone_type"

.field private static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field private static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "lock_sounds"

.field private static final KEY_NETWORK_LOST_TONE:Ljava/lang/String; = "network_lost_tone"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_PLAY_MEDIA_NOTIFICATION_SOUNDS:Ljava/lang/String; = "play_media_notification_sounds"

.field private static final KEY_RING_MODES:Ljava/lang/String; = "ring_modes"

.field private static final KEY_RING_VOLUMES:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final KEY_SOFTWARE_UPDATE_ALERT:Ljava/lang/String; = "software_update_alert"

.field private static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final KEY_SOUND_SETTINGS:Ljava/lang/String; = "sound_settings"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final PREPEND_AT_TOP:I = 0x0

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.android.dualmode_preferences"

.field static final SOUND_PREFERENCES:[I = null

.field private static final TAG:Ljava/lang/String; = "SoundSettings"

.field private static final VALUE_VIBRATE_ALWAYS:Ljava/lang/String; = "always"

.field private static final VALUE_VIBRATE_NEVER:Ljava/lang/String; = "never"

.field private static final VALUE_VIBRATE_ONLY_SILENT:Ljava/lang/String; = "silent"

.field private static final VALUE_VIBRATE_UNLESS_SILENT:Ljava/lang/String; = "notsilent"

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static mIsFullChargeNotificationSupported:Z


# instance fields
.field private bDebugFlagOpen:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCDMARingtone:Landroid/net/Uri;

.field private mCDMARingtoneType:I

.field private mCallConnectTone:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mERIFeatureOnFlag:Z

.field private mEd:Landroid/content/SharedPreferences$Editor;

.field private mEnhancedRoamingTone:Landroid/preference/CheckBoxPreference;

.field private mFullChargeNotification:Landroid/preference/CheckBoxPreference;

.field private mGSMPreference:Lcom/motorola/ringtone/SoundPreference;

.field private mGSMRingtone:Landroid/net/Uri;

.field private mGSMRingtoneType:I

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mNetworkLostTone:Landroid/preference/CheckBoxPreference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mPlayMediaNotificationSounds:Landroid/preference/CheckBoxPreference;

.field private mPortalPref:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingModes:Landroid/preference/PreferenceScreen;

.field private mRingerSwitchFlag:Z

.field private mSilent:Landroid/preference/CheckBoxPreference;

.field private mSoftwareUpdateAlert:Landroid/preference/CheckBoxPreference;

.field private mSoundDlg:Lcom/motorola/ringtone/ChooseSoundDialog;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mTempSound:Ljava/lang/String;

.field private mVibrate:Landroid/preference/ListPreference;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/SoundSettings;->SOUND_PREFERENCES:[I

    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/SoundSettings;->mIsFullChargeNotificationSupported:Z

    return-void

    .line 107
    :array_0
    .array-data 0x4
        0xdt 0x7t 0x8t 0x7ft
        0xet 0x7t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/motorola/ringtone/AbstractSetAlarm;-><init>()V

    .line 84
    iput-boolean v1, p0, Lcom/android/settings/SoundSettings;->bDebugFlagOpen:Z

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 168
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 198
    iput-boolean v1, p0, Lcom/android/settings/SoundSettings;->mERIFeatureOnFlag:Z

    .line 201
    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method private getMediaTitle(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "uri"
    .parameter "context"

    .prologue
    const v11, 0x7f080712

    const-string v0, "title"

    const-string v2, "settings"

    .line 757
    const/4 v9, 0x0

    .line 758
    .local v9, title:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 759
    const-string v9, ""

    move-object v10, v9

    .line 795
    .end local v9           #title:Ljava/lang/String;
    .local v10, title:Ljava/lang/String;
    :goto_0
    return-object v10

    .line 762
    .end local v10           #title:Ljava/lang/String;
    .restart local v9       #title:Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_3

    .line 763
    const/4 v7, 0x0

    .line 764
    .local v7, c:Landroid/database/Cursor;
    move-object v1, p1

    .line 765
    .local v1, actualUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 766
    .local v6, authority:Ljava/lang/String;
    const-string v0, "settings"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 770
    if-nez v1, :cond_1

    .line 771
    const-string v9, ""

    move-object v10, v9

    .line 772
    .end local v9           #title:Ljava/lang/String;
    .restart local v10       #title:Ljava/lang/String;
    goto :goto_0

    .line 776
    .end local v10           #title:Ljava/lang/String;
    .restart local v9       #title:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 777
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 778
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 779
    const-string v0, "settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    const v0, 0x7f080712

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 785
    :cond_2
    if-eqz v7, :cond_3

    .line 786
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 789
    .end local v1           #actualUri:Landroid/net/Uri;
    .end local v6           #authority:Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_3
    :goto_1
    if-nez v9, :cond_4

    .line 790
    invoke-virtual {p2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 791
    if-nez v9, :cond_4

    .line 792
    const-string v9, ""

    :cond_4
    move-object v10, v9

    .line 795
    .end local v9           #title:Ljava/lang/String;
    .restart local v10       #title:Ljava/lang/String;
    goto :goto_0

    .line 782
    .end local v10           #title:Ljava/lang/String;
    .restart local v1       #actualUri:Landroid/net/Uri;
    .restart local v6       #authority:Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v9       #title:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 783
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 785
    if-eqz v7, :cond_3

    .line 786
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 785
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 786
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getPhoneVibrateSettingValue()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    move v1, v5

    .line 451
    .local v1, vibeInSilent:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 454
    .local v0, callsVibrateSetting:I
    if-eqz v1, :cond_3

    .line 455
    if-nez v0, :cond_0

    .line 457
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 461
    :cond_0
    if-ne v0, v5, :cond_2

    .line 462
    const-string v2, "always"

    .line 476
    :goto_1
    return-object v2

    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_1
    move v1, v4

    .line 445
    goto :goto_0

    .line 464
    .restart local v0       #callsVibrateSetting:I
    .restart local v1       #vibeInSilent:Z
    :cond_2
    const-string v2, "silent"

    goto :goto_1

    .line 467
    :cond_3
    if-ne v0, v6, :cond_4

    .line 469
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 473
    :cond_4
    if-ne v0, v5, :cond_5

    .line 474
    const-string v2, "notsilent"

    goto :goto_1

    .line 476
    :cond_5
    const-string v2, "never"

    goto :goto_1
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 730
    const-string v0, "com.android.dualmode_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private initPortalSettings()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 666
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 667
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v6, "com.motorola.GET_OPERATOR_URL"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0, v7, v0}, Lcom/android/settings/SoundSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 673
    .local v2, portalIntent:Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const-string v6, "portal_url"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 677
    .local v5, url:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 680
    .local v4, screen:Landroid/preference/PreferenceScreen;
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-direct {v3, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 681
    .local v3, sc:Landroid/preference/PreferenceCategory;
    const v6, 0x7f080073

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 682
    invoke-virtual {v3, v8}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 683
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 685
    new-instance v6, Landroid/preference/Preference;

    invoke-direct {v6, p0, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mPortalPref:Landroid/preference/Preference;

    .line 686
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mPortalPref:Landroid/preference/Preference;

    const v7, 0x7f080074

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 687
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mPortalPref:Landroid/preference/Preference;

    const v7, 0x7f080075

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 688
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mPortalPref:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 690
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 691
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "com.android.browser"

    const-string v7, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mPortalPref:Landroid/preference/Preference;

    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 695
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mPortalPref:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private setPhoneVibrateSettingValue(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 485
    const-string v2, "notsilent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    const/4 v0, 0x1

    .line 487
    .local v0, callsVibrateSetting:I
    const/4 v1, 0x0

    .line 499
    .local v1, vibeInSilent:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    if-eqz v1, :cond_4

    move v4, v6

    :goto_1
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    iget-boolean v2, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_5

    move v3, v6

    :goto_2
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 514
    return-void

    .line 488
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_1
    const-string v2, "never"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    const/4 v0, 0x0

    .line 490
    .restart local v0       #callsVibrateSetting:I
    const/4 v1, 0x0

    .restart local v1       #vibeInSilent:Z
    goto :goto_0

    .line 491
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_2
    const-string v2, "silent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 492
    const/4 v0, 0x2

    .line 493
    .restart local v0       #callsVibrateSetting:I
    const/4 v1, 0x1

    .restart local v1       #vibeInSilent:Z
    goto :goto_0

    .line 495
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_3
    const/4 v0, 0x1

    .line 496
    .restart local v0       #callsVibrateSetting:I
    const/4 v1, 0x1

    .restart local v1       #vibeInSilent:Z
    goto :goto_0

    :cond_4
    move v4, v5

    .line 499
    goto :goto_1

    :cond_5
    move v3, v5

    .line 506
    goto :goto_2
.end method

.method private updateSound(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 734
    const-string v1, "gsm_ringtone_settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/SoundSettings;->mGSMRingtoneType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 735
    sget-object v1, Lcom/android/settings/SoundSettings;->SOUND_PREFERENCES:[I

    iget v2, p0, Lcom/android/settings/SoundSettings;->mGSMRingtoneType:I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mTempSound:Ljava/lang/String;

    .line 736
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mTempSound:Ljava/lang/String;

    .line 737
    .local v0, summary:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mGSMPreference:Lcom/motorola/ringtone/SoundPreference;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mTempSound:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/motorola/ringtone/SoundPreference;->setSound(Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mGSMRingtone:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mGSMRingtone:Landroid/net/Uri;

    invoke-direct {p0, v2, p0}, Lcom/android/settings/SoundSettings;->getMediaTitle(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mGSMPreference:Lcom/motorola/ringtone/SoundPreference;

    invoke-virtual {v1, v0}, Lcom/motorola/ringtone/SoundPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mGSMRingtone:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 744
    .end local v0           #summary:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateState(Z)V
    .locals 9
    .parameter "force"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 518
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 521
    .local v2, ringerMode:I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mPlayMediaNotificationSounds:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v6}, Landroid/os/storage/IMountService;->getPlayNotificationSounds()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    move v4, v8

    .line 531
    .local v4, silentOrVibrateMode:Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    if-nez v5, :cond_7

    .line 533
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-ne v4, v5, :cond_0

    if-eqz p1, :cond_1

    .line 534
    :cond_0
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 537
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getPhoneVibrateSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, phoneVibrateSetting:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_3

    .line 540
    :cond_2
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 542
    :cond_3
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mode_ringer_streams_affected"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 546
    .local v3, silentModeStreams:I
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_5

    move v0, v8

    .line 547
    .local v0, isAlarmInclSilentMode:Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    const v6, 0x7f08043e

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 554
    .end local v0           #isAlarmInclSilentMode:Z
    .end local v1           #phoneVibrateSetting:Ljava/lang/String;
    .end local v3           #silentModeStreams:I
    :goto_4
    return-void

    .end local v4           #silentOrVibrateMode:Z
    :cond_4
    move v4, v7

    .line 528
    goto :goto_1

    .restart local v1       #phoneVibrateSetting:Ljava/lang/String;
    .restart local v3       #silentModeStreams:I
    .restart local v4       #silentOrVibrateMode:Z
    :cond_5
    move v0, v7

    .line 546
    goto :goto_2

    .line 547
    .restart local v0       #isAlarmInclSilentMode:Z
    :cond_6
    const v6, 0x7f08043d

    goto :goto_3

    .line 552
    .end local v0           #isAlarmInclSilentMode:Z
    .end local v1           #phoneVibrateSetting:Ljava/lang/String;
    .end local v3           #silentModeStreams:I
    :cond_7
    const-string v5, "ring_volume"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-nez v4, :cond_8

    move v6, v8

    :goto_5
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    :cond_8
    move v6, v7

    goto :goto_5

    .line 522
    .end local v4           #silentOrVibrateMode:Z
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method protected getGSMRingtone()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 747
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 748
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "gsm_ringtone"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, uriString_GSM:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 751
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 753
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/motorola/ringtone/AbstractSetAlarm;->onCreate(Landroid/os/Bundle;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 225
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 227
    .local v0, activePhoneType:I
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 229
    const-string v9, "mount"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SoundSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 231
    const v9, 0x7f04002c

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 233
    invoke-static {p0}, Lcom/android/settings/SoundSettings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 234
    .local v7, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SoundSettings;->mEd:Landroid/content/SharedPreferences$Editor;

    .line 235
    const-string v9, "gsm_preferences_ringtone_type"

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 236
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mEd:Landroid/content/SharedPreferences$Editor;

    const-string v10, "gsm_preferences_ringtone_type"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mEd:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/settings/SoundSettings;->mGSMRingtoneType:I

    .line 243
    :goto_0
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SoundSettings;->mGSMRingtone:Landroid/net/Uri;

    .line 245
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mGSMRingtone:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "external"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 246
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/settings/SoundSettings;->mGSMRingtoneType:I

    .line 248
    :cond_0
    const/4 v9, 0x2

    if-eq v9, v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "emergency_tone"

    invoke-virtual {p0, v10}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "call_connect_tone"

    invoke-virtual {p0, v10}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "network_lost_tone"

    invoke-virtual {p0, v10}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    :cond_1
    const-string v9, "play_media_notification_sounds"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mPlayMediaNotificationSounds:Landroid/preference/CheckBoxPreference;

    .line 258
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mPlayMediaNotificationSounds:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v10}, Landroid/os/storage/IMountService;->getPlayNotificationSounds()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ftr_ringer_switch_enable"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    .line 264
    iget-boolean v9, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 265
    const-string v9, "ring_modes"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mRingModes:Landroid/preference/PreferenceScreen;

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "silent"

    invoke-virtual {p0, v10}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "vibrate"

    invoke-virtual {p0, v10}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    .line 269
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    .line 287
    :cond_2
    :goto_3
    const-string v9, "software_update_alert"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mSoftwareUpdateAlert:Landroid/preference/CheckBoxPreference;

    .line 288
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mSoftwareUpdateAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "software_update_alert"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    iget-boolean v9, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    if-nez v9, :cond_3

    .line 291
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mSoftwareUpdateAlert:Landroid/preference/CheckBoxPreference;

    const-string v10, "silent"

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 294
    :cond_3
    const/4 v9, 0x2

    if-eq v9, v0, :cond_4

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "software_update_alert"

    invoke-virtual {p0, v10}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 299
    :cond_4
    const-string v9, "dtmf_tone"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 300
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 301
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v10, "dtmf_tone"

    const/4 v11, 0x1

    invoke-static {v6, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 304
    iget-boolean v9, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    if-nez v9, :cond_5

    .line 305
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v10, "silent"

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 307
    :cond_5
    const-string v9, "sound_effects"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 308
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 309
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v10, "sound_effects_enabled"

    const/4 v11, 0x0

    invoke-static {v6, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 312
    iget-boolean v9, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    if-nez v9, :cond_6

    .line 313
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v10, "silent"

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 315
    :cond_6
    const-string v9, "haptic_feedback"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 316
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 317
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v10, "haptic_feedback_enabled"

    const/4 v11, 0x0

    invoke-static {v6, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 319
    const-string v9, "lock_sounds"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 320
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 321
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v10, "lockscreen_sounds_enabled"

    const/4 v11, 0x1

    invoke-static {v6, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_13

    const/4 v10, 0x1

    :goto_8
    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 324
    iget-boolean v9, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    if-nez v9, :cond_7

    .line 325
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v10, "silent"

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 327
    :cond_7
    const/4 v9, 0x2

    if-ne v9, v0, :cond_8

    .line 328
    const-string v9, "emergency_tone"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 330
    .local v2, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v9, "emergency_tone"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 334
    const-string v9, "call_connect_tone"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mCallConnectTone:Landroid/preference/CheckBoxPreference;

    .line 335
    const-string v9, "network_lost_tone"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mNetworkLostTone:Landroid/preference/CheckBoxPreference;

    .line 341
    .end local v2           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_8
    const-string v9, "sound_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 342
    .local v5, parent:Landroid/preference/PreferenceGroup;
    const-string v9, "audio_effect"

    const/4 v10, 0x0

    invoke-static {p0, v5, v9, v10}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 345
    const-string v9, "audio_effect"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 346
    .local v1, audioEffect:Landroid/preference/Preference;
    if-eqz v1, :cond_9

    .line 347
    new-instance v9, Lcom/android/settings/SoundSettings$2;

    invoke-direct {v9, p0}, Lcom/android/settings/SoundSettings$2;-><init>(Lcom/android/settings/SoundSettings;)V

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 358
    :cond_9
    const-string v9, "ro.mot.eri"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, featureOn:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    :goto_9
    iput-boolean v9, p0, Lcom/android/settings/SoundSettings;->mERIFeatureOnFlag:Z

    .line 361
    iget-boolean v9, p0, Lcom/android/settings/SoundSettings;->mERIFeatureOnFlag:Z

    if-eqz v9, :cond_16

    .line 363
    const-string v9, "eri_alert_sounds"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mEnhancedRoamingTone:Landroid/preference/CheckBoxPreference;

    .line 364
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mEnhancedRoamingTone:Landroid/preference/CheckBoxPreference;

    const-string v10, "eri_alert_sounds"

    const/4 v11, 0x0

    invoke-static {v6, v10, v11}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_15

    const/4 v10, 0x1

    :goto_a
    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    iget-boolean v9, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    if-nez v9, :cond_a

    .line 368
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mEnhancedRoamingTone:Landroid/preference/CheckBoxPreference;

    const-string v10, "silent"

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 377
    :cond_a
    :goto_b
    const-string v9, "sound_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 378
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v10, "notification_pulse"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 380
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f06

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_17

    .line 382
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 395
    :goto_c
    const-string v9, "full_charge_notification"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mFullChargeNotification:Landroid/preference/CheckBoxPreference;

    .line 396
    const-string v9, "ftr_full_charge_notification_enable"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    const/4 v9, 0x1

    :goto_d
    sput-boolean v9, Lcom/android/settings/SoundSettings;->mIsFullChargeNotificationSupported:Z

    .line 397
    sget-boolean v9, Lcom/android/settings/SoundSettings;->mIsFullChargeNotificationSupported:Z

    if-eqz v9, :cond_1b

    .line 399
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mFullChargeNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_b

    .line 401
    const-string v9, "full_charge_notification_enable"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1a

    const/4 v9, 0x1

    move v4, v9

    .line 402
    .local v4, initVal:Z
    :goto_e
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mFullChargeNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 404
    iget-boolean v9, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    if-nez v9, :cond_b

    .line 405
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mFullChargeNotification:Landroid/preference/CheckBoxPreference;

    const-string v10, "silent"

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 419
    .end local v4           #initVal:Z
    :cond_b
    :goto_f
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->initPortalSettings()V

    .line 422
    const-string v9, "gsm_ringtone_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/motorola/ringtone/SoundPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mGSMPreference:Lcom/motorola/ringtone/SoundPreference;

    .line 423
    const-string v9, "gsm_ringtone_settings"

    invoke-direct {p0, v9}, Lcom/android/settings/SoundSettings;->updateSound(Ljava/lang/String;)V

    .line 424
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mGSMPreference:Lcom/motorola/ringtone/SoundPreference;

    invoke-virtual {v9, p0}, Lcom/motorola/ringtone/SoundPreference;->setOnSoundChangedListener(Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;)V

    .line 425
    return-void

    .line 240
    .end local v1           #audioEffect:Landroid/preference/Preference;
    .end local v3           #featureOn:Ljava/lang/String;
    .end local v5           #parent:Landroid/preference/PreferenceGroup;
    :cond_c
    const-string v9, "gsm_preferences_ringtone_type"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/SoundSettings;->mGSMRingtoneType:I

    goto/16 :goto_0

    .line 262
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 272
    :cond_e
    const-string v9, "silent"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    .line 273
    const-string v9, "vibrate"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    .line 274
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    const-string v9, "ring_volume"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const-string v10, "silent"

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 276
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mPlayMediaNotificationSounds:Landroid/preference/CheckBoxPreference;

    const-string v10, "silent"

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 278
    const-string v9, "ring_modes"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mRingModes:Landroid/preference/PreferenceScreen;

    .line 279
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mRingModes:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_2

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mRingModes:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 282
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/SoundSettings;->mRingModes:Landroid/preference/PreferenceScreen;

    goto/16 :goto_3

    .line 288
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 301
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 309
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 317
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 321
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 359
    .restart local v1       #audioEffect:Landroid/preference/Preference;
    .restart local v3       #featureOn:Ljava/lang/String;
    .restart local v5       #parent:Landroid/preference/PreferenceGroup;
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 364
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 373
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "eri_alert_sounds"

    invoke-virtual {p0, v10}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    .line 385
    :cond_17
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v10, "notification_light_pulse"

    invoke-static {v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18

    const/4 v10, 0x1

    :goto_10
    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 387
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c

    .line 388
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 389
    .local v8, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v9, "SoundSettings"

    const-string v10, "notification_light_pulse not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 385
    .end local v8           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_18
    const/4 v10, 0x0

    goto :goto_10

    .line 396
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_d

    .line 401
    :cond_1a
    const/4 v9, 0x0

    move v4, v9

    goto/16 :goto_e

    .line 411
    :cond_1b
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mFullChargeNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_b

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mFullChargeNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_f

    .line 259
    .end local v1           #audioEffect:Landroid/preference/Preference;
    .end local v3           #featureOn:Ljava/lang/String;
    .end local v5           #parent:Landroid/preference/PreferenceGroup;
    :catch_1
    move-exception v9

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Lcom/motorola/ringtone/AbstractSetAlarm;->onPause()V

    .line 441
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 442
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const-string v4, "emergency_tone"

    .line 644
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, key:Ljava/lang/String;
    const-string v3, "emergency_tone"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 646
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 648
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 650
    .restart local v2       #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 651
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "SoundSettings"

    const-string v4, "could not persist emergency tone setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 653
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #value:I
    .restart local p2
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 654
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->setPhoneVibrateSettingValue(Ljava/lang/String;)V

    .line 655
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 559
    iget-boolean v2, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mRingModes:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_1

    .line 560
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    move v2, v5

    .line 640
    :goto_1
    return v2

    .line 561
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/SoundSettings;->mRingerSwitchFlag:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 563
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_2

    move v1, v5

    .line 568
    .local v1, vibeInSilent:Z
    :goto_2
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 574
    .end local v1           #vibeInSilent:Z
    :goto_4
    invoke-direct {p0, v6}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    goto :goto_0

    :cond_2
    move v1, v6

    .line 564
    goto :goto_2

    .restart local v1       #vibeInSilent:Z
    :cond_3
    move v3, v6

    .line 568
    goto :goto_3

    .line 572
    .end local v1           #vibeInSilent:Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_4

    .line 575
    :cond_5
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mPlayMediaNotificationSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 577
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mPlayMediaNotificationSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->setPlayNotificationSounds(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v2

    goto :goto_0

    .line 581
    :cond_6
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoftwareUpdateAlert:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "software_update_alert"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoftwareUpdateAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_5
    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    move v4, v6

    goto :goto_5

    .line 584
    :cond_8
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_a

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_6
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_9
    move v4, v6

    goto :goto_6

    .line 588
    :cond_a
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 589
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 590
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 594
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    :goto_8
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 592
    :cond_b
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_7

    :cond_c
    move v4, v6

    .line 594
    goto :goto_8

    .line 597
    :cond_d
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_10

    .line 598
    iget-boolean v2, p0, Lcom/android/settings/SoundSettings;->bDebugFlagOpen:Z

    if-eqz v2, :cond_e

    .line 599
    const-string v2, "SoundSettings"

    const-string v3, "to deal with haptickfeedback click"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v5

    :goto_9
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_f
    move v4, v6

    goto :goto_9

    .line 604
    :cond_10
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_12

    .line 605
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v5

    :goto_a
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_11
    move v4, v6

    goto :goto_a

    .line 608
    :cond_12
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mEnhancedRoamingTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_14

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "eri_alert_sounds"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mEnhancedRoamingTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v5

    :goto_b
    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_13
    move v4, v6

    goto :goto_b

    .line 612
    :cond_14
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mCallConnectTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_16

    .line 613
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_connect_tone"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mCallConnectTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v5

    :goto_c
    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_15
    move v4, v6

    goto :goto_c

    .line 615
    :cond_16
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNetworkLostTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_18

    .line 616
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_lost_tone"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mNetworkLostTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_17

    move v4, v5

    :goto_d
    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_17
    move v4, v6

    goto :goto_d

    .line 619
    :cond_18
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1a

    .line 620
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 621
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_pulse"

    if-eqz v0, :cond_19

    move v4, v5

    :goto_e
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_19
    move v4, v6

    goto :goto_e

    .line 625
    .end local v0           #value:Z
    :cond_1a
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mFullChargeNotification:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1c

    .line 626
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "full_charge_notification_enable"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mFullChargeNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v5

    :goto_f
    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_1b
    move v4, v6

    goto :goto_f

    .line 633
    :cond_1c
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mPortalPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 634
    invoke-super {p0, p1, p2}, Lcom/motorola/ringtone/AbstractSetAlarm;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 429
    invoke-super {p0}, Lcom/motorola/ringtone/AbstractSetAlarm;->onResume()V

    .line 431
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    .line 433
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SoundSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 435
    return-void
.end method

.method public onSelectedChanged(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "soundIndex"
    .parameter "key"

    .prologue
    .line 703
    const-string v0, "gsm_ringtone_settings"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mGSMRingtone:Landroid/net/Uri;

    .line 705
    iput p2, p0, Lcom/android/settings/SoundSettings;->mGSMRingtoneType:I

    .line 706
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mGSMPreference:Lcom/motorola/ringtone/SoundPreference;

    invoke-virtual {v0, p1}, Lcom/motorola/ringtone/SoundPreference;->setAlert(Landroid/net/Uri;)V

    .line 708
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/settings/SoundSettings;->updateSound(Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public onSoundChanged(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "sound"
    .parameter "indexOfSound"
    .parameter "key"

    .prologue
    .line 712
    const-string v0, "cdma_ringtone_settings"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    new-instance v0, Lcom/motorola/ringtone/ChooseSoundDialog;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCDMARingtone:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/motorola/ringtone/ChooseSoundDialog;-><init>(Lcom/motorola/ringtone/AbstractSetAlarm;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundDlg:Lcom/motorola/ringtone/ChooseSoundDialog;

    .line 715
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundDlg:Lcom/motorola/ringtone/ChooseSoundDialog;

    invoke-virtual {v0, p0, p3}, Lcom/motorola/ringtone/ChooseSoundDialog;->setOnSoundSelectedListener(Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;Ljava/lang/String;)V

    .line 724
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundDlg:Lcom/motorola/ringtone/ChooseSoundDialog;

    invoke-virtual {v0, p2}, Lcom/motorola/ringtone/ChooseSoundDialog;->showDialog(I)V

    .line 726
    return-void

    .line 717
    :cond_1
    const-string v0, "gsm_ringtone_settings"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    new-instance v0, Lcom/motorola/ringtone/ChooseSoundDialog;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mGSMRingtone:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/motorola/ringtone/ChooseSoundDialog;-><init>(Lcom/motorola/ringtone/AbstractSetAlarm;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundDlg:Lcom/motorola/ringtone/ChooseSoundDialog;

    .line 720
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundDlg:Lcom/motorola/ringtone/ChooseSoundDialog;

    invoke-virtual {v0, p0, p3}, Lcom/motorola/ringtone/ChooseSoundDialog;->setOnSoundSelectedListener(Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;Ljava/lang/String;)V

    goto :goto_0
.end method

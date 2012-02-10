.class public Lcom/android/settings/SecuritySettings;
.super Landroid/preference/PreferenceActivity;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$CredentialStorage;,
        Lcom/android/settings/SecuritySettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ASSISTED_GPS:Ljava/lang/String; = "assisted_gps"

.field private static final COMPASS_CATEGORY:Ljava/lang/String; = "compass_category"

.field private static final CONFIRM_PASSWORD_CLEAR_FINGERPRINT_DB_REQUEST_CODE:I = 0x6e

.field private static final CSTOR_CHANGE_PASSWORD_DIALOG:I = 0x2

.field private static final CSTOR_INIT_DIALOG:I = 0x1

.field private static final CSTOR_MIN_PASSWORD_LENGTH:I = 0x8

.field private static final CSTOR_RESET_DIALOG:I = 0x4

.field private static final CSTOR_UNLOCK_DIALOG:I = 0x3

.field private static final ENCRYPTION_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "com.motorola.android.encryption.settings.EncryptionUserActivity"

.field private static final ENCRYPTION_PACKAGE_NAME:Ljava/lang/String; = "com.motorola.android.encryption.settings"

.field public static final FINGERPRINTS_STORED_KEY:Ljava/lang/String; = "FINGERPRINTS_STORED_KEY"

.field private static final GOOGLE_AUTH_TYPE:Ljava/lang/String; = "com.google"

.field private static final ICC_LOCK_SETTINGS:Ljava/lang/String; = "com.android.settings.IccLockSettings"

.field private static final ICC_NETWORK_LOCK_SETTINGS:Ljava/lang/String; = "com.android.settings.IccNetworkLockSettings"

.field private static final KEY_BLUETOOTH_MFB:Ljava/lang/String; = "bluetooth_multifunction_button"

.field private static final KEY_CLEAR_FINGERPRINTS:Ljava/lang/String; = "clear_fingerprints"

.field private static final KEY_COMPASS_CALRIBRATE:Ljava/lang/String; = "compass_calribrate"

.field private static final KEY_DATA_ENCRYPTION:Ljava/lang/String; = "key_data_encryption"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_LOCK_TIMER:Ljava/lang/String; = "lock_timer"

.field private static final KEY_SCREEN_LOCK:Ljava/lang/String; = "screen_lock"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "unlock_tactile_feedback"

.field private static final KEY_TRUSTED_CERTIFICATES:Ljava/lang/String; = "trusted_certificates"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final LOCATION_AGPS:Ljava/lang/String; = "location_agps"

.field private static final LOCATION_CATEGORY:Ljava/lang/String; = "location_category"

.field private static final LOCATION_E911:Ljava/lang/String; = "location_e911"

.field private static final LOCATION_GPS:Ljava/lang/String; = "location_gps"

.field private static final LOCATION_NETWORK:Ljava/lang/String; = "location_network"

.field private static final PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final PREFS_NAME:Ljava/lang/String; = "location_prefs"

.field private static final PREFS_USE_LOCATION:Ljava/lang/String; = "use_location"

.field private static final PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final PROPERTY_EFS_TRANSITION:Ljava/lang/String; = "persist.security.efs.trans"

.field private static final SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "SecuritySettings"


# instance fields
.field private confirmPassword:Landroid/content/Intent;

.field private eAM_STATUS_TIMEOUT:I

.field private mAgps:Landroid/preference/CheckBoxPreference;

.field private mAgpsFtrEnabled:I

.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mAuthentecMobile:Ljava/lang/Object;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mClearFingerprints:Landroid/preference/Preference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mE911:Landroid/preference/Preference;

.field private mEnableBluetoothMultifunction:Landroid/preference/CheckBoxPreference;

.field private mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

.field private mFingerprintsClearThread:Ljava/lang/Thread;

.field private mFingerprintsStored:Z

.field private mFingerprintsStoredThread:Ljava/lang/Thread;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mLoactionCategory:Landroid/preference/PreferenceCategory;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTimerPreference:Landroid/preference/ListPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mProviderIndicator:[I

.field private mProviderValue:[Ljava/lang/String;

.field private mScreenLock:Landroid/preference/CheckBoxPreference;

.field private mSecurityCategory:Landroid/preference/PreferenceCategory;

.field mSecurityLockWarningDialog:Landroid/app/AlertDialog;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mVZW4gPhoneOnFlag:Z

.field private mVZWGlobalPhoneOnFlag:Z

.field private mVZWLocationPrompts:Z

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 130
    iput-boolean v3, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsStored:Z

    .line 131
    iput-object v4, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    .line 132
    iput-object v4, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsStoredThread:Ljava/lang/Thread;

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->confirmPassword:Landroid/content/Intent;

    .line 162
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "network"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "gps"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "vzw_lbs"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mProviderValue:[Ljava/lang/String;

    .line 166
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mProviderIndicator:[I

    .line 178
    new-instance v0, Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    .line 208
    iput-boolean v3, p0, Lcom/android/settings/SecuritySettings;->mVZWGlobalPhoneOnFlag:Z

    .line 209
    iput-boolean v3, p0, Lcom/android/settings/SecuritySettings;->mVZW4gPhoneOnFlag:Z

    .line 210
    iput-boolean v3, p0, Lcom/android/settings/SecuritySettings;->mVZWLocationPrompts:Z

    .line 211
    iput v3, p0, Lcom/android/settings/SecuritySettings;->mAgpsFtrEnabled:I

    .line 1246
    return-void

    .line 166
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/SecuritySettings;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mProviderIndicator:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/SecuritySettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->getProviderValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mAgps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->simulateOnPreferenceTreeClick()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/SecuritySettings;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mAuthentecMobile:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/SecuritySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsStored:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/SecuritySettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/SecuritySettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mClearFingerprints:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/SecuritySettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/settings/SecuritySettings;->eAM_STATUS_TIMEOUT:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/SecuritySettings;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->confirmPassword:Landroid/content/Intent;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 36

    .prologue
    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    .line 265
    .local v24, root:Landroid/preference/PreferenceScreen;
    if-eqz v24, :cond_0

    .line 266
    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 268
    :cond_0
    const v32, 0x7f040020

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecuritySettings$CredentialStorage;->handleIntent(Landroid/content/Intent;)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string v33, "location_network"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string v33, "location_gps"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string v33, "assisted_gps"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 277
    const-string v32, "location_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mLoactionCategory:Landroid/preference/PreferenceCategory;

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string v33, "location_e911"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mE911:Landroid/preference/Preference;

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string v33, "location_agps"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mAgps:Landroid/preference/CheckBoxPreference;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLoactionCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2

    .line 282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mAgpsFtrEnabled:I

    move/from16 v32, v0

    if-nez v32, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mVZWLocationPrompts:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLoactionCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mAgps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f060008

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    .line 286
    .local v25, showE911:Z
    if-nez v25, :cond_2

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLoactionCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mE911:Landroid/preference/Preference;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    .end local v25           #showE911:Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mVZWLocationPrompts:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    .line 294
    const-string v32, "SecuritySettings"

    const-string v33, "show_vzw_prompts true, will update the prompts"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const v33, 0x7f080238

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const v33, 0x7f080239

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const v33, 0x7f080239

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const v33, 0x7f08023a

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const v33, 0x7f08023b

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const v33, 0x7f08023b

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 305
    :cond_3
    const/16 v19, 0x0

    .line 306
    .local v19, mCompassCategory:Landroid/preference/PreferenceCategory;
    const-string v32, "compass_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .end local v19           #mCompassCategory:Landroid/preference/PreferenceCategory;
    check-cast v19, Landroid/preference/PreferenceCategory;

    .line 307
    .restart local v19       #mCompassCategory:Landroid/preference/PreferenceCategory;
    if-eqz v19, :cond_4

    .line 308
    const-string v32, "compass_calribrate"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    move-result v32

    if-nez v32, :cond_4

    .line 309
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    :cond_4
    const-string v32, "screen_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mScreenLock:Landroid/preference/CheckBoxPreference;

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v21

    .line 316
    .local v21, pm:Landroid/preference/PreferenceManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const-string v33, "com.motorola.hardware.fingerprint"

    invoke-virtual/range {v32 .. v33}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_c

    const/16 v32, 0x1

    move/from16 v17, v32

    .line 320
    .local v17, fingerprintHWSupported:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v32

    if-nez v32, :cond_d

    .line 321
    const v32, 0x7f040021

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 322
    const/16 v32, 0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 323
    const-string v32, "unlock_set_or_change"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    const v32, 0x7f080223

    move-object v0, v4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 350
    :cond_5
    :goto_1
    new-instance v32, Landroid/preference/ListPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    const v33, 0x7f050049

    invoke-virtual/range {v32 .. v33}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    const v33, 0x7f05004a

    invoke-virtual/range {v32 .. v33}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    const v33, 0x7f08003a

    invoke-virtual/range {v32 .. v33}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    const v33, 0x7f08003a

    invoke-virtual/range {v32 .. v33}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    const-string v33, "lock_timer"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "lock_timer"

    sget v35, Lcom/motorola/internal/widget/LockPinUtils;->FALLBACK_LOCK_TIMER_VALUE:I

    invoke-static/range {v33 .. v35}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    const-string v32, "security_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 381
    const-string v32, "visiblepattern"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 384
    const-string v32, "unlock_tactile_feedback"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 388
    const/16 v32, 0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 389
    new-instance v16, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 390
    .local v16, fingerprintCat:Landroid/preference/PreferenceCategory;
    const v32, 0x7f0801a1

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 391
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mClearFingerprints:Landroid/preference/Preference;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mClearFingerprints:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const v33, 0x7f080197

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setTitle(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mClearFingerprints:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const v33, 0x7f080198

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setSummary(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mClearFingerprints:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const-string v33, "clear_fingerprints"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mClearFingerprints:Landroid/preference/Preference;

    move-object/from16 v32, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 404
    .end local v16           #fingerprintCat:Landroid/preference/PreferenceCategory;
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    .line 406
    .local v4, activePhoneType:I
    const/16 v32, 0x2

    move/from16 v0, v32

    move v1, v4

    if-ne v0, v1, :cond_7

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v23

    .line 411
    .local v23, restrictLockPreferences:Landroid/preference/PreferenceScreen;
    const-string v32, "restriction_settings"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 412
    const v32, 0x7f080003

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 414
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 415
    .local v18, intent:Landroid/content/Intent;
    const-string v32, "com.android.settings"

    const-string v33, "com.android.settings.restriction.SetupRestrictions"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 419
    new-instance v22, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 420
    .local v22, restrictLockCat:Landroid/preference/PreferenceCategory;
    const v32, 0x7f080002

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 421
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 422
    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 426
    .end local v18           #intent:Landroid/content/Intent;
    .end local v22           #restrictLockCat:Landroid/preference/PreferenceCategory;
    .end local v23           #restrictLockPreferences:Landroid/preference/PreferenceScreen;
    :cond_7
    const-string v32, "ro.mot.phonemode.vzwglobalphone"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 427
    .local v14, featureOn:Ljava/lang/String;
    const-string v32, "ro.mot.phonemode.vzw4gphone"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 428
    .local v31, vzw4gphonefeatureOn:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_f

    const-string v32, "1"

    move-object v0, v14

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    const/16 v32, 0x1

    :goto_2
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->mVZWGlobalPhoneOnFlag:Z

    .line 429
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_10

    const-string v32, "1"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    const/16 v32, 0x1

    :goto_3
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->mVZW4gPhoneOnFlag:Z

    .line 431
    const/16 v32, 0x2

    move/from16 v0, v32

    move v1, v4

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mVZWGlobalPhoneOnFlag:Z

    move/from16 v32, v0

    if-nez v32, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mVZW4gPhoneOnFlag:Z

    move/from16 v32, v0

    if-eqz v32, :cond_11

    .line 433
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v28

    .line 435
    .local v28, simLockPreferences:Landroid/preference/PreferenceScreen;
    const v32, 0x7f08047f

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 436
    const-string v32, "sim_lock"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 438
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v30

    .line 439
    .local v30, simState:I
    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    if-eqz v30, :cond_9

    .line 441
    new-instance v32, Landroid/content/Intent;

    invoke-direct/range {v32 .. v32}, Landroid/content/Intent;-><init>()V

    const-string v33, "com.android.settings"

    const-string v34, "com.android.settings.IccLockSettings"

    invoke-virtual/range {v32 .. v34}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 443
    :cond_9
    new-instance v27, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 444
    .local v27, simLockCat:Landroid/preference/PreferenceCategory;
    const v32, 0x7f080480

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 445
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 446
    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 450
    const/4 v15, 0x0

    .line 451
    .local v15, featureSettings:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "settings_sim_network_lock_enable"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 452
    const/16 v32, 0x1

    move v0, v15

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v29

    .line 456
    .local v29, simNetworkLockPreferences:Landroid/preference/PreferenceScreen;
    const v32, 0x7f0801db

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 457
    new-instance v32, Landroid/content/Intent;

    invoke-direct/range {v32 .. v32}, Landroid/content/Intent;-><init>()V

    const-string v33, "com.android.settings"

    const-string v34, "com.android.settings.IccNetworkLockSettings"

    invoke-virtual/range {v32 .. v34}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 458
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 491
    .end local v27           #simLockCat:Landroid/preference/PreferenceCategory;
    .end local v28           #simLockPreferences:Landroid/preference/PreferenceScreen;
    .end local v29           #simNetworkLockPreferences:Landroid/preference/PreferenceScreen;
    .end local v30           #simState:I
    :cond_a
    :goto_4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const-string v33, "com.motorola.android.encryption.settings"

    const/16 v34, 0x1

    invoke-virtual/range {v32 .. v34}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 494
    new-instance v12, Landroid/preference/PreferenceCategory;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 495
    .local v12, encryptionCat:Landroid/preference/PreferenceCategory;
    const v32, 0x7f080185

    move-object v0, v12

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 496
    move-object/from16 v0, v24

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 499
    .local v13, encryptionPreferences:Landroid/preference/PreferenceScreen;
    const-string v32, "key_data_encryption"

    move-object v0, v13

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 500
    const v32, 0x7f080186

    move-object v0, v13

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 501
    const v32, 0x7f080187

    move-object v0, v13

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 502
    invoke-virtual {v12, v13}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v12           #encryptionCat:Landroid/preference/PreferenceCategory;
    .end local v13           #encryptionPreferences:Landroid/preference/PreferenceScreen;
    :goto_5
    new-instance v20, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 512
    .local v20, passwordsCat:Landroid/preference/PreferenceCategory;
    const v32, 0x7f080370

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 513
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 515
    new-instance v26, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 516
    .local v26, showPassword:Landroid/preference/CheckBoxPreference;
    const-string v32, "show_password"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 517
    const v32, 0x7f0805c3

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 518
    const v32, 0x7f0805c4

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 519
    const/16 v32, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 520
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 523
    new-instance v10, Landroid/preference/PreferenceCategory;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 524
    .local v10, devicePoliciesCat:Landroid/preference/PreferenceCategory;
    const v32, 0x7f080395

    move-object v0, v10

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 525
    move-object/from16 v0, v24

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 527
    new-instance v8, Landroid/preference/Preference;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 528
    .local v8, deviceAdminButton:Landroid/preference/Preference;
    const v32, 0x7f080396

    move-object v0, v8

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 529
    const v32, 0x7f080397

    move-object v0, v8

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 530
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 531
    .local v9, deviceAdminIntent:Landroid/content/Intent;
    const-class v32, Lcom/android/settings/DeviceAdminSettings;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 532
    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 533
    invoke-virtual {v10, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 536
    new-instance v7, Landroid/preference/PreferenceCategory;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 537
    .local v7, credentialsCat:Landroid/preference/PreferenceCategory;
    const v32, 0x7f0806c6

    move-object v0, v7

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 538
    move-object/from16 v0, v24

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object v1, v7

    move/from16 v2, v33

    #calls: Lcom/android/settings/SecuritySettings$CredentialStorage;->createPreferences(Landroid/preference/PreferenceCategory;I)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->access$300(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V

    .line 542
    new-instance v5, Landroid/preference/PreferenceCategory;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 543
    .local v5, certificatesCat:Landroid/preference/PreferenceCategory;
    const v32, 0x7f080168

    move-object v0, v5

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 544
    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 547
    .local v6, certsPreferences:Landroid/preference/PreferenceScreen;
    const v32, 0x7f080169

    move-object v0, v6

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 548
    const v32, 0x7f08016a

    move-object v0, v6

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 549
    const-string v32, "trusted_certificates"

    move-object v0, v6

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 552
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 553
    .restart local v18       #intent:Landroid/content/Intent;
    const-string v32, "com.motorola.certificatemanager"

    const-string v33, "com.motorola.certificatemanager.CertViewStartup"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 555
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 557
    const-string v32, "trusted_certificates"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    move-result v32

    if-nez v32, :cond_b

    .line 558
    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 559
    const-string v32, "SecuritySettings"

    const-string v33, "certificatemanager doesn\'t exist, remove it."

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_b
    new-instance v11, Landroid/preference/PreferenceCategory;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 565
    .local v11, encryptedfsCat:Landroid/preference/PreferenceCategory;
    const v32, 0x7f0806e0

    move-object v0, v11

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move-object v1, v11

    move/from16 v2, v33

    #calls: Lcom/android/settings/SecuritySettings$CredentialStorage;->createPreferences(Landroid/preference/PreferenceCategory;I)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->access$300(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V

    .line 568
    return-object v24

    .line 316
    .end local v4           #activePhoneType:I
    .end local v5           #certificatesCat:Landroid/preference/PreferenceCategory;
    .end local v6           #certsPreferences:Landroid/preference/PreferenceScreen;
    .end local v7           #credentialsCat:Landroid/preference/PreferenceCategory;
    .end local v8           #deviceAdminButton:Landroid/preference/Preference;
    .end local v9           #deviceAdminIntent:Landroid/content/Intent;
    .end local v10           #devicePoliciesCat:Landroid/preference/PreferenceCategory;
    .end local v11           #encryptedfsCat:Landroid/preference/PreferenceCategory;
    .end local v14           #featureOn:Ljava/lang/String;
    .end local v15           #featureSettings:I
    .end local v17           #fingerprintHWSupported:I
    .end local v18           #intent:Landroid/content/Intent;
    .end local v20           #passwordsCat:Landroid/preference/PreferenceCategory;
    .end local v26           #showPassword:Landroid/preference/CheckBoxPreference;
    .end local v31           #vzw4gphonefeatureOn:Ljava/lang/String;
    :cond_c
    const/16 v32, 0x0

    move/from16 v17, v32

    goto/16 :goto_0

    .line 325
    .restart local v17       #fingerprintHWSupported:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintEnabled()Z

    move-result v32

    if-eqz v32, :cond_e

    .line 326
    const v32, 0x7f040022

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 328
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v32

    sparse-switch v32, :sswitch_data_0

    .line 344
    :goto_6
    const/16 v32, 0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 345
    const-string v32, "unlock_set_or_change"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    const v32, 0x7f080224

    move-object v0, v4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_1

    .line 330
    :sswitch_0
    const v32, 0x7f040024

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto :goto_6

    .line 337
    :sswitch_1
    const v32, 0x7f040026

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto :goto_6

    .line 341
    :sswitch_2
    const v32, 0x7f040023

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto :goto_6

    .line 428
    .restart local v4       #activePhoneType:I
    .restart local v14       #featureOn:Ljava/lang/String;
    .restart local v31       #vzw4gphonefeatureOn:Ljava/lang/String;
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 429
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_3

    .line 467
    :cond_11
    const/4 v15, 0x0

    .line 468
    .restart local v15       #featureSettings:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "settings_sim_network_lock_enable"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 469
    const/16 v32, 0x1

    move v0, v15

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 471
    new-instance v27, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 472
    .restart local v27       #simLockCat:Landroid/preference/PreferenceCategory;
    const v32, 0x7f080480

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 473
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v29

    .line 476
    .restart local v29       #simNetworkLockPreferences:Landroid/preference/PreferenceScreen;
    const v32, 0x7f0801db

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 477
    new-instance v32, Landroid/content/Intent;

    invoke-direct/range {v32 .. v32}, Landroid/content/Intent;-><init>()V

    const-string v33, "com.android.settings"

    const-string v34, "com.android.settings.IccNetworkLockSettings"

    invoke-virtual/range {v32 .. v34}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 478
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 504
    .end local v27           #simLockCat:Landroid/preference/PreferenceCategory;
    .end local v29           #simNetworkLockPreferences:Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v32

    goto/16 :goto_5

    .line 328
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 26
    .parameter "lockTimerPreference"

    .prologue
    .line 574
    const-string v22, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 576
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_3

    const/16 v22, 0x0

    move-object v0, v2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 577
    .local v10, lockTimerLimit:J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "lock_timer"

    sget v24, Lcom/motorola/internal/widget/LockPinUtils;->FALLBACK_LOCK_TIMER_VALUE:I

    invoke-static/range {v22 .. v24}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 580
    .local v9, lockTimer:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "lock_timer_max"

    const v24, 0x124f80

    invoke-static/range {v22 .. v24}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 582
    .local v6, iLockTimerMaxMilisec:I
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 583
    .local v3, entries:[Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v17

    .line 584
    .local v17, values:[Ljava/lang/CharSequence;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v7, limitedEntries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v8, limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v22, v10, v22

    if-ltz v22, :cond_0

    .line 588
    int-to-long v10, v6

    .line 591
    :cond_0
    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-nez v22, :cond_5

    .line 592
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 593
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 594
    const/16 v21, 0x0

    .line 595
    .local v21, wasPartOfPreferenceList:Z
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 597
    .local v13, selectPreference:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move v0, v5

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 598
    aget-object v22, v17, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 599
    .local v14, timeout:I
    if-ne v14, v13, :cond_4

    .line 600
    const/16 v21, 0x1

    .line 605
    .end local v14           #timeout:I
    :cond_1
    if-nez v21, :cond_2

    .line 606
    sget v22, Lcom/motorola/internal/widget/LockPinUtils;->FALLBACK_LOCK_TIMER_VALUE:I

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "lock_timer"

    sget v24, Lcom/motorola/internal/widget/LockPinUtils;->FALLBACK_LOCK_TIMER_VALUE:I

    invoke-static/range {v22 .. v24}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 672
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #i:I
    .end local v13           #selectPreference:I
    .end local v21           #wasPartOfPreferenceList:Z
    :cond_2
    :goto_2
    return-void

    .line 576
    .end local v3           #entries:[Ljava/lang/CharSequence;
    .end local v6           #iLockTimerMaxMilisec:I
    .end local v7           #limitedEntries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #lockTimer:I
    .end local v10           #lockTimerLimit:J
    .end local v17           #values:[Ljava/lang/CharSequence;
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_3
    const-wide/16 v22, 0x0

    move-wide/from16 v10, v22

    goto/16 :goto_0

    .line 597
    .restart local v3       #entries:[Ljava/lang/CharSequence;
    .restart local v5       #i:I
    .restart local v6       #iLockTimerMaxMilisec:I
    .restart local v7       #limitedEntries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #lockTimer:I
    .restart local v10       #lockTimerLimit:J
    .restart local v13       #selectPreference:I
    .restart local v14       #timeout:I
    .restart local v17       #values:[Ljava/lang/CharSequence;
    .restart local v21       #wasPartOfPreferenceList:Z
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 613
    .end local v5           #i:I
    .end local v13           #selectPreference:I
    .end local v14           #timeout:I
    .end local v21           #wasPartOfPreferenceList:Z
    :cond_5
    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-lez v22, :cond_b

    .line 614
    const/16 v19, 0x0

    .line 616
    .local v19, wasPartOfDefaultSet:Z
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move v0, v5

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 617
    aget-object v22, v17, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 618
    .local v15, v:J
    cmp-long v22, v15, v10

    if-gtz v22, :cond_7

    .line 619
    cmp-long v22, v15, v10

    if-nez v22, :cond_6

    .line 620
    const/16 v19, 0x1

    .line 622
    :cond_6
    aget-object v22, v17, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    aget-object v22, v3, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 626
    .end local v15           #v:J
    :cond_8
    if-nez v19, :cond_9

    .line 629
    new-instance v22, Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v24, 0xea60

    div-long v24, v10, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f08002f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v22, Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    .line 640
    .local v4, es:[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 641
    .local v18, vs:[Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    check-cast v2, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 642
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v17

    .line 648
    const/16 v20, 0x0

    .line 649
    .local v20, wasPartOfList:Z
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move v0, v5

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 650
    aget-object v22, v17, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 651
    .restart local v14       #timeout:I
    if-ne v14, v9, :cond_d

    .line 652
    const/16 v20, 0x1

    .line 656
    .end local v14           #timeout:I
    :cond_a
    if-nez v20, :cond_b

    .line 657
    sget v9, Lcom/motorola/internal/widget/LockPinUtils;->FALLBACK_LOCK_TIMER_VALUE:I

    .line 658
    sget v22, Lcom/motorola/internal/widget/LockPinUtils;->FALLBACK_LOCK_TIMER_VALUE:I

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "lock_timer"

    sget v24, Lcom/motorola/internal/widget/LockPinUtils;->FALLBACK_LOCK_TIMER_VALUE:I

    invoke-static/range {v22 .. v24}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 665
    .end local v4           #es:[Ljava/lang/String;
    .end local v5           #i:I
    .end local v18           #vs:[Ljava/lang/String;
    .end local v19           #wasPartOfDefaultSet:Z
    .end local v20           #wasPartOfList:Z
    :cond_b
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 666
    .local v12, lt:Ljava/lang/String;
    move v0, v9

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v22, v22, v10

    if-ltz v22, :cond_c

    .line 667
    move-wide v0, v10

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "lock_timer"

    move-wide v0, v10

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 671
    :cond_c
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 649
    .end local v12           #lt:Ljava/lang/String;
    .restart local v4       #es:[Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v14       #timeout:I
    .restart local v18       #vs:[Ljava/lang/String;
    .restart local v19       #wasPartOfDefaultSet:Z
    .restart local v20       #wasPartOfList:Z
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method private getProviderValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1173
    const-string v1, ""

    .line 1174
    .local v1, value:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 1176
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mProviderIndicator:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1178
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mProviderValue:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1184
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mProviderValue:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1188
    :cond_2
    return-object v1
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 1168
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private showPrivacyPolicy()V
    .locals 2

    .prologue
    .line 1006
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.TERMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1008
    return-void
.end method

.method private showScreenLockReqByEncrAppDialog()V
    .locals 5

    .prologue
    .line 1628
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1629
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080188

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080189

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08018a

    new-instance v4, Lcom/android/settings/SecuritySettings$11;

    invoke-direct {v4, p0}, Lcom/android/settings/SecuritySettings$11;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08018b

    new-instance v4, Lcom/android/settings/SecuritySettings$10;

    invoke-direct {v4, p0}, Lcom/android/settings/SecuritySettings$10;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1643
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1644
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1645
    return-void
.end method

.method private simulateOnPreferenceTreeClick()V
    .locals 4

    .prologue
    .line 1648
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1649
    .local v1, screen:Landroid/preference/PreferenceScreen;
    const-string v2, "unlock_set_or_change"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1651
    .local v0, preferenceLocScreen:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1652
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SecuritySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1656
    :goto_0
    return-void

    .line 1654
    :cond_0
    const-string v2, "SecuritySettings"

    const-string v3, "Error! Cannot find preference \'Setup screen lock\' with key \'unlock_set_or_change\' in the PreferenceScreen object."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 11

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v10, "vzw_lbs"

    const-string v9, "network"

    .line 1135
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1136
    .local v3, res:Landroid/content/ContentResolver;
    const-string v4, "gps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 1139
    .local v1, gpsEnabled:Z
    const-string v4, "network"

    invoke-static {v3, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 1142
    .local v2, networkEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vzw_lbs"

    invoke-static {v4, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1145
    .local v0, agpsEnabled:Z
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mProviderIndicator:[I

    if-eqz v2, :cond_2

    move v5, v6

    :goto_0
    aput v5, v4, v7

    .line 1146
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mProviderIndicator:[I

    if-eqz v1, :cond_3

    move v5, v6

    :goto_1
    aput v5, v4, v6

    .line 1147
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mProviderIndicator:[I

    if-eqz v0, :cond_4

    move v5, v6

    :goto_2
    aput v5, v4, v8

    .line 1148
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v5, "network"

    invoke-static {v3, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1150
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1151
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 1152
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v5, "assisted_gps_enabled"

    invoke-static {v3, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1154
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1158
    :cond_0
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mAgps:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 1160
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mAgps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vzw_lbs"

    invoke-static {v5, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1165
    :cond_1
    return-void

    :cond_2
    move v5, v7

    .line 1145
    goto :goto_0

    :cond_3
    move v5, v7

    .line 1146
    goto :goto_1

    :cond_4
    move v5, v7

    .line 1147
    goto :goto_2

    :cond_5
    move v5, v7

    .line 1152
    goto :goto_3
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1203
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1206
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_1

    .line 1207
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 1208
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1209
    :cond_0
    new-instance v0, Lcom/android/settings/SecuritySettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$8;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    .line 1215
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1243
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 1244
    return-void

    .line 1217
    :cond_2
    if-nez p2, :cond_1

    .line 1218
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1219
    :cond_3
    new-instance v0, Lcom/android/settings/SecuritySettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$9;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    .line 1237
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 782
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 783
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 784
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 786
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 790
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSecurityLockWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSecurityLockWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 793
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    new-instance v6, Lcom/android/settings/SecuritySettings$2;

    invoke-direct {v6, p0}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;)V

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 804
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 225
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 228
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_feature_enabled"

    invoke-static {v0, v1, v12}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SecuritySettings;->mAgpsFtrEnabled:I

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mVZWLocationPrompts:Z

    .line 232
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 234
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 235
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v13, [Ljava/lang/String;

    const-string v5, "location_providers_allowed"

    aput-object v5, v4, v12

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 242
    .local v11, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v11, v1, v13, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 243
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    new-instance v1, Lcom/android/settings/SecuritySettings$SettingsObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SecuritySettings$SettingsObserver;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 247
    :try_start_0
    const-string v0, "com.authentec.amjni.AuthentecMobile"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 248
    .local v7, authentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 249
    .local v8, contextConstructor:Ljava/lang/reflect/Constructor;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mAuthentecMobile:Ljava/lang/Object;

    .line 251
    const-string v0, "com.authentec.amjni.AM_STATUS"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 252
    .local v6, amStatus:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 253
    .local v10, o:Ljava/lang/Object;
    const-string v0, "eAM_STATUS_TIMEOUT"

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SecuritySettings;->eAM_STATUS_TIMEOUT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v6           #amStatus:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #authentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #contextConstructor:Ljava/lang/reflect/Constructor;
    .end local v10           #o:Ljava/lang/Object;
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 256
    .local v9, ex:Ljava/lang/Exception;
    const-string v0, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mAuthentecMobile:Ljava/lang/Object;

    .line 258
    const/16 v0, -0x100

    iput v0, p0, Lcom/android/settings/SecuritySettings;->eAM_STATUS_TIMEOUT:I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v9, "lock_timer"

    .line 1096
    const-string v8, "lock_timer"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1097
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1098
    .local v1, cr:Landroid/content/ContentResolver;
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1100
    .local v7, objValue:I
    const-string v8, "lock_timer_max"

    const v9, 0x124f80

    invoke-static {v1, v8, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1102
    .local v5, itEnforcedMaxMilisec:I
    move v4, v5

    .line 1103
    .local v4, itEnforcedMax:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    .line 1104
    const v8, 0xea60

    div-int/2addr v4, v8

    .line 1107
    :cond_0
    if-le v7, v5, :cond_1

    .line 1109
    const v8, 0x7f08003b

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1112
    .local v6, message:Ljava/lang/String;
    invoke-static {p0, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v12

    .line 1128
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #itEnforcedMax:I
    .end local v5           #itEnforcedMaxMilisec:I
    .end local v6           #message:Ljava/lang/String;
    .end local v7           #objValue:I
    .end local p2
    :goto_0
    return v8

    .line 1116
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v4       #itEnforcedMax:I
    .restart local v5       #itEnforcedMaxMilisec:I
    .restart local v7       #objValue:I
    .restart local p2
    :cond_1
    :try_start_0
    const-string v8, "lock_timer"

    invoke-static {v1, v8, v7}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :goto_1
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v8, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 1123
    .local v3, idx:I
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1124
    .local v2, entries:[Ljava/lang/CharSequence;
    if-ltz v3, :cond_2

    array-length v8, v2

    if-lez v8, :cond_2

    .line 1125
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #entries:[Ljava/lang/CharSequence;
    .end local v3           #idx:I
    .end local v4           #itEnforcedMax:I
    .end local v5           #itEnforcedMaxMilisec:I
    .end local v7           #objValue:I
    :cond_2
    move v8, v11

    .line 1128
    goto :goto_0

    .line 1117
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v4       #itEnforcedMax:I
    .restart local v5       #itEnforcedMaxMilisec:I
    .restart local v7       #objValue:I
    .restart local p2
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 23
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 839
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 841
    .local v12, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v14

    .line 843
    .local v14, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v19

    .line 844
    .local v19, simState:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "airplane_mode_on"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x1

    move/from16 v11, v20

    .line 845
    .local v11, isAirplaneModeOn:Z
    :goto_0
    if-nez v11, :cond_6

    const-string v20, "sim_lock"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    if-nez v19, :cond_6

    .line 846
    :cond_0
    const v20, 0x7f0801da

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 850
    :cond_1
    :goto_1
    const-string v20, "unlock_set_or_change"

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10d0027

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 856
    const-string v20, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/admin/DevicePolicyManager;

    .line 858
    .local v16, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v17

    .line 859
    .local v17, quality:I
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v15

    .line 860
    .local v15, mAccountManager:Landroid/accounts/AccountManager;
    const-string v20, "com.google"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 864
    .local v3, accounts:[Landroid/accounts/Account;
    const/4 v7, 0x0

    .line 865
    .local v7, bGmsInstalled:Z
    invoke-virtual {v15}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    .line 866
    .local v5, ads:[Landroid/accounts/AuthenticatorDescription;
    move-object v6, v5

    .local v6, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v13, v6

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v13, :cond_2

    aget-object v4, v6, v9

    .line 867
    .local v4, ad:Landroid/accounts/AuthenticatorDescription;
    const-string v20, "com.google"

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 868
    const/4 v7, 0x1

    .line 873
    .end local v4           #ad:Landroid/accounts/AuthenticatorDescription;
    :cond_2
    if-gtz v17, :cond_3

    if-eqz v7, :cond_3

    move-object v0, v3

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_8

    .line 875
    :cond_3
    new-instance v10, Landroid/content/Intent;

    const-class v20, Lcom/android/settings/ChooseLockGeneric;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 876
    .local v10, intent:Landroid/content/Intent;
    const/16 v20, 0x7b

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1002
    .end local v3           #accounts:[Landroid/accounts/Account;
    .end local v5           #ads:[Landroid/accounts/AuthenticatorDescription;
    .end local v6           #arr$:[Landroid/accounts/AuthenticatorDescription;
    .end local v7           #bGmsInstalled:Z
    .end local v9           #i$:I
    .end local v10           #intent:Landroid/content/Intent;
    .end local v13           #len$:I
    .end local v15           #mAccountManager:Landroid/accounts/AccountManager;
    .end local v16           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v17           #quality:I
    :cond_4
    :goto_3
    const/16 v20, 0x0

    return v20

    .line 844
    .end local v11           #isAirplaneModeOn:Z
    :cond_5
    const/16 v20, 0x0

    move/from16 v11, v20

    goto/16 :goto_0

    .line 847
    .restart local v11       #isAirplaneModeOn:Z
    :cond_6
    const-string v20, "sim_lock"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    if-eqz v11, :cond_1

    .line 848
    const v20, 0x7f080227

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 866
    .restart local v3       #accounts:[Landroid/accounts/Account;
    .restart local v4       #ad:Landroid/accounts/AuthenticatorDescription;
    .restart local v5       #ads:[Landroid/accounts/AuthenticatorDescription;
    .restart local v6       #arr$:[Landroid/accounts/AuthenticatorDescription;
    .restart local v7       #bGmsInstalled:Z
    .restart local v9       #i$:I
    .restart local v13       #len$:I
    .restart local v15       #mAccountManager:Landroid/accounts/AccountManager;
    .restart local v16       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v17       #quality:I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 882
    .end local v4           #ad:Landroid/accounts/AuthenticatorDescription;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->secureLockWarningDialog()V

    goto :goto_3

    .line 885
    .end local v3           #accounts:[Landroid/accounts/Account;
    .end local v5           #ads:[Landroid/accounts/AuthenticatorDescription;
    .end local v6           #arr$:[Landroid/accounts/AuthenticatorDescription;
    .end local v7           #bGmsInstalled:Z
    .end local v9           #i$:I
    .end local v13           #len$:I
    .end local v15           #mAccountManager:Landroid/accounts/AccountManager;
    .end local v16           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v17           #quality:I
    :cond_9
    new-instance v10, Landroid/content/Intent;

    const-class v20, Lcom/android/settings/ChooseLockGeneric;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 886
    .restart local v10       #intent:Landroid/content/Intent;
    const/16 v20, 0x7b

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 889
    .end local v10           #intent:Landroid/content/Intent;
    :cond_a
    const-string v20, "lockenabled"

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 890
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v20

    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_3

    .line 891
    :cond_b
    const-string v20, "visiblepattern"

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 892
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v20

    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_3

    .line 893
    :cond_c
    const-string v20, "unlock_tactile_feedback"

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 894
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v20

    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto/16 :goto_3

    .line 896
    :cond_d
    const-string v20, "clear_fingerprints"

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->isAlive()Z

    move-result v20

    if-nez v20, :cond_4

    .line 898
    :cond_e
    new-instance v20, Lcom/android/settings/SecuritySettings$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$3;-><init>(Lcom/android/settings/SecuritySettings;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mFingerprintsClearThread:Ljava/lang/Thread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3

    .line 923
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mScreenLock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mScreenLock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_10

    const/16 v20, 0x1

    move/from16 v18, v20

    .line 926
    .local v18, screenLock:I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_lock"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 925
    .end local v18           #screenLock:I
    :cond_10
    const/16 v20, 0x0

    move/from16 v18, v20

    goto :goto_4

    .line 928
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 929
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "show_password"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v22

    if-eqz v22, :cond_12

    const/16 v22, 0x1

    :goto_5
    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_12
    const/16 v22, 0x0

    goto :goto_5

    .line 931
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mProviderIndicator:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    aput v22, v20, v21

    .line 940
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "location_providers_allowed"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getProviderValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 938
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mProviderIndicator:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    goto :goto_6

    .line 941
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    .line 943
    .local v8, enabled:Z
    if-eqz v8, :cond_17

    .line 946
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mVZWLocationPrompts:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->showStandardGPSDialog()V

    .line 958
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 949
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mProviderIndicator:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    aput v22, v20, v21

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "location_providers_allowed"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getProviderValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    .line 955
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mProviderIndicator:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "location_providers_allowed"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getProviderValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    .line 961
    .end local v8           #enabled:Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "assisted_gps_enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v22

    if-eqz v22, :cond_19

    const/16 v22, 0x1

    :goto_8
    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_19
    const/16 v22, 0x0

    goto :goto_8

    .line 966
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mAgps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1c

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mAgps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 969
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->showVzwTermsDialog()V

    goto/16 :goto_3

    .line 972
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mProviderIndicator:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "location_providers_allowed"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getProviderValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 990
    :cond_1c
    const-string v20, "key_data_encryption"

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 993
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 994
    .restart local v10       #intent:Landroid/content/Intent;
    const-string v20, "com.motorola.android.encryption.settings"

    const-string v21, "com.motorola.android.encryption.settings.EncryptionUserActivity"

    move-object v0, v10

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 997
    .end local v10           #intent:Landroid/content/Intent;
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->showScreenLockReqByEncrAppDialog()V

    goto/16 :goto_3
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 677
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.motorola.hardware.fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v8

    .line 682
    .local v0, fingerprintHWSupported:I
    :goto_0
    if-ne v0, v8, :cond_1

    .line 683
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mClearFingerprints:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 685
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsStoredThread:Ljava/lang/Thread;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsStoredThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 686
    :cond_0
    new-instance v4, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v4, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsStoredThread:Ljava/lang/Thread;

    .line 713
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mFingerprintsStoredThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 719
    :cond_1
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 720
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_2

    .line 721
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 723
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 724
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 727
    :cond_3
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_password"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 735
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_timer"

    sget v6, Lcom/motorola/internal/widget/LockPinUtils;->FALLBACK_LOCK_TIMER_VALUE:I

    invoke-static {v4, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 737
    .local v2, lockTimer:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 738
    .local v3, lt:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 742
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 745
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 750
    :goto_2
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-virtual {v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->resume()V

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "restriction_lock"

    invoke-static {v4, v5, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v8, v4, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_restriction"

    invoke-static {v4, v5, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v8, v4, :cond_9

    .line 760
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 761
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 763
    iget v4, p0, Lcom/android/settings/SecuritySettings;->mAgpsFtrEnabled:I

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/SecuritySettings;->mVZWLocationPrompts:Z

    if-eqz v4, :cond_5

    .line 764
    :cond_4
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mAgps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 777
    :cond_5
    :goto_3
    return-void

    .end local v0           #fingerprintHWSupported:I
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #lockTimer:I
    .end local v3           #lt:Ljava/lang/String;
    :cond_6
    move v0, v7

    .line 681
    goto/16 :goto_0

    .restart local v0       #fingerprintHWSupported:I
    .restart local v1       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_7
    move v5, v7

    .line 727
    goto :goto_1

    .line 747
    .restart local v2       #lockTimer:I
    .restart local v3       #lt:Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_2

    .line 769
    :cond_9
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 770
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 772
    iget v4, p0, Lcom/android/settings/SecuritySettings;->mAgpsFtrEnabled:I

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings/SecuritySettings;->mVZWLocationPrompts:Z

    if-eqz v4, :cond_5

    .line 773
    :cond_a
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mAgps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_3
.end method

.method secureLockWarningDialog()V
    .locals 9

    .prologue
    .line 807
    const v1, 0x7f030049

    const/4 v8, 0x0

    invoke-static {p0, v1, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 808
    .local v2, mbutton:Landroid/view/View;
    const v1, 0x7f0c00dd

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    move-object v7, v0

    .line 809
    .local v7, create_button:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f08017d

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v8, 0x1080027

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v8, 0x7f080389

    invoke-virtual {v1, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v8, 0x104

    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mSecurityLockWarningDialog:Landroid/app/AlertDialog;

    .line 820
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "use_google_mail"

    invoke-static {v1, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSecurityLockWarningDialog:Landroid/app/AlertDialog;

    const v8, 0x7f08017e

    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 827
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v8, 0x7f0a

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 828
    .local v3, viewSpacingLeft:I
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a0001

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 829
    .local v5, viewSpacingRight:I
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a0002

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 830
    .local v4, viewSpacingTop:I
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a0003

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 831
    .local v6, viewSpacingBottom:I
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSecurityLockWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 832
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSecurityLockWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 833
    return-void

    .line 824
    .end local v3           #viewSpacingLeft:I
    .end local v4           #viewSpacingTop:I
    .end local v5           #viewSpacingRight:I
    .end local v6           #viewSpacingBottom:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSecurityLockWarningDialog:Landroid/app/AlertDialog;

    const v8, 0x7f08017c

    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method showStandardGPSDialog()V
    .locals 5

    .prologue
    .line 1069
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1071
    .local v1, standardGPS_bld:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1073
    const v2, 0x7f08023d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10801bd

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080138

    new-instance v4, Lcom/android/settings/SecuritySettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/SecuritySettings$7;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080139

    new-instance v4, Lcom/android/settings/SecuritySettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/SecuritySettings$6;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1089
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1090
    .local v0, alert:Landroid/app/AlertDialog;
    const v2, 0x7f08023c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1091
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1092
    return-void
.end method

.method showVzwTermsDialog()V
    .locals 5

    .prologue
    .line 1011
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1013
    .local v1, terms_bld:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAgps:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1015
    const v2, 0x7f080237

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10801bd

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080138

    new-instance v4, Lcom/android/settings/SecuritySettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/SecuritySettings$5;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080139

    new-instance v4, Lcom/android/settings/SecuritySettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/SecuritySettings$4;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1033
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1034
    .local v0, alert:Landroid/app/AlertDialog;
    const v2, 0x7f0801f8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1036
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1037
    return-void
.end method

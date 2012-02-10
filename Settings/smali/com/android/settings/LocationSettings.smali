.class public Lcom/android/settings/LocationSettings;
.super Landroid/preference/PreferenceActivity;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CALIBRATION_KEY_IN_SETTINGDB:Ljava/lang/String; = "compass_calibrated"

.field private static final CALIBRATOR_CLASS:Ljava/lang/String; = "com.motorola.CompassCalibrate.CompassCalibrate"

.field private static final CALIBRATOR_PACKAGE:Ljava/lang/String; = "com.motorola.CompassCalibrate"

.field private static final DLG_BASIC_LOCATION_CONFIRM:I = 0x1

.field private static final DLG_PREFERRED_LOCATION_CONFIRM:I = 0x2

.field private static final FEATURE_LOCATION_PRIVACY_SETTING:Ljava/lang/String; = "ro.mot.settings.locprivacy"

.field private static final FLAG_GPS_ON:I = 0x1

.field private static final LOCATION_CATEGORY:Ljava/lang/String; = "location_category"

.field private static final LOCATION_CATEGORY_PRIVACY:Ljava/lang/String; = "location_category_privacy"

.field private static final LOCATION_GPS:Ljava/lang/String; = "location_gps"

.field private static final LOCATION_NETWORK:Ljava/lang/String; = "location_network"

.field static final LOCATION_PRIVACY_POLICY_BASIC_LOCATION:I = 0x1

.field static final LOCATION_PRIVACY_POLICY_E911_ONLY:I = 0x0

.field static final LOCATION_PRIVACY_POLICY_PREFERRED_LOCATION:I = 0x2

.field private static final LOCATION_PRIVACY_POLICY_SETTING:Ljava/lang/String; = "location_privacy_policy_setting"

.field private static final TAG:Ljava/lang/String; = "LocationSettings"


# instance fields
.field private focusChanged:Z

.field private mAlertCompassCalibrator:Landroid/app/AlertDialog;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationPrivacyPolicy:Lcom/android/settings/SummaryListPreference;

.field private mLocationPrivacySettingEnabled:Z

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mUpdateProviders:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/LocationSettings;->focusChanged:Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LocationSettings;->mUpdateProviders:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mAlertCompassCalibrator:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocationSettings;)Lcom/android/settings/SummaryListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mLocationPrivacyPolicy:Lcom/android/settings/SummaryListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LocationSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/LocationSettings;->setCurrentLocationPrivacyPolicy(I)V

    return-void
.end method

.method private getAllowedProviders()Ljava/lang/String;
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, allowedProviders:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 355
    const-string v0, ""

    .line 357
    :cond_0
    return-object v0
.end method

.method static getCurrentLocationPrivacyPolicy(Landroid/content/ContentResolver;)I
    .locals 7
    .parameter "res"

    .prologue
    const/4 v6, 0x1

    .line 256
    const/4 v4, 0x0

    .line 257
    .local v4, privacy:I
    const-string v5, "gps"

    invoke-static {p0, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 258
    .local v2, gpsProviderEnabled:Z
    const-string v5, "network"

    invoke-static {p0, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 260
    .local v3, networkProviderEnabled:Z
    const-string v5, "vzw_lbs"

    invoke-static {p0, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 262
    .local v0, agpsProviderEnabled:Z
    const-string v5, "assisted_gps_enabled"

    invoke-static {p0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v6

    .line 263
    .local v1, assistedGpsEnabled:Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 264
    const/4 v4, 0x2

    .line 269
    :cond_0
    :goto_1
    return v4

    .line 262
    .end local v1           #assistedGpsEnabled:Z
    :cond_1
    const/4 v5, 0x0

    move v1, v5

    goto :goto_0

    .line 265
    .restart local v1       #assistedGpsEnabled:Z
    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    .line 266
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private launchCompassCalibrator()V
    .locals 3

    .prologue
    .line 367
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08015b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/LocationSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/LocationSettings$3;-><init>(Lcom/android/settings/LocationSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mAlertCompassCalibrator:Landroid/app/AlertDialog;

    .line 381
    return-void
.end method

.method private setCurrentLocationPrivacyPolicy(I)V
    .locals 7
    .parameter "policy"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "network"

    const-string v5, "gps"

    const-string v4, "assisted_gps_enabled"

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    .local v0, res:Landroid/content/ContentResolver;
    packed-switch p1, :pswitch_data_0

    .line 296
    const-string v1, "network"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 297
    const-string v1, "gps"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 299
    const-string v1, "vzw_lbs"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 301
    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    :goto_0
    return-void

    .line 278
    :pswitch_0
    const-string v1, "vzw_lbs"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 280
    const-string v1, "network"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 281
    const-string v1, "gps"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 282
    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 286
    :pswitch_1
    const-string v1, "gps"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 287
    const-string v1, "network"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 289
    const-string v1, "vzw_lbs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 291
    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateProviders()V
    .locals 3

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 345
    return-void
.end method

.method private updateToggles()V
    .locals 4

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 329
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 332
    .local v0, gpsEnabled:Z
    iget-boolean v2, p0, Lcom/android/settings/LocationSettings;->mLocationPrivacySettingEnabled:Z

    if-nez v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v3, "network"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 335
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 310
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateProviders()V

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LocationSettings;->mOkClicked:Z

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Lcom/android/settings/LocationSettings;->addPreferencesFromResource(I)V

    .line 116
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/android/settings/LocationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/settings/LocationSettings;->mLocationManager:Landroid/location/LocationManager;

    .line 120
    const-string v1, "1"

    const-string v2, "ro.mot.settings.locprivacy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/LocationSettings;->mLocationPrivacySettingEnabled:Z

    .line 121
    iget-boolean v1, p0, Lcom/android/settings/LocationSettings;->mLocationPrivacySettingEnabled:Z

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "location_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    const-string v1, "location_privacy_policy_setting"

    invoke-virtual {p0, v1}, Lcom/android/settings/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SummaryListPreference;

    iput-object v1, p0, Lcom/android/settings/LocationSettings;->mLocationPrivacyPolicy:Lcom/android/settings/SummaryListPreference;

    .line 124
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mLocationPrivacyPolicy:Lcom/android/settings/SummaryListPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SummaryListPreference;->setDismissOnChange(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mLocationPrivacyPolicy:Lcom/android/settings/SummaryListPreference;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/LocationSettings;->getCurrentLocationPrivacyPolicy(Landroid/content/ContentResolver;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SummaryListPreference;->setValue(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mLocationPrivacyPolicy:Lcom/android/settings/SummaryListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/SummaryListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateToggles()V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "compass_calibrated"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    move v0, v4

    .line 140
    .local v0, isCompassCalibrated:Z
    :goto_1
    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->launchCompassCalibrator()V

    .line 143
    :cond_0
    return-void

    .line 128
    .end local v0           #isCompassCalibrated:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "location_category_privacy"

    invoke-virtual {p0, v2}, Lcom/android/settings/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "location_network"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "location_gps"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    goto :goto_0

    :cond_2
    move v0, v3

    .line 139
    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const v1, 0x1080027

    const v3, 0x104000a

    const/high16 v2, 0x104

    .line 216
    packed-switch p1, :pswitch_data_0

    .line 250
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 218
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LocationSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/LocationSettings$1;-><init>(Lcom/android/settings/LocationSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08013f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 234
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LocationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/LocationSettings$2;-><init>(Lcom/android/settings/LocationSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080143

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mAlertCompassCalibrator:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mAlertCompassCalibrator:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mAlertCompassCalibrator:Landroid/app/AlertDialog;

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 161
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 162
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/settings/LocationSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 322
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 179
    const/4 v0, 0x1

    .line 180
    .local v0, updateState:Z
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mLocationPrivacyPolicy:Lcom/android/settings/SummaryListPreference;

    if-ne p1, v2, :cond_0

    .line 181
    const/4 v1, -0x1

    .line 183
    .local v1, value:I
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 188
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 203
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mLocationPrivacyPolicy:Lcom/android/settings/SummaryListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/SummaryListPreference;->setValue(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mLocationPrivacyPolicy:Lcom/android/settings/SummaryListPreference;

    invoke-virtual {v2}, Lcom/android/settings/SummaryListPreference;->dismiss()V

    .line 205
    invoke-direct {p0, v1}, Lcom/android/settings/LocationSettings;->setCurrentLocationPrivacyPolicy(I)V

    .line 210
    .end local v1           #value:I
    :cond_0
    :goto_1
    return v0

    .line 191
    .restart local v1       #value:I
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/LocationSettings;->showDialog(I)V

    .line 192
    const/4 v0, 0x0

    .line 193
    goto :goto_1

    .line 197
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/LocationSettings;->showDialog(I)V

    .line 198
    const/4 v0, 0x0

    .line 199
    goto :goto_1

    .line 184
    :catch_0
    move-exception v2

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eq p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateProviders()V

    .line 174
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "preferences"
    .parameter "key"

    .prologue
    .line 361
    const-string v0, "location_network"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "location_gps"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateProviders()V

    .line 364
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LocationSettings;->focusChanged:Z

    .line 148
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateToggles()V

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/LocationSettings;->focusChanged:Z

    .line 151
    return-void
.end method

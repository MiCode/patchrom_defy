.class public Lcom/android/settings/ChooseLockGeneric;
.super Landroid/preference/PreferenceActivity;
.source "ChooseLockGeneric.java"


# static fields
.field private static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field private static final CONFIRM_DELETE_ENROLL_REQUEST_CODE:I = 0x87

.field private static final CONFIRM_DIALOG_EXIST:Ljava/lang/String; = "confirm_dialog_exist"

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final FINGERPRINT_CONFIRM_DELETE_ENROLL_DIALOG:I = 0x2

.field private static final FINGERPRINT_LOCK_DIALOG:I = 0x1

.field private static final FINGERPRINT_PASSWORD:Ljava/lang/String; = "fingerprint_password"

.field private static final KEY_UNLOCK_SET_FINGERPRINT:Ljava/lang/String; = "unlock_set_fingerprint"

.field private static final KEY_UNLOCK_SET_NONE:Ljava/lang/String; = "unlock_set_none"

.field private static final KEY_UNLOCK_SET_PASSWORD:Ljava/lang/String; = "unlock_set_password"

.field private static final KEY_UNLOCK_SET_PATTERN:Ljava/lang/String; = "unlock_set_pattern"

.field private static final KEY_UNLOCK_SET_PIN:Ljava/lang/String; = "unlock_set_pin"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field public static final PASSWORD_CONFIRMED:Ljava/lang/String; = "password_confirmed"

.field private static final REUSE_FINGERPRINT_REQUEST_CODE:I = 0x69

.field private static final SET_PASSWORD_NEW_FINGERPRINT_REQUEST_CODE:I = 0x7d

.field private static final SET_PASSWORD_REUSE_FINGERPRINT_REQUEST_CODE:I = 0x73

.field private static final TAG:Ljava/lang/String; = "ChooseLockGeneric"


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mConfirmDialogExist:Z

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFingerprintLockButton:Landroid/widget/Button;

.field private mFingerprintsClearThread:Ljava/lang/Thread;

.field private mFingerprintsStored:Z

.field private mFingerprintsStoredThread:Ljava/lang/Thread;

.field private mLockPinUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mThisActivity:Lcom/android/settings/ChooseLockGeneric;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric;->mFingerprintsStored:Z

    .line 70
    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mThisActivity:Lcom/android/settings/ChooseLockGeneric;

    .line 72
    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mFingerprintsClearThread:Ljava/lang/Thread;

    .line 73
    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mFingerprintsStoredThread:Ljava/lang/Thread;

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric;->mConfirmDialogExist:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockGeneric;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric;->mFingerprintsStored:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/ChooseLockGeneric;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockGeneric;->mFingerprintsStored:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/ChooseLockGeneric;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric;->mLockPinUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ChooseLockGeneric;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric;->setupFingerprintBackupPassword(Z)V

    return-void
.end method

.method private createFingerprintConfirmDeleteEnrollDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 443
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 444
    .local v1, li:Landroid/view/LayoutInflater;
    const v3, 0x7f030019

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 446
    .local v2, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v0, fingerprintDialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080578

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 449
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 451
    const v3, 0x7f08028b

    new-instance v4, Lcom/android/settings/ChooseLockGeneric$4;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockGeneric$4;-><init>(Lcom/android/settings/ChooseLockGeneric;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 471
    const v3, 0x7f08028c

    new-instance v4, Lcom/android/settings/ChooseLockGeneric$5;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockGeneric$5;-><init>(Lcom/android/settings/ChooseLockGeneric;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private createFingerprintLockDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 407
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 408
    .local v1, li:Landroid/view/LayoutInflater;
    const v3, 0x7f03001a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 410
    .local v2, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    .local v0, fingerprintDialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080199

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 412
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 413
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 415
    const v3, 0x7f08028b

    new-instance v4, Lcom/android/settings/ChooseLockGeneric$2;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockGeneric$2;-><init>(Lcom/android/settings/ChooseLockGeneric;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    const v3, 0x7f08028c

    new-instance v4, Lcom/android/settings/ChooseLockGeneric$3;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockGeneric$3;-><init>(Lcom/android/settings/ChooseLockGeneric;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private disableUnusablePreferences(I)V
    .locals 13
    .parameter "quality"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "security_picker_category"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 273
    .local v6, picker:Landroid/preference/Preference;
    move-object v0, v6

    check-cast v0, Landroid/preference/PreferenceCategory;

    move-object v1, v0

    .line 274
    .local v1, cat:Landroid/preference/PreferenceCategory;
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v8

    .line 275
    .local v8, preferenceCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_c

    .line 276
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 277
    .local v7, pref:Landroid/preference/Preference;
    instance-of v9, v7, Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_1

    .line 278
    move-object v0, v7

    check-cast v0, Landroid/preference/PreferenceScreen;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, key:Ljava/lang/String;
    const/4 v2, 0x1

    .line 280
    .local v2, enabled:Z
    const-string v9, "unlock_set_none"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 281
    if-gtz p1, :cond_2

    move v2, v12

    .line 304
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 305
    const v9, 0x7f08037e

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 306
    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 275
    .end local v2           #enabled:Z
    .end local v5           #key:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v2       #enabled:Z
    .restart local v5       #key:Ljava/lang/String;
    :cond_2
    move v2, v11

    .line 281
    goto :goto_1

    .line 282
    :cond_3
    const-string v9, "unlock_set_pattern"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 283
    const/high16 v9, 0x1

    if-gt p1, v9, :cond_4

    move v2, v12

    :goto_2
    goto :goto_1

    :cond_4
    move v2, v11

    goto :goto_2

    .line 284
    :cond_5
    const-string v9, "unlock_set_pin"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 287
    const/high16 v9, 0x3

    if-gt p1, v9, :cond_6

    move v2, v12

    :goto_3
    goto :goto_1

    :cond_6
    move v2, v11

    goto :goto_3

    .line 289
    :cond_7
    const-string v9, "unlock_set_password"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 290
    const/high16 v9, 0x5

    if-gt p1, v9, :cond_8

    move v2, v12

    :goto_4
    goto :goto_1

    :cond_8
    move v2, v11

    goto :goto_4

    .line 293
    :cond_9
    const-string v9, "unlock_set_fingerprint"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.motorola.hardware.fingerprint"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v3, v12

    .line 295
    .local v3, fingerprintHWSupported:I
    :goto_5
    if-ne v3, v12, :cond_b

    .line 297
    const/4 v2, 0x1

    goto :goto_1

    .end local v3           #fingerprintHWSupported:I
    :cond_a
    move v3, v11

    .line 294
    goto :goto_5

    .line 299
    .restart local v3       #fingerprintHWSupported:I
    :cond_b
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 300
    const/4 v2, 0x0

    goto :goto_1

    .line 310
    .end local v2           #enabled:Z
    .end local v3           #fingerprintHWSupported:I
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #pref:Landroid/preference/Preference;
    :cond_c
    return-void
.end method

.method private setupFingerprintBackupPassword(Z)V
    .locals 9
    .parameter "bReuseFingerprint"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 482
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v4

    .line 483
    .local v4, quality:I
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .line 484
    .local v3, minLength:I
    const/4 v5, 0x4

    if-ge v3, v5, :cond_0

    .line 485
    const/4 v3, 0x4

    .line 487
    :cond_0
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 488
    .local v1, maxLength:I
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v2

    .line 489
    .local v2, minComplexity:I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 490
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "lockscreen.password_type"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string v5, "lockscreen.password_min"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    const-string v5, "lockscreen.password_max"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    const-string v5, "lockscreen.password_min_complexity"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const-string v5, "confirm_credentials"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 495
    const-string v5, "fingerprint_password"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 497
    if-ne p1, v8, :cond_1

    .line 498
    const/16 v5, 0x73

    invoke-virtual {p0, v0, v5}, Lcom/android/settings/ChooseLockGeneric;->startActivityForResult(Landroid/content/Intent;I)V

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_1
    const/16 v5, 0x7d

    invoke-virtual {p0, v0, v5}, Lcom/android/settings/ChooseLockGeneric;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private updatePreferencesOrFinish()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.password_type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 252
    .local v1, quality:I
    if-ne v1, v4, :cond_1

    .line 254
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 256
    .local v0, prefScreen:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 259
    :cond_0
    const v2, 0x7f040025

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->addPreferencesFromResource(I)V

    .line 260
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->disableUnusablePreferences(I)V

    .line 264
    .end local v0           #prefScreen:Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/high16 v5, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 189
    const/16 v4, 0x69

    if-ne p1, v4, :cond_0

    .line 190
    if-ne p2, v9, :cond_0

    .line 191
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric;->mLockPinUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 192
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric;->mLockPinUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/LockPatternUtils;->setFingerprintEnabled(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    .line 200
    :cond_0
    :goto_0
    const/16 v4, 0x87

    if-ne p1, v4, :cond_1

    .line 201
    if-ne p2, v9, :cond_1

    .line 202
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric;->showDialog(I)V

    .line 206
    :cond_1
    const/16 v4, 0x73

    if-ne p1, v4, :cond_3

    .line 207
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric;->mLockPinUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    .line 208
    .local v0, enabled:Z
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    .line 209
    .local v2, quality:I
    if-nez v0, :cond_2

    if-lt v2, v5, :cond_3

    .line 210
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric;->mLockPinUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/LockPatternUtils;->setFingerprintEnabled(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    .line 215
    .end local v0           #enabled:Z
    .end local v2           #quality:I
    :cond_3
    const/16 v4, 0x7d

    if-ne p1, v4, :cond_5

    .line 216
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric;->mLockPinUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    .line 217
    .restart local v0       #enabled:Z
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    .line 218
    .restart local v2       #quality:I
    if-nez v0, :cond_4

    if-lt v2, v5, :cond_5

    .line 219
    :cond_4
    const/4 v3, 0x0

    .line 220
    .local v3, showHelp:Z
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.motorola.fingerprint"

    const-string v6, "com.motorola.fingerprint.FingerprintEnrollmentWizard"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 221
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "show-instructions"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    const-string v4, "password-existed"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric;->startActivity(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    .line 229
    .end local v0           #enabled:Z
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #quality:I
    .end local v3           #showHelp:Z
    :cond_5
    const/16 v4, 0x64

    if-ne p1, v4, :cond_6

    .line 230
    if-ne p2, v9, :cond_8

    .line 231
    iput-boolean v8, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 232
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric;->mConfirmDialogExist:Z

    .line 233
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferencesOrFinish()V

    .line 240
    :cond_6
    :goto_1
    return-void

    .line 195
    :cond_7
    invoke-direct {p0, v8}, Lcom/android/settings/ChooseLockGeneric;->setupFingerprintBackupPassword(Z)V

    goto :goto_0

    .line 235
    :cond_8
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric;->mConfirmDialogExist:Z

    .line 236
    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockGeneric;->setResult(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, ", mConfirmDialogExist is "

    const-string v4, "ChooseLockGeneric"

    .line 82
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v2, 0x7f080372

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->setTitle(I)V

    .line 88
    iput-object p0, p0, Lcom/android/settings/ChooseLockGeneric;->mThisActivity:Lcom/android/settings/ChooseLockGeneric;

    .line 90
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric;->mLockPinUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 92
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 93
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 96
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 97
    const-string v2, "password_confirmed"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 98
    const-string v2, "ChooseLockGeneric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent have extra, mPasswordConfirmed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    if-eqz p1, :cond_1

    .line 101
    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 102
    const-string v2, "confirm_dialog_exist"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric;->mConfirmDialogExist:Z

    .line 105
    :cond_1
    const-string v2, "ChooseLockGeneric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPasswordConfirmed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mConfirmDialogExist is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric;->mConfirmDialogExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    if-nez v2, :cond_4

    .line 108
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric;->mConfirmDialogExist:Z

    if-nez v2, :cond_2

    .line 110
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 111
    .local v0, helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v2, 0x64

    invoke-virtual {v0, v2, v7, v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 112
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 113
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferencesOrFinish()V

    .line 123
    .end local v0           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_2
    :goto_0
    const-string v2, "ChooseLockGeneric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate exiting. mPasswordConfirmed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mConfirmDialogExist is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric;->mConfirmDialogExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 116
    .restart local v0       #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_3
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric;->mConfirmDialogExist:Z

    goto :goto_0

    .line 120
    .end local v0           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_4
    iput-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric;->mConfirmDialogExist:Z

    .line 121
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferencesOrFinish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 397
    packed-switch p1, :pswitch_data_0

    .line 403
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 399
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->createFingerprintLockDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 401
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->createFingerprintConfirmDeleteEnrollDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 397
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
    .line 164
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 166
    .local v0, handled:Z
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    .line 181
    :goto_0
    return v0

    .line 168
    :cond_0
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const/high16 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    goto :goto_0

    .line 170
    :cond_1
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    const/high16 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    goto :goto_0

    .line 172
    :cond_2
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    goto :goto_0

    .line 174
    :cond_3
    const-string v2, "unlock_set_fingerprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->updateFingerprintMethodAndFinish()V

    goto :goto_0

    .line 179
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 129
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.motorola.hardware.fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 132
    .local v0, fingerprintHWSupported:I
    :goto_0
    if-ne v0, v3, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mFingerprintsStoredThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mFingerprintsStoredThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    :cond_0
    new-instance v1, Lcom/android/settings/ChooseLockGeneric$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockGeneric$1;-><init>(Lcom/android/settings/ChooseLockGeneric;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mFingerprintsStoredThread:Ljava/lang/Thread;

    .line 156
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mFingerprintsStoredThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 159
    :cond_1
    return-void

    .line 131
    .end local v0           #fingerprintHWSupported:I
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 246
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    const-string v0, "confirm_dialog_exist"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mConfirmDialogExist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    return-void
.end method

.method updateFingerprintMethodAndFinish()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 371
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    if-nez v2, :cond_0

    .line 372
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Tried to update password without confirming first"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric;->mFingerprintsStored:Z

    if-nez v2, :cond_2

    .line 376
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric;->mLockPinUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, showHelp:Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.motorola.fingerprint"

    const-string v4, "com.motorola.fingerprint.FingerprintEnrollmentWizard"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 380
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "show-instructions"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 381
    const-string v2, "password-existed"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->startActivity(Landroid/content/Intent;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    .line 391
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #showHelp:Z
    :goto_0
    return-void

    .line 385
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->setupFingerprintBackupPassword(Z)V

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric;->showDialog(I)V

    goto :goto_0
.end method

.method updateUnlockMethodAndFinish(I)V
    .locals 12
    .parameter "quality"

    .prologue
    const/high16 v9, 0x200

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v11, "fingerprint_password"

    const-string v10, "confirm_credentials"

    .line 321
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    if-nez v6, :cond_0

    .line 322
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Tried to update password without confirming first"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 326
    :cond_0
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v4

    .line 327
    .local v4, minQuality:I
    if-ge p1, v4, :cond_1

    .line 328
    move p1, v4

    .line 330
    :cond_1
    const/high16 v6, 0x2

    if-lt p1, v6, :cond_4

    .line 331
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .line 332
    .local v3, minLength:I
    const/4 v6, 0x4

    if-ge v3, v6, :cond_2

    .line 333
    const/4 v3, 0x4

    .line 335
    :cond_2
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 336
    .local v1, maxLength:I
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v2

    .line 337
    .local v2, minComplexity:I
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-class v7, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v6, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 338
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "lockscreen.password_type"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v6, "lockscreen.password_min"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    const-string v6, "lockscreen.password_max"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string v6, "lockscreen.password_min_complexity"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    const-string v6, "confirm_credentials"

    invoke-virtual {v0, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    const-string v6, "fingerprint_password"

    invoke-virtual {v0, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->startActivity(Landroid/content/Intent;)V

    .line 365
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #maxLength:I
    .end local v2           #minComplexity:I
    .end local v3           #minLength:I
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    .line 366
    return-void

    .line 348
    :cond_4
    const/high16 v6, 0x1

    if-ne p1, v6, :cond_7

    .line 349
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    move v5, v6

    .line 350
    .local v5, showTutorial:Z
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 351
    .restart local v0       #intent:Landroid/content/Intent;
    if-eqz v5, :cond_6

    const-class v6, Lcom/android/settings/ChooseLockPatternTutorial;

    :goto_2
    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 354
    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 355
    const-string v6, "key_lock_method"

    const-string v7, "pattern"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v6, "confirm_credentials"

    invoke-virtual {v0, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 358
    const-string v6, "fingerprint_password"

    invoke-virtual {v0, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    .end local v5           #showTutorial:Z
    :cond_5
    move v5, v8

    .line 349
    goto :goto_1

    .line 351
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v5       #showTutorial:Z
    :cond_6
    const-class v6, Lcom/android/settings/ChooseLockPattern;

    goto :goto_2

    .line 361
    .end local v0           #intent:Landroid/content/Intent;
    .end local v5           #showTutorial:Z
    :cond_7
    if-nez p1, :cond_3

    .line 362
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 363
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric;->setResult(I)V

    goto :goto_0
.end method

.class public Lcom/android/settings/restriction/SetupRestrictions;
.super Landroid/preference/PreferenceActivity;
.source "SetupRestrictions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ACTION_ENABLE_RESTRICTION_LOCK_UPDATED:Ljava/lang/String; = "com.android.settings.restriction.ENABLE_RESTRICTION_LOCK_UPDATED"

.field private static final KEY_MESSAGING_RESTRICTION_STATUS:Ljava/lang/String; = "com.android.settings.restriction.Value"

.field public static final REQUEST_CODE_SET_RESTRICTION_PASSWORD:I = 0x2

.field public static final REQUEST_CODE_UNLOCK_RESTRICTION:I = 0x1


# instance fields
.field private mEnableRestrictionCheckBox:Landroid/preference/CheckBoxPreference;

.field private mRestrictionLockState:I

.field private mRestrictionLockUtils:Lcom/android/settings/restriction/RestrictionLockUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 72
    packed-switch p1, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const/4 v2, -0x1

    if-ne v2, p2, :cond_0

    .line 76
    const-string v2, "check_password_result"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 79
    .local v1, isPasswordMatch:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/restriction/SetupRestrictions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "restriction_lock"

    iget v4, p0, Lcom/android/settings/restriction/SetupRestrictions;->mRestrictionLockState:I

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.restriction.ENABLE_RESTRICTION_LOCK_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/SetupRestrictions;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    const/4 v2, 0x2

    if-ne v2, p1, :cond_0

    .line 87
    const v2, 0x7f08002c

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 93
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/restriction/SetupRestrictions;->mEnableRestrictionCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/restriction/SetupRestrictions;->mRestrictionLockUtils:Lcom/android/settings/restriction/RestrictionLockUtils;

    invoke-virtual {v3}, Lcom/android/settings/restriction/RestrictionLockUtils;->isRestrictionLockEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/SetupRestrictions;->addPreferencesFromResource(I)V

    .line 42
    new-instance v0, Lcom/android/settings/restriction/RestrictionLockUtils;

    invoke-virtual {p0}, Lcom/android/settings/restriction/SetupRestrictions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/restriction/RestrictionLockUtils;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/settings/restriction/SetupRestrictions;->mRestrictionLockUtils:Lcom/android/settings/restriction/RestrictionLockUtils;

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/restriction/SetupRestrictions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "enable_restriction_lock"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/restriction/SetupRestrictions;->mEnableRestrictionCheckBox:Landroid/preference/CheckBoxPreference;

    .line 46
    iget-object v0, p0, Lcom/android/settings/restriction/SetupRestrictions;->mEnableRestrictionCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 105
    iget-object v2, p0, Lcom/android/settings/restriction/SetupRestrictions;->mEnableRestrictionCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 106
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    iput v2, p0, Lcom/android/settings/restriction/SetupRestrictions;->mRestrictionLockState:I

    .line 107
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/settings/restriction/Restriction;->UNLOCK_RESTRICTION_SETTINGS:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "CLEAR_PASSWORD"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/restriction/SetupRestrictions;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    move v2, v4

    .line 121
    :goto_2
    return v2

    .restart local p2
    :cond_0
    move v2, v3

    .line 106
    goto :goto_0

    .line 115
    .end local p2
    :cond_1
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/settings/restriction/Restriction;->SET_RESTRICTION_PASSWORD:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/restriction/SetupRestrictions;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .restart local p2
    :cond_2
    move v2, v3

    .line 121
    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 58
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "change_restriction_password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/restriction/Restriction;->CHANGE_RESTRICTION_PASSWORD:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/SetupRestrictions;->startActivity(Landroid/content/Intent;)V

    .line 67
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 61
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "restriction_lock_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/restriction/Restriction;->LAUNCH_RESTRICTION_SETTINGS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/SetupRestrictions;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 52
    iget-object v0, p0, Lcom/android/settings/restriction/SetupRestrictions;->mEnableRestrictionCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/restriction/SetupRestrictions;->mRestrictionLockUtils:Lcom/android/settings/restriction/RestrictionLockUtils;

    invoke-virtual {v1}, Lcom/android/settings/restriction/RestrictionLockUtils;->isRestrictionLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 53
    return-void
.end method

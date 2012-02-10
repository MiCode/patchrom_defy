.class public Lcom/android/settings/restriction/RestrictionSettings;
.super Landroid/preference/PreferenceActivity;
.source "RestrictionSettings.java"


# static fields
.field private static final DIALUP_RESTRICTION_DIALOG:I = 0x1

.field private static final KEY_DIALUP_RESTRICTION:Ljava/lang/String; = "dialup_restriction"

.field private static final KEY_LOCATION_RESTRICTION:Ljava/lang/String; = "location_restriction"


# instance fields
.field private mDialupDialog:Landroid/app/Dialog;

.field private mDialupSelection:I

.field mLocationPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/restriction/RestrictionSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/android/settings/restriction/RestrictionSettings;->mDialupSelection:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/restriction/RestrictionSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/settings/restriction/RestrictionSettings;->mDialupSelection:I

    return p1
.end method

.method private createDialupDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/restriction/RestrictionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialup_modem_restriction"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/restriction/RestrictionSettings;->mDialupSelection:I

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050045

    iget v2, p0, Lcom/android/settings/restriction/RestrictionSettings;->mDialupSelection:I

    new-instance v3, Lcom/android/settings/restriction/RestrictionSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/restriction/RestrictionSettings$3;-><init>(Lcom/android/settings/restriction/RestrictionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08057a

    new-instance v2, Lcom/android/settings/restriction/RestrictionSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/restriction/RestrictionSettings$2;-><init>(Lcom/android/settings/restriction/RestrictionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08057b

    new-instance v2, Lcom/android/settings/restriction/RestrictionSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/restriction/RestrictionSettings$1;-><init>(Lcom/android/settings/restriction/RestrictionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/restriction/RestrictionSettings;->mDialupDialog:Landroid/app/Dialog;

    .line 111
    iget-object v0, p0, Lcom/android/settings/restriction/RestrictionSettings;->mDialupDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const-string v4, "location_restriction"

    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f04001e

    invoke-virtual {p0, v1}, Lcom/android/settings/restriction/RestrictionSettings;->addPreferencesFromResource(I)V

    .line 71
    const-string v1, "location_restriction"

    invoke-virtual {p0, v4}, Lcom/android/settings/restriction/RestrictionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/restriction/RestrictionSettings;->mLocationPreference:Landroid/preference/CheckBoxPreference;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/restriction/RestrictionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_restriction"

    invoke-static {v1, v4, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, locationRestriction:I
    iget-object v1, p0, Lcom/android/settings/restriction/RestrictionSettings;->mLocationPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/settings/restriction/RestrictionSettings;->mLocationPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 77
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 64
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/restriction/RestrictionSettings;->createDialupDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "location_restriction"

    .line 39
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "location_restriction"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/restriction/RestrictionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_restriction"

    iget-object v1, p0, Lcom/android/settings/restriction/RestrictionSettings;->mLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v0, v4, v1}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v2

    .line 53
    :goto_1
    return v0

    :cond_0
    move v1, v3

    .line 41
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialup_restriction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/settings/restriction/RestrictionSettings;->removeDialog(I)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/android/settings/restriction/RestrictionSettings;->showDialog(I)V

    move v0, v2

    .line 49
    goto :goto_1

    :cond_2
    move v0, v3

    .line 53
    goto :goto_1
.end method

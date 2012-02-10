.class public Lcom/android/settings/HDMIFormatSettings;
.super Landroid/preference/PreferenceActivity;
.source "HDMIFormatSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DEFAULT_FORMAT:I = 0x0

.field private static DEFAULT_INCOMING_CALL:Z = false

.field private static final HDMI_FORMAT_PREF:Ljava/lang/String; = "hdmi_format"

.field private static final HDMI_INCOMING_CALL_PREF:Ljava/lang/String; = "hdmi_incoming_call"

.field private static final SETTINGS_URI:Landroid/net/Uri;

.field private static final mUri:Landroid/net/Uri;


# instance fields
.field private formatType:I

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mFormatPref:Landroid/preference/ListPreference;

.field private mHDMIIncomingCall:Landroid/preference/CheckBoxPreference;

.field private mIncomingCallChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "content://com.motorola.android.providers.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/HDMIFormatSettings;->SETTINGS_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "content://com.motorola.provider.hdmi_status/hdmi_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/HDMIFormatSettings;->mUri:Landroid/net/Uri;

    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/HDMIFormatSettings;->DEFAULT_FORMAT:I

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/HDMIFormatSettings;->DEFAULT_INCOMING_CALL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 61
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/HDMIFormatSettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/HDMIFormatSettings;->mIncomingCallChecked:Z

    return-void
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/HDMIFormatSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/HDMIFormatSettings;->SETTINGS_URI:Landroid/net/Uri;

    const-string v3, "name=\'hdmi_format\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private saveHDMISetting(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 104
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "hdmi_incoming_call"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/HDMIFormatSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/HDMIFormatSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 108
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/android/settings/HDMIFormatSettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/HDMIFormatSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 75
    .local v7, prefSet:Landroid/preference/PreferenceScreen;
    const-string v0, "hdmi_format"

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/HDMIFormatSettings;->mFormatPref:Landroid/preference/ListPreference;

    .line 76
    iget-object v0, p0, Lcom/android/settings/HDMIFormatSettings;->mFormatPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    const-string v0, "hdmi_incoming_call"

    invoke-virtual {p0, v0}, Lcom/android/settings/HDMIFormatSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/HDMIFormatSettings;->mHDMIIncomingCall:Landroid/preference/CheckBoxPreference;

    .line 79
    iget-object v0, p0, Lcom/android/settings/HDMIFormatSettings;->mHDMIIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/HDMIFormatSettings;->readHDMISetting(Landroid/preference/CheckBoxPreference;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/HDMIFormatSettings;->mHDMIIncomingCall:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/HDMIFormatSettings;->mIncomingCallChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/HDMIFormatSettings;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 83
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/HDMIFormatSettings;->mFormatPref:Landroid/preference/ListPreference;

    sget v1, Lcom/android/settings/HDMIFormatSettings;->DEFAULT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/HDMIFormatSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/HDMIFormatSettings;->mUri:Landroid/net/Uri;

    const-string v3, "name=\'hdmi_incoming_call\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/settings/HDMIFormatSettings;->mHDMIIncomingCall:Landroid/preference/CheckBoxPreference;

    sget-boolean v1, Lcom/android/settings/HDMIFormatSettings;->DEFAULT_INCOMING_CALL:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 90
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 129
    invoke-virtual {p0, p2}, Lcom/android/settings/HDMIFormatSettings;->writeFormatPreference(Ljava/lang/Object;)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/HDMIFormatSettings;->mHDMIIncomingCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/HDMIFormatSettings;->mHDMIIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "check"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/HDMIFormatSettings;->saveHDMISetting(Ljava/lang/String;)V

    .line 99
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_1
    const-string v0, "ignore"

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 168
    iget-object v0, p0, Lcom/android/settings/HDMIFormatSettings;->mFormatPref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/HDMIFormatSettings;->readFormatPreference(Landroid/preference/ListPreference;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/HDMIFormatSettings;->mHDMIIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/HDMIFormatSettings;->readHDMISetting(Landroid/preference/CheckBoxPreference;)V

    .line 170
    return-void
.end method

.method public readFormatPreference(Landroid/preference/ListPreference;)V
    .locals 4
    .parameter "pref"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/settings/HDMIFormatSettings;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 145
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const-string v3, "value"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    :try_start_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/settings/HDMIFormatSettings;->formatType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 157
    return-void

    .line 151
    .restart local v2       #value:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 152
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public readHDMISetting(Landroid/preference/CheckBoxPreference;)V
    .locals 9
    .parameter "pref"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/HDMIFormatSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/HDMIFormatSettings;->mUri:Landroid/net/Uri;

    const-string v3, "name=\'hdmi_incoming_call\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    .local v6, c:Landroid/database/Cursor;
    const-string v7, ""

    .line 115
    .local v7, value:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v8, :cond_0

    .line 117
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const-string v0, "check"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v8, :cond_3

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/HDMIFormatSettings;->mIncomingCallChecked:Z

    .line 123
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_2
    return-void

    .line 121
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeFormatPreference(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/HDMIFormatSettings;->formatType:I

    .line 135
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "hdmi_format"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "value"

    iget v2, p0, Lcom/android/settings/HDMIFormatSettings;->formatType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/HDMIFormatSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/HDMIFormatSettings;->SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 139
    return-void
.end method

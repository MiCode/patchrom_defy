.class public Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;
.super Landroid/preference/PreferenceActivity;
.source "ConnectSpecificProfilesActivity.java"

# interfaces
.implements Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity$1;
    }
.end annotation


# static fields
.field public static final EXTRA_DEVICE:Ljava/lang/String; = "device"

.field private static final KEY_ONLINE_MODE:Ljava/lang/String; = "online_mode"

.field private static final KEY_PROFILE_CONTAINER:Ljava/lang/String; = "profile_container"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "ConnectSpecificProfilesActivity"


# instance fields
.field private mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mOnlineMode:Z

.field private mOnlineModePreference:Landroid/preference/CheckBoxPreference;

.field private mProfileContainer:Landroid/preference/PreferenceGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 315
    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 4

    .prologue
    .line 130
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 131
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 132
    .local v1, pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 134
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_0
    return-void
.end method

.method private createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v3, 0x0

    .line 145
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 147
    iget v2, p1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->localizedString:I

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 148
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 149
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    iget-object v2, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v2, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    .line 157
    .local v1, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v2, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 159
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 161
    return-object v0

    :cond_0
    move v2, v3

    .line 157
    goto :goto_0
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .locals 4
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    .line 273
    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_0

    move-object v2, v3

    .line 280
    :goto_0
    return-object v2

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 278
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 279
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-object v2, v3

    .line 280
    goto :goto_0
.end method

.method private static getProfileSummary(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;Landroid/bluetooth/BluetoothDevice;IZ)I
    .locals 1
    .parameter "profileManager"
    .parameter "profile"
    .parameter "device"
    .parameter "connectionStatus"
    .parameter "onlineMode"

    .prologue
    .line 286
    if-eqz p4, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    .line 287
    :cond_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->getProfileSummaryForSettingPreference(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)I

    move-result v0

    .line 289
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getSummary(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method private static final getProfileSummaryForSettingPreference(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)I
    .locals 2
    .parameter "profile"

    .prologue
    .line 300
    sget-object v0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity$1;->$SwitchMap$com$android$settings$bluetooth$LocalBluetoothProfileManager$Profile:[I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 315
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 302
    :pswitch_0
    const v0, 0x7f0803c7

    goto :goto_0

    .line 304
    :pswitch_1
    const v0, 0x7f0803c8

    goto :goto_0

    .line 307
    :pswitch_2
    const v0, 0x7f080095

    goto :goto_0

    .line 310
    :pswitch_3
    const v0, 0x7f080094

    goto :goto_0

    .line 313
    :pswitch_4
    const v0, 0x7f080096

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onOnlineModeCheckedStateChanged(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->setOnlineMode(ZZ)V

    .line 182
    return-void
.end method

.method private onProfileCheckedStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;Z)V
    .locals 2
    .parameter "profile"
    .parameter "checked"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 187
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 188
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineMode:Z

    if-eqz v1, :cond_0

    .line 189
    if-eqz p2, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    goto :goto_0
.end method

.method private refresh()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->setOnlineMode(ZZ)V

    .line 204
    invoke-direct {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->refreshProfiles()V

    .line 205
    return-void

    :cond_1
    move v0, v1

    .line 203
    goto :goto_0
.end method

.method private refreshOnlineModePreference()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineModePreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineMode:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineModePreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineModePreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getSummary()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 240
    return-void

    .line 232
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 238
    :cond_1
    const v1, 0x7f0803c1

    goto :goto_1
.end method

.method private refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .locals 4
    .parameter "profilePref"
    .parameter "profile"

    .prologue
    .line 256
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 257
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    .line 260
    .local v2, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 265
    .local v0, connectionStatus:I
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 266
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineMode:Z

    invoke-static {v2, p2, v1, v0, v3}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->getProfileSummary(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;Landroid/bluetooth/BluetoothDevice;IZ)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 269
    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 270
    return-void

    .line 265
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private refreshProfiles()V
    .locals 4

    .prologue
    .line 243
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 244
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 246
    .local v2, profilePref:Landroid/preference/CheckBoxPreference;
    if-nez v2, :cond_0

    .line 247
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    .line 248
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 250
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    goto :goto_0

    .line 253
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v2           #profilePref:Landroid/preference/CheckBoxPreference;
    :cond_1
    return-void
.end method

.method private setOnlineMode(ZZ)V
    .locals 1
    .parameter "onlineMode"
    .parameter "takeAction"

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineMode:Z

    .line 217
    if-eqz p2, :cond_0

    .line 218
    if-eqz p1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    .line 225
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->refreshOnlineModePreference()V

    .line 226
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const-string v4, "device"

    const-string v3, "ConnectSpecificProfilesActivity"

    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    if-eqz p1, :cond_2

    .line 71
    const-string v2, "device"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 77
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    :goto_0
    if-nez v0, :cond_0

    .line 78
    const-string v2, "ConnectSpecificProfilesActivity"

    const-string v2, "Activity started without a remote blueototh device"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->finish()V

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 83
    iget-object v2, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 84
    iget-object v2, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v2, :cond_1

    .line 85
    const-string v2, "ConnectSpecificProfilesActivity"

    const-string v2, "Device not found, cannot connect to it"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->finish()V

    .line 89
    :cond_1
    const v2, 0x7f040006

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->addPreferencesFromResource(I)V

    .line 90
    const-string v2, "profile_container"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 93
    const-string v2, "title"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0803bf

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    const-string v2, "online_mode"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineModePreference:Landroid/preference/CheckBoxPreference;

    .line 98
    iget-object v2, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->addPreferencesForProfiles()V

    .line 102
    return-void

    .line 73
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 74
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "device"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    goto :goto_0
.end method

.method public onDeviceAttributesChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "cachedDevice"

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->refresh()V

    .line 199
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 127
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 165
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, key:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v3

    .line 177
    .end local p2
    :goto_0
    return v2

    .line 168
    .restart local p2
    :cond_1
    const-string v2, "online_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->onOnlineModeCheckedStateChanged(Z)V

    :goto_1
    move v2, v3

    .line 177
    goto :goto_0

    .line 172
    .restart local p2
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->getProfileOf(Landroid/preference/Preference;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-result-object v1

    .line 173
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    if-nez v1, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    .line 174
    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->onProfileCheckedStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;Z)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->refresh()V

    .line 119
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "device"

    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    return-void
.end method

.class Lcom/android/settings/vpn/L2tpIpsecEditor;
.super Lcom/android/settings/vpn/L2tpEditor;
.source "L2tpIpsecEditor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCaCertificate:Landroid/preference/ListPreference;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mProfile:Landroid/net/vpn/L2tpIpsecProfile;

.field private mUserCertificate:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/settings/vpn/L2tpIpsecEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/L2tpIpsecEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/vpn/L2tpIpsecProfile;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/L2tpEditor;-><init>(Landroid/net/vpn/L2tpProfile;)V

    .line 37
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mKeyStore:Landroid/security/KeyStore;

    .line 46
    iput-object p1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn/L2tpIpsecEditor;)Landroid/net/vpn/L2tpIpsecProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    return-object v0
.end method

.method private createCaCertificatePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 6
    .parameter "c"

    .prologue
    .line 89
    const v2, 0x7f0806aa

    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    invoke-virtual {v0}, Landroid/net/vpn/L2tpIpsecProfile;->getCaCertificate()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, "CACERT_"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn/L2tpIpsecEditor$2;

    invoke-direct {v5, p0}, Lcom/android/settings/vpn/L2tpIpsecEditor$2;-><init>(Lcom/android/settings/vpn/L2tpIpsecEditor;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn/L2tpIpsecEditor;->createListPreference(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mCaCertificate:Landroid/preference/ListPreference;

    .line 102
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mCaCertificate:Landroid/preference/ListPreference;

    const v1, 0x7f0806ab

    iget-object v2, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    invoke-virtual {v2}, Landroid/net/vpn/L2tpIpsecProfile;->getCaCertificate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/vpn/L2tpIpsecEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mCaCertificate:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private createListPreference(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/ListPreference;
    .locals 2
    .parameter "c"
    .parameter "titleResId"
    .parameter "text"
    .parameter "keys"
    .parameter "listener"

    .prologue
    .line 110
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 112
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 114
    invoke-virtual {v0, p4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v0, p4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    return-object v0
.end method

.method private createUserCertificatePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 6
    .parameter "c"

    .prologue
    .line 70
    const v2, 0x7f0806a7

    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    invoke-virtual {v0}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, "USRCERT_"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn/L2tpIpsecEditor$1;

    invoke-direct {v5, p0}, Lcom/android/settings/vpn/L2tpIpsecEditor$1;-><init>(Lcom/android/settings/vpn/L2tpIpsecEditor;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn/L2tpIpsecEditor;->createListPreference(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mUserCertificate:Landroid/preference/ListPreference;

    .line 83
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mUserCertificate:Landroid/preference/ListPreference;

    const v1, 0x7f0806a8

    iget-object v2, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    invoke-virtual {v2}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/vpn/L2tpIpsecEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mUserCertificate:Landroid/preference/ListPreference;

    return-object v0
.end method


# virtual methods
.method protected loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter "subpanel"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/vpn/L2tpEditor;->loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V

    .line 52
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, c:Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/L2tpIpsecEditor;->createUserCertificatePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 54
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/L2tpIpsecEditor;->createCaCertificatePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 55
    return-void
.end method

.method public validate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/vpn/L2tpEditor;->validate()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mUserCertificate:Landroid/preference/ListPreference;

    const v2, 0x7f0806a9

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/vpn/L2tpIpsecEditor;->validate(Landroid/preference/Preference;I)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    if-nez v0, :cond_1

    .line 64
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mCaCertificate:Landroid/preference/ListPreference;

    const v2, 0x7f0806ac

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/vpn/L2tpIpsecEditor;->validate(Landroid/preference/Preference;I)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_1
    return-object v0
.end method

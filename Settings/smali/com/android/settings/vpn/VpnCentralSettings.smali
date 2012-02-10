.class public Lcom/android/settings/vpn/VpnCentralSettings;
.super Landroid/preference/PreferenceActivity;
.source "VpnCentralSettings.java"


# static fields
.field private static final PREF_GOOGLE_VPN:Ljava/lang/String; = "pptp/l2tp connections"

.field private static final PREF_SAFENET_VPN:Ljava/lang/String; = "IPSec connections"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGoogleVpn:Landroid/preference/PreferenceScreen;

.field private mSafenetVpn:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/settings/vpn/VpnCentralSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/VpnCentralSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f040034

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnCentralSettings;->addPreferencesFromResource(I)V

    .line 49
    const-string v0, "pptp/l2tp connections"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnCentralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/vpn/VpnCentralSettings;->mGoogleVpn:Landroid/preference/PreferenceScreen;

    .line 52
    const-string v0, "IPSec connections"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnCentralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/vpn/VpnCentralSettings;->mSafenetVpn:Landroid/preference/PreferenceScreen;

    .line 53
    iget-object v0, p0, Lcom/android/settings/vpn/VpnCentralSettings;->mSafenetVpn:Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/android/settings/vpn/VpnCentralSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnCentralSettings$1;-><init>(Lcom/android/settings/vpn/VpnCentralSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 70
    return-void
.end method

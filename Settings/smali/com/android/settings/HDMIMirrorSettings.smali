.class public Lcom/android/settings/HDMIMirrorSettings;
.super Landroid/preference/PreferenceActivity;
.source "HDMIMirrorSettings.java"


# static fields
.field private static final HDMI_OVERSCAN_PREF:Ljava/lang/String; = "hdmi_overscan_seekbar"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mMirrorModeAvailable:Z

.field private mOverscanPref:Lcom/android/settings/HDMIOverscanPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    const-string v0, "HDMIMirrorSettings"

    iput-object v0, p0, Lcom/android/settings/HDMIMirrorSettings;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/HDMIMirrorSettings;->mMirrorModeAvailable:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/HDMIMirrorSettings;->TAG:Ljava/lang/String;

    const-string v1, "Entering Mirror hdmi preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Lcom/android/settings/HDMIMirrorSettings;->addPreferencesFromResource(I)V

    .line 49
    return-void
.end method

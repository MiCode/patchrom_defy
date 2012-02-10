.class Lcom/android/settings/vpn/VpnCentralSettings$1;
.super Ljava/lang/Object;
.source "VpnCentralSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnCentralSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnCentralSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnCentralSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/vpn/VpnCentralSettings$1;->this$0:Lcom/android/settings/vpn/VpnCentralSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN "

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, ipIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.safenet.vpnclient"

    const-string v3, "com.safenet.vpnclient.LauncherActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/android/settings/vpn/VpnCentralSettings$1;->this$0:Lcom/android/settings/vpn/VpnCentralSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/vpn/VpnCentralSettings;->startActivity(Landroid/content/Intent;)V

    .line 59
    const/4 v1, 0x1

    return v1
.end method

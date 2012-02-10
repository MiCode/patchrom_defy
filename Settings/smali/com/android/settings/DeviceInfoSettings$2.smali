.class Lcom/android/settings/DeviceInfoSettings$2;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceInfoSettings;->autoSystemUpdateInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$2;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 435
    const-string v0, "com.motorola.android.fota.autoupdate.SETTINGS_CHANGE"

    .line 436
    .local v0, ACTION_AUTO_UPDATE_SETTINGS_CHANGE:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$2;->this$0:Lcom/android/settings/DeviceInfoSettings;

    #getter for: Lcom/android/settings/DeviceInfoSettings;->mAutoSystemCheck:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->access$100(Lcom/android/settings/DeviceInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 438
    .local v2, isAutoCheckEnabled:Z
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$2;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_system_check"

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.motorola.android.fota.autoupdate.SETTINGS_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$2;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3, v1}, Lcom/android/settings/DeviceInfoSettings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 442
    return v6

    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    move v5, v6

    .line 438
    goto :goto_0
.end method

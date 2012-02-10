.class Lcom/android/settings/AvailableLicensesActivity$2;
.super Ljava/lang/Object;
.source "AvailableLicensesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AvailableLicensesActivity;->initAvailableLicenses(Ljava/util/Locale;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AvailableLicensesActivity;

.field final synthetic val$ossFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/AvailableLicensesActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/AvailableLicensesActivity$2;->this$0:Lcom/android/settings/AvailableLicensesActivity;

    iput-object p2, p0, Lcom/android/settings/AvailableLicensesActivity$2;->val$ossFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/AvailableLicensesActivity$2;->this$0:Lcom/android/settings/AvailableLicensesActivity;

    #getter for: Lcom/android/settings/AvailableLicensesActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/AvailableLicensesActivity;->access$000(Lcom/android/settings/AvailableLicensesActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/SettingsLicenseActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 125
    const-string v1, "oss"

    iget-object v2, p0, Lcom/android/settings/AvailableLicensesActivity$2;->val$ossFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/android/settings/AvailableLicensesActivity$2;->this$0:Lcom/android/settings/AvailableLicensesActivity;

    invoke-virtual {v1, v0}, Lcom/android/settings/AvailableLicensesActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    const/4 v1, 0x1

    return v1
.end method

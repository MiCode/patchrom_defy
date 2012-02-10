.class public Lcom/android/settings/SplashScreenActivity;
.super Landroid/app/Activity;
.source "SplashScreenActivity.java"


# static fields
.field public static final SPLASH_SCREEN_OPTION:Ljava/lang/String; = "SplashScreenPref"

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mChkBox:Landroid/widget/CheckBox;

.field private mChkBoxTicked:Z

.field private mCurrentLocalSettings:Ljava/lang/String;

.field private mEditSharedPref:Landroid/content/SharedPreferences$Editor;

.field private mFlashScrPref:Landroid/content/SharedPreferences;

.field private mLocationSettingUpdated:Z

.field private mLocationSettings:Ljava/lang/String;

.field private mOkBtn:Landroid/widget/Button;

.field private mSharedPrefMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "SplashScreenActivity"

    sput-object v0, Lcom/android/settings/SplashScreenActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, ""

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/android/settings/SplashScreenActivity;->mChkBoxTicked:Z

    .line 28
    const-string v0, ""

    iput-object v3, p0, Lcom/android/settings/SplashScreenActivity;->mLocationSettings:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v3, p0, Lcom/android/settings/SplashScreenActivity;->mCurrentLocalSettings:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/android/settings/SplashScreenActivity;->mLocationSettingUpdated:Z

    .line 36
    iput-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mFlashScrPref:Landroid/content/SharedPreferences;

    .line 37
    iput-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mEditSharedPref:Landroid/content/SharedPreferences$Editor;

    .line 38
    iput v1, p0, Lcom/android/settings/SplashScreenActivity;->mSharedPrefMode:I

    return-void
.end method


# virtual methods
.method protected LoadPreferences()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/SplashScreenActivity;->mFlashScrPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/SplashScreenActivity;->mFlashScrPref:Landroid/content/SharedPreferences;

    const-string v1, "mChkBox"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SplashScreenActivity;->mChkBoxTicked:Z

    .line 167
    iget-object v0, p0, Lcom/android/settings/SplashScreenActivity;->mFlashScrPref:Landroid/content/SharedPreferences;

    const-string v1, "lcnSettings"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SplashScreenActivity;->mLocationSettings:Ljava/lang/String;

    .line 169
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "SplashScreenPref"

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v2, "SplashScreenPref"

    iget v2, p0, Lcom/android/settings/SplashScreenActivity;->mSharedPrefMode:I

    invoke-virtual {p0, v6, v2}, Lcom/android/settings/SplashScreenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mFlashScrPref:Landroid/content/SharedPreferences;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/SplashScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 51
    .local v1, splashScreenEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/SplashScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v4

    .line 57
    .local v0, isProvisioned:Z
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 59
    :cond_0
    sget-object v2, Lcom/android/settings/SplashScreenActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing this activity, splashScreenEnabled= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isProvisioned = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/SplashScreenActivity;->removeAppFromRecentListAndStackHistory()V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/SplashScreenActivity;->finish()V

    .line 145
    :goto_1
    return-void

    .end local v0           #isProvisioned:Z
    :cond_1
    move v0, v5

    .line 51
    goto :goto_0

    .line 65
    .restart local v0       #isProvisioned:Z
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/SplashScreenActivity;->requestWindowFeature(I)Z

    .line 69
    iget-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mFlashScrPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mEditSharedPref:Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/SplashScreenActivity;->LoadPreferences()V

    .line 85
    if-eqz p1, :cond_3

    const-string v2, "SplashScreenPref"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    const-string v2, "mChkBox"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SplashScreenActivity;->mChkBoxTicked:Z

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SplashScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mCurrentLocalSettings:Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mCurrentLocalSettings:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SplashScreenActivity;->mLocationSettings:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 94
    iput-boolean v4, p0, Lcom/android/settings/SplashScreenActivity;->mLocationSettingUpdated:Z

    .line 107
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/SplashScreenActivity;->mLocationSettingUpdated:Z

    if-ne v4, v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mCurrentLocalSettings:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/SplashScreenActivity;->mLocationSettingUpdated:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/settings/SplashScreenActivity;->mChkBoxTicked:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mCurrentLocalSettings:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 112
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/settings/SplashScreenActivity;->requestWindowFeature(I)Z

    .line 115
    const v2, 0x7f03004b

    invoke-virtual {p0, v2}, Lcom/android/settings/SplashScreenActivity;->setContentView(I)V

    .line 118
    const v2, 0x7f0c00e0

    invoke-virtual {p0, v2}, Lcom/android/settings/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mOkBtn:Landroid/widget/Button;

    .line 119
    const v2, 0x7f0c003e

    invoke-virtual {p0, v2}, Lcom/android/settings/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mChkBox:Landroid/widget/CheckBox;

    .line 122
    iget-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    iget-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mOkBtn:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/SplashScreenActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/SplashScreenActivity$1;-><init>(Lcom/android/settings/SplashScreenActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 139
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SplashScreenActivity;->savePreferences()V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/SplashScreenActivity;->removeAppFromRecentListAndStackHistory()V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/SplashScreenActivity;->finish()V

    goto/16 :goto_1
.end method

.method public removeAppFromRecentListAndStackHistory()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SplashScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x5080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method protected savePreferences()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/SplashScreenActivity;->mEditSharedPref:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/settings/SplashScreenActivity;->mChkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/SplashScreenActivity;->mEditSharedPref:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mChkBox"

    iget-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SplashScreenActivity;->mEditSharedPref:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lcnSettings"

    iget-object v2, p0, Lcom/android/settings/SplashScreenActivity;->mCurrentLocalSettings:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    iget-object v0, p0, Lcom/android/settings/SplashScreenActivity;->mEditSharedPref:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    :cond_1
    return-void
.end method

.class Lcom/android/settings/LanguageSettings$5;
.super Ljava/lang/Object;
.source "LanguageSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LanguageSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LanguageSettings;

.field final synthetic val$varCurrentActivityManagerDefault:Landroid/app/IActivityManager;

.field final synthetic val$varCurrentConfig:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/android/settings/LanguageSettings;Landroid/app/IActivityManager;Landroid/content/res/Configuration;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/settings/LanguageSettings$5;->this$0:Lcom/android/settings/LanguageSettings;

    iput-object p2, p0, Lcom/android/settings/LanguageSettings$5;->val$varCurrentActivityManagerDefault:Landroid/app/IActivityManager;

    iput-object p3, p0, Lcom/android/settings/LanguageSettings$5;->val$varCurrentConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 934
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/LanguageSettings$5;->val$varCurrentActivityManagerDefault:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/settings/LanguageSettings$5;->val$varCurrentConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :goto_0
    return-void

    .line 935
    :catch_0
    move-exception v0

    goto :goto_0
.end method

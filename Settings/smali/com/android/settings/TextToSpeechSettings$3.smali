.class Lcom/android/settings/TextToSpeechSettings$3;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TextToSpeechSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TextToSpeechSettings;

.field final synthetic val$chkPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/TextToSpeechSettings;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/settings/TextToSpeechSettings$3;->this$0:Lcom/android/settings/TextToSpeechSettings;

    iput-object p2, p0, Lcom/android/settings/TextToSpeechSettings$3;->val$chkPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings$3;->val$chkPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 592
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings$3;->this$0:Lcom/android/settings/TextToSpeechSettings;

    #calls: Lcom/android/settings/TextToSpeechSettings;->loadEngines()V
    invoke-static {v0}, Lcom/android/settings/TextToSpeechSettings;->access$000(Lcom/android/settings/TextToSpeechSettings;)V

    .line 593
    return-void
.end method

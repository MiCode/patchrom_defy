.class Lcom/android/settings/LanguageSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "LanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LanguageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LanguageSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/settings/LanguageSettings$2;->this$0:Lcom/android/settings/LanguageSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 401
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/settings/LanguageSettings$2;->this$0:Lcom/android/settings/LanguageSettings;

    #calls: Lcom/android/settings/LanguageSettings;->updatePrefInputMethod()V
    invoke-static {v1}, Lcom/android/settings/LanguageSettings;->access$000(Lcom/android/settings/LanguageSettings;)V

    .line 405
    :cond_0
    return-void
.end method

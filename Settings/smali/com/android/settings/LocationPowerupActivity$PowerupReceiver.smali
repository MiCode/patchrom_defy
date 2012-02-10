.class public Lcom/android/settings/LocationPowerupActivity$PowerupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationPowerupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocationPowerupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerupReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    #calls: Lcom/android/settings/LocationPowerupActivity;->getDialogTypeToShow(Landroid/content/Context;)I
    invoke-static {p1}, Lcom/android/settings/LocationPowerupActivity;->access$000(Landroid/content/Context;)I

    move-result v0

    .line 55
    .local v0, dialogType:I
    if-lez v0, :cond_0

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/LocationPowerupActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    const-string v2, "com.android.settings.DIALOG_TYPE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

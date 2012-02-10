.class Lcom/android/settings/wifi/WifiApSettings$2;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApSettings;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "restart_hotspot"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, restartHotspot:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiApSettings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 241
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 242
    return-void
.end method

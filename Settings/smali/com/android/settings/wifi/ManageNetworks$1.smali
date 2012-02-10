.class Lcom/android/settings/wifi/ManageNetworks$1;
.super Landroid/content/BroadcastReceiver;
.source "ManageNetworks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/ManageNetworks;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/ManageNetworks;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/ManageNetworks;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/wifi/ManageNetworks$1;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$1;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    #calls: Lcom/android/settings/wifi/ManageNetworks;->handleEvent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/settings/wifi/ManageNetworks;->access$000(Lcom/android/settings/wifi/ManageNetworks;Landroid/content/Intent;)V

    .line 149
    return-void
.end method

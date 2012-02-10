.class Lcom/android/settings/deviceinfo/CheckUpdate$3;
.super Ljava/lang/Object;
.source "CheckUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/CheckUpdate;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/CheckUpdate;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/CheckUpdate;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/deviceinfo/CheckUpdate$3;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const-string v1, "CheckUpdate"

    .line 210
    const-string v0, "CheckUpdate"

    const-string v0, "onDismiss(): CheckUpdate dialog is dismissed, close CheckUpdate activity."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate$3;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    #getter for: Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/CheckUpdate;->access$000(Lcom/android/settings/deviceinfo/CheckUpdate;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "CheckUpdate"

    const-string v0, "unregister receiver in onDismiss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate$3;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckUpdate$3;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    #getter for: Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/CheckUpdate;->access$000(Lcom/android/settings/deviceinfo/CheckUpdate;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/CheckUpdate;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate$3;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/CheckUpdate;->access$002(Lcom/android/settings/deviceinfo/CheckUpdate;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate$3;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/CheckUpdate;->finish()V

    .line 218
    return-void
.end method

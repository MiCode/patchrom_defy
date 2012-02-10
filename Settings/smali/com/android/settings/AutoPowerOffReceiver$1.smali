.class Lcom/android/settings/AutoPowerOffReceiver$1;
.super Ljava/lang/Thread;
.source "AutoPowerOffReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AutoPowerOffReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoPowerOffReceiver;

.field final synthetic val$fcontext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoPowerOffReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/AutoPowerOffReceiver$1;->this$0:Lcom/android/settings/AutoPowerOffReceiver;

    iput-object p2, p0, Lcom/android/settings/AutoPowerOffReceiver$1;->val$fcontext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Lcom/android/settings/AutoPowerOffReceiver$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AutoPowerOffReceiver$1;->this$0:Lcom/android/settings/AutoPowerOffReceiver;

    iget-object v1, p0, Lcom/android/settings/AutoPowerOffReceiver$1;->val$fcontext:Landroid/content/Context;

    #calls: Lcom/android/settings/AutoPowerOffReceiver;->restoreAutoPowerONSetting(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings/AutoPowerOffReceiver;->access$000(Lcom/android/settings/AutoPowerOffReceiver;Landroid/content/Context;)V

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

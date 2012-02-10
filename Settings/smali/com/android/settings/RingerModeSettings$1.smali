.class Lcom/android/settings/RingerModeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "RingerModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RingerModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RingerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/RingerModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/RingerModeSettings$1;->this$0:Lcom/android/settings/RingerModeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RingerModeSettings$1;->this$0:Lcom/android/settings/RingerModeSettings;

    #getter for: Lcom/android/settings/RingerModeSettings;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/settings/RingerModeSettings;->access$000(Lcom/android/settings/RingerModeSettings;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/RingerModeSettings$1;->this$0:Lcom/android/settings/RingerModeSettings;

    #getter for: Lcom/android/settings/RingerModeSettings;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/settings/RingerModeSettings;->access$000(Lcom/android/settings/RingerModeSettings;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RingerModeSettings$1;->this$0:Lcom/android/settings/RingerModeSettings;

    #getter for: Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/RingerModeSettings;->access$100(Lcom/android/settings/RingerModeSettings;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 63
    :cond_0
    return-void

    .line 60
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

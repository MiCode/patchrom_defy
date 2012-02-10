.class Lcom/android/settings/RingerModeSettings$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings/RingerModeSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/RingerModeSettings$2;->this$0:Lcom/android/settings/RingerModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, isVolumeSeekEnabled:Z
    iget-object v1, p0, Lcom/android/settings/RingerModeSettings$2;->this$0:Lcom/android/settings/RingerModeSettings;

    #getter for: Lcom/android/settings/RingerModeSettings;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings/RingerModeSettings;->access$000(Lcom/android/settings/RingerModeSettings;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/RingerModeSettings$2;->this$0:Lcom/android/settings/RingerModeSettings;

    #getter for: Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/RingerModeSettings;->access$100(Lcom/android/settings/RingerModeSettings;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/settings/RingerModeSettings$2;->this$0:Lcom/android/settings/RingerModeSettings;

    #getter for: Lcom/android/settings/RingerModeSettings;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings/RingerModeSettings;->access$000(Lcom/android/settings/RingerModeSettings;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RingerModeSettings$2;->this$0:Lcom/android/settings/RingerModeSettings;

    #getter for: Lcom/android/settings/RingerModeSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/RingerModeSettings;->access$200(Lcom/android/settings/RingerModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/RingerModeSettings$2;->this$0:Lcom/android/settings/RingerModeSettings;

    #getter for: Lcom/android/settings/RingerModeSettings;->mStreamType:I
    invoke-static {v4}, Lcom/android/settings/RingerModeSettings;->access$300(Lcom/android/settings/RingerModeSettings;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 77
    :cond_0
    return-void
.end method

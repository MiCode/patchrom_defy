.class public Lcom/android/settings/RingerModeSettings;
.super Landroid/app/Activity;
.source "RingerModeSettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCreate:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalStreamVolume:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerOffVib:Landroid/widget/CheckBox;

.field private mRingerOnVib:Landroid/widget/CheckBox;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolumeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RingerModeSettings;->mHandler:Landroid/os/Handler;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RingerModeSettings;->mCreate:Z

    .line 55
    new-instance v0, Lcom/android/settings/RingerModeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RingerModeSettings$1;-><init>(Lcom/android/settings/RingerModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/RingerModeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    new-instance v0, Lcom/android/settings/RingerModeSettings$2;

    iget-object v1, p0, Lcom/android/settings/RingerModeSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/RingerModeSettings$2;-><init>(Lcom/android/settings/RingerModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/RingerModeSettings;->mVolumeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RingerModeSettings;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/RingerModeSettings;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/RingerModeSettings;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RingerModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/RingerModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/RingerModeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/RingerModeSettings;->mStreamType:I

    return v0
.end method

.method private postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 187
    iput p1, p0, Lcom/android/settings/RingerModeSettings;->mLastProgress:I

    .line 188
    iget-object v0, p0, Lcom/android/settings/RingerModeSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/RingerModeSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x0

    .line 152
    iget-object v3, p0, Lcom/android/settings/RingerModeSettings;->mRingerOnVib:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 153
    .local v2, ringerOnVibrate:Z
    iget-object v3, p0, Lcom/android/settings/RingerModeSettings;->mRingerOffVib:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 154
    .local v1, ringerOffVibrate:Z
    const/4 v0, 0x0

    .line 156
    .local v0, mode:I
    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/RingerModeSettings;->mCreate:Z

    if-nez v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/android/settings/RingerModeSettings;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 160
    :cond_0
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 161
    const/4 v0, 0x1

    .line 169
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 170
    iget-object v3, p0, Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 171
    iget-object v3, p0, Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 175
    :cond_2
    return-void

    .line 162
    :cond_3
    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 163
    const/4 v0, 0x2

    goto :goto_0

    .line 164
    :cond_4
    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 165
    const/4 v0, 0x3

    goto :goto_0

    .line 166
    :cond_5
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 167
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    move v4, v6

    .line 171
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v2, 0x7f030043

    invoke-virtual {p0, v2}, Lcom/android/settings/RingerModeSettings;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/RingerModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/RingerModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 101
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/RingerModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 102
    iput v7, p0, Lcom/android/settings/RingerModeSettings;->mStreamType:I

    .line 104
    const v2, 0x7f0c00d3

    invoke-virtual {p0, v2}, Lcom/android/settings/RingerModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/RingerModeSettings;->mSeekBar:Landroid/widget/SeekBar;

    .line 105
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/android/settings/RingerModeSettings;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/RingerModeSettings;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/RingerModeSettings;->mOriginalStreamVolume:I

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/RingerModeSettings;->mOriginalStreamVolume:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 118
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 120
    const v2, 0x7f0c00d4

    invoke-virtual {p0, v2}, Lcom/android/settings/RingerModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/RingerModeSettings;->mRingerOnVib:Landroid/widget/CheckBox;

    .line 121
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mRingerOnVib:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    const v2, 0x7f0c00d5

    invoke-virtual {p0, v2}, Lcom/android/settings/RingerModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/RingerModeSettings;->mRingerOffVib:Landroid/widget/CheckBox;

    .line 123
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mRingerOffVib:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/RingerModeSettings;->mStreamType:I

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/RingerModeSettings;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 130
    .local v1, phoneVibrate:I
    iput-boolean v6, p0, Lcom/android/settings/RingerModeSettings;->mCreate:Z

    .line 131
    if-ne v1, v6, :cond_2

    .line 132
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mRingerOnVib:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mRingerOffVib:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    :cond_0
    :goto_1
    iput-boolean v5, p0, Lcom/android/settings/RingerModeSettings;->mCreate:Z

    .line 148
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Lcom/android/settings/RingerModeSettings;->mVibrator:Landroid/os/Vibrator;

    .line 149
    return-void

    .line 110
    .end local v1           #phoneVibrate:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/RingerModeSettings;->mStreamType:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, mLastAudibleVolumeIndexSettingName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    iget v4, p0, Lcom/android/settings/RingerModeSettings;->mStreamType:I

    aget v3, v3, v4

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/RingerModeSettings;->mOriginalStreamVolume:I

    .line 115
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_0

    .line 135
    .end local v0           #mLastAudibleVolumeIndexSettingName:Ljava/lang/String;
    .restart local v1       #phoneVibrate:I
    :cond_2
    if-nez v1, :cond_3

    .line 136
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mRingerOnVib:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mRingerOffVib:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 139
    :cond_3
    if-ne v1, v7, :cond_4

    .line 140
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mRingerOnVib:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mRingerOffVib:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 143
    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mRingerOnVib:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    iget-object v2, p0, Lcom/android/settings/RingerModeSettings;->mRingerOffVib:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/RingerModeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerModeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 179
    if-nez p3, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/RingerModeSettings;->postSetVolume(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/RingerModeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/RingerModeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 193
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 195
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/RingerModeSettings;->mStreamType:I

    iget v2, p0, Lcom/android/settings/RingerModeSettings;->mLastProgress:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/RingerModeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 205
    return-void
.end method

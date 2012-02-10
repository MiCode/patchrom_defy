.class public Lcom/android/settings/deviceinfo/Memory;
.super Landroid/preference/PreferenceActivity;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final ACTION_DISABLE_CDROM:Ljava/lang/String; = "com.motorola.intent.action.USB_DISABLE_CDROM"

.field private static final ACTION_ENABLE_CDROM:Ljava/lang/String; = "com.motorola.intent.action.USB_ENABLE_CDROM"

.field private static final DLG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DLG_ERROR_UNMOUNT:I = 0x2

.field private static final DLG_SWINSTALL_HELP:I = 0x3

.field private static final EXTERNAL_MEMORY_SD_AVAIL:Ljava/lang/String; = "external_memory_sd_avail"

.field private static final EXTERNAL_MEMORY_SD_FORMAT:Ljava/lang/String; = "external_memory_sd_format"

.field private static final EXTERNAL_MEMORY_SD_SIZE:Ljava/lang/String; = "external_memory_sd_size"

.field private static final EXTERNAL_SD:I = 0x1

.field private static final EXTERNAL_SD_MOUNT_TOGGLE:Ljava/lang/String; = "external_sd_mount_toggle"

.field private static final HANDLER_MESSAGE_BASE:I = 0x0

.field private static final INTERNAL_PHONE_MEMORY_AVAIL:Ljava/lang/String; = "internal_phone_memory_avail"

.field private static final INTERNAL_PHONE_MEMORY_FORMAT:Ljava/lang/String; = "internal_phone_memory_format"

.field private static final INTERNAL_PHONE_MEMORY_SIZE:Ljava/lang/String; = "internal_phone_memory_size"

.field private static final INTERNAL_PHONE_MOUNT_TOGGLE:Ljava/lang/String; = "internal_phone_mount_toggle"

.field private static final INTERNAL_SD:I = 0x0

.field private static final INTERNAL_STORAGE:Ljava/lang/String; = "internal_storage"

.field private static final LOGD:Z = true

.field private static final MEMORY_MEDIA_SYNC:Ljava/lang/String; = "memory_media_sync"

.field private static final MEMORY_SD_GROUP:Ljava/lang/String; = "memory_sd"

.field private static final MEMORY_SOFTWARE_INSTALL:Ljava/lang/String; = "memory_software_install"

.field private static final MEMORY_SOFTWARE_INSTALL_HELP:Ljava/lang/String; = "memory_software_install_help"

.field private static final MEMORY_SOFTWARE_INSTALL_HELP_PATH:Ljava/lang/String; = "html/%x%y/swinstall_help.html"

.field private static final MEMORY_SOFTWARE_INSTALL_HELP_URL:Ljava/lang/String; = "file:///android_asset/html/%x%y/swinstall_help.html"

.field private static final MEMORY_SWINSTALL_CATEGORY:Ljava/lang/String; = "memory_swinstall"

.field private static final SOFTWARE_INSTALL_SETTING:Ljava/lang/String; = "SOFTWARE_INSTALL_SETTING"

.field private static final TAG:Ljava/lang/String; = "Memory"

.field private static final UPDATE_MEMORY_STATUS:I = 0x1

.field private static final USB_EXIT_MSC_MODE:Ljava/lang/String; = "com.motorola.intent.action.USB_EXIT_MSC_MODE"

.field private static final localLOGV:Z


# instance fields
.field private extStoragePath:Ljava/lang/String;

.field private hasSWInstallSettings:Z

.field private has_emmc_support:Z

.field private mExternalSdAvail:Landroid/preference/Preference;

.field private mExternalSdFormat:Landroid/preference/Preference;

.field private mExternalSdMountToggle:Landroid/preference/Preference;

.field private mExternalSdSize:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mInternalPhoneAvail:Landroid/preference/Preference;

.field private mInternalPhoneFormat:Landroid/preference/Preference;

.field private mInternalPhoneMountToggle:Landroid/preference/Preference;

.field private mInternalPhoneSize:Landroid/preference/Preference;

.field private mInternalStorageCat:Landroid/preference/PreferenceCategory;

.field private mMediaSyncPref:Lcom/android/settings/deviceinfo/MediaSyncPreference;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSdId:I

.field private mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

.field mSdMountToggleAdded:Z

.field private mSoftwareInstall:Landroid/preference/CheckBoxPreference;

.field private mSoftwareInstallHelp:Landroid/preference/PreferenceScreen;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->has_emmc_support:Z

    .line 93
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->hasSWInstallSettings:Z

    .line 122
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->extStoragePath:Ljava/lang/String;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 153
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 157
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaSyncPref:Lcom/android/settings/deviceinfo/MediaSyncPreference;

    .line 160
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstall:Landroid/preference/CheckBoxPreference;

    .line 161
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstallHelp:Landroid/preference/PreferenceScreen;

    .line 162
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mView:Landroid/webkit/WebView;

    .line 167
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 179
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mHandler:Landroid/os/Handler;

    .line 344
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$3;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Memory;)Lcom/android/settings/deviceinfo/MediaSyncPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaSyncPref:Lcom/android/settings/deviceinfo/MediaSyncPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/Memory;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstall:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/Memory;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->doUnmount(Z)V

    return-void
.end method

.method private clearMessagesInHandler()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    return-void
.end method

.method private doUnmount(Z)V
    .locals 5
    .parameter "force"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 554
    iget v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    if-ne v2, v4, :cond_1

    .line 555
    const v2, 0x7f0804c3

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 560
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 562
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    iget v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    if-ne v2, v4, :cond_2

    .line 564
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 565
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0804c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0804c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->extStoragePath:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_2
    return-void

    .line 557
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_1
    const v2, 0x7f080233

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 567
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    if-nez v2, :cond_0

    .line 568
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 569
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0804c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0804c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 573
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 576
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_2
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 822
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 382
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 383
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 384
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 389
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 386
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "Memory"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 381
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 586
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 587
    .local v2, mountService:Landroid/os/storage/IMountService;
    const/4 v3, 0x0

    .line 588
    .local v3, showPidDialog:Z
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Memory;->extStoragePath:Ljava/lang/String;

    invoke-interface {v2, v5}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v4

    .line 589
    .local v4, stUsers:[I
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    move v5, v6

    .line 597
    :goto_0
    return v5

    .line 592
    :cond_0
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 593
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v1

    .line 594
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v6

    .line 595
    goto :goto_0

    .line 597
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private mount()V
    .locals 4

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 620
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_3

    .line 621
    :try_start_0
    iget v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 623
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/Memory;->has_emmc_support:Z

    if-eqz v2, :cond_1

    .line 624
    invoke-static {}, Landroid/os/MotoEnvironment;->getExternalAltStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 636
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    goto :goto_0

    .line 628
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    if-nez v2, :cond_0

    .line 629
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    goto :goto_0

    .line 632
    :cond_3
    const-string v2, "Memory"

    const-string v3, "Mount service is null, can\'t mount"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 581
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialog(I)V

    .line 583
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 603
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    .line 615
    :goto_0
    return-void

    .line 608
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->doUnmount(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 612
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Memory"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private updateMemoryStatus()V
    .locals 24

    .prologue
    .line 652
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    .line 653
    .local v11, dataPath:Ljava/io/File;
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 654
    .local v12, dataStat:Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v9, v0

    .line 655
    .local v9, dataBlockSize:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v7, v0

    .line 656
    .local v7, dataAvailableBlocks:J
    const-string v20, "memory_application_avail"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    mul-long v21, v7, v9

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 660
    const-string v15, ""

    .line 661
    .local v15, readOnly:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->has_emmc_support:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 663
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v17

    .line 664
    .local v17, status:Ljava/lang/String;
    const-string v20, "Memory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " the state of internal SD card: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string v20, "mounted_ro"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 666
    const-string v17, "mounted"

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f0804be

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 670
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneFormat:Landroid/preference/Preference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneFormat:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 673
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    move/from16 v20, v0

    if-nez v20, :cond_2

    const-string v20, "mounted"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 680
    :cond_2
    const-string v20, "mounted"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 681
    const-string v20, "Memory"

    const-string v21, "the internal is mounted"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v20

    if-nez v20, :cond_3

    .line 685
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 687
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 691
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    .line 692
    .local v14, path:Ljava/io/File;
    new-instance v16, Landroid/os/StatFs;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 693
    .local v16, stat:Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v5, v0

    .line 694
    .local v5, blockSize:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockCount()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 695
    .local v18, totalBlocks:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v3, v0

    .line 699
    .local v3, availableBlocks:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneSize:Landroid/preference/Preference;

    move-object/from16 v20, v0

    mul-long v21, v18, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneAvail:Landroid/preference/Preference;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    mul-long v22, v3, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    .end local v3           #availableBlocks:J
    .end local v5           #blockSize:J
    .end local v14           #path:Ljava/io/File;
    .end local v16           #stat:Landroid/os/StatFs;
    .end local v17           #status:Ljava/lang/String;
    .end local v18           #totalBlocks:J
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->has_emmc_support:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 756
    invoke-static {}, Landroid/os/MotoEnvironment;->getExternalAltStorageState()Ljava/lang/String;

    move-result-object v17

    .line 761
    .restart local v17       #status:Ljava/lang/String;
    :goto_1
    const-string v20, "Memory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " the state of external SD card: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v15, ""

    .line 763
    const-string v20, "mounted_ro"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 764
    const-string v17, "mounted"

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f0804be

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 767
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdFormat:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 769
    const-string v20, "mounted"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 770
    const-string v20, "Memory"

    const-string v21, " to display the memory."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->has_emmc_support:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 775
    invoke-static {}, Landroid/os/MotoEnvironment;->getExternalAltStorageDirectory()Ljava/io/File;

    move-result-object v14

    .line 779
    .restart local v14       #path:Ljava/io/File;
    :goto_2
    new-instance v16, Landroid/os/StatFs;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 780
    .restart local v16       #stat:Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v5, v0

    .line 781
    .restart local v5       #blockSize:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockCount()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 782
    .restart local v18       #totalBlocks:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v3, v0

    .line 784
    .restart local v3       #availableBlocks:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdSize:Landroid/preference/Preference;

    move-object/from16 v20, v0

    mul-long v21, v18, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdAvail:Landroid/preference/Preference;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    mul-long v22, v3, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0801ed

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0801ee

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 819
    .end local v3           #availableBlocks:J
    .end local v5           #blockSize:J
    .end local v14           #path:Ljava/io/File;
    .end local v16           #stat:Landroid/os/StatFs;
    .end local v18           #totalBlocks:J
    :goto_3
    return-void

    .line 707
    :catch_0
    move-exception v20

    move-object/from16 v13, v20

    .line 710
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v17, "removed"

    .line 711
    goto/16 :goto_0

    .line 714
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :cond_6
    const-string v20, "Memory"

    const-string v21, "internal not mounted."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneSize:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0804bd

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneAvail:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0804bd

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 720
    const-string v20, "shared"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneFormat:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 725
    :cond_7
    const-string v20, "unmounted"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    const-string v20, "nofs"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    const-string v20, "unmountable"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 728
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneFormat:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 731
    const-string v20, "Memory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "status is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 738
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f08022b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f08022c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 741
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v20

    if-nez v20, :cond_4

    .line 742
    const-string v20, "unmounted"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 743
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 745
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    goto/16 :goto_0

    .line 736
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    .line 758
    .end local v17           #status:Ljava/lang/String;
    :cond_b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v17

    .restart local v17       #status:Ljava/lang/String;
    goto/16 :goto_1

    .line 777
    :cond_c
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    .restart local v14       #path:Ljava/io/File;
    goto/16 :goto_2

    .line 791
    .end local v14           #path:Ljava/io/File;
    :catch_1
    move-exception v20

    move-object/from16 v13, v20

    .line 794
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v17, "removed"

    .line 795
    goto/16 :goto_3

    .line 798
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :cond_d
    const-string v20, "Memory"

    const-string v21, " cannot display the memory."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdSize:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0804bd

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdAvail:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0804bd

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 803
    const-string v20, "unmounted"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    const-string v20, "nofs"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    const-string v20, "unmountable"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 806
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdFormat:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0804b9

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0804ba

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 811
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0804b9

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0804b8

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->finish()V

    .line 827
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const-string v11, "Memory"

    .line 197
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v9, :cond_0

    .line 200
    const-string v9, "storage"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 201
    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v10, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/deviceinfo/Memory;->hasSWInstallSettings:Z

    .line 206
    const-string v9, "Memory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Software Install Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/settings/deviceinfo/Memory;->hasSWInstallSettings:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const v6, 0x7f04000c

    .line 211
    .local v6, res_id:I
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v5

    .line 212
    .local v5, mountService:Landroid/os/storage/IMountService;
    if-eqz v5, :cond_2

    .line 214
    :try_start_0
    invoke-interface {v5}, Landroid/os/storage/IMountService;->getVolumeList()[Ljava/lang/String;

    move-result-object v8

    .line 215
    .local v8, volumes:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v7, v0, v1

    .line 216
    .local v7, s:Ljava/lang/String;
    const-string v9, "/mnt/sdcard-ext"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 217
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/deviceinfo/Memory;->has_emmc_support:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    const v6, 0x7f04000b

    .line 215
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v7           #s:Ljava/lang/String;
    .end local v8           #volumes:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 225
    :cond_2
    const-string v9, "Memory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "has_emmc_support:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/settings/deviceinfo/Memory;->has_emmc_support:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " res==memory_non_emmc"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f04000c

    if-ne v6, v10, :cond_5

    move v10, v12

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    .line 233
    const-string v9, "internal_storage"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageCat:Landroid/preference/PreferenceCategory;

    .line 235
    const-string v9, "external_memory_sd_size"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdSize:Landroid/preference/Preference;

    .line 236
    const-string v9, "external_memory_sd_avail"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdAvail:Landroid/preference/Preference;

    .line 237
    const-string v9, "external_sd_mount_toggle"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    .line 238
    const-string v9, "external_memory_sd_format"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdFormat:Landroid/preference/Preference;

    .line 239
    const-string v9, "internal_phone_memory_size"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneSize:Landroid/preference/Preference;

    .line 240
    const-string v9, "internal_phone_memory_avail"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneAvail:Landroid/preference/Preference;

    .line 241
    const-string v9, "internal_phone_mount_toggle"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    .line 242
    const-string v9, "internal_phone_memory_format"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneFormat:Landroid/preference/Preference;

    .line 244
    const-string v9, "memory_sd"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 246
    const-string v9, "memory_media_sync"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/deviceinfo/MediaSyncPreference;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaSyncPref:Lcom/android/settings/deviceinfo/MediaSyncPreference;

    .line 249
    iget-boolean v9, p0, Lcom/android/settings/deviceinfo/Memory;->hasSWInstallSettings:Z

    if-eqz v9, :cond_8

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "SOFTWARE_INSTALL_SETTING"

    invoke-static {v9, v10, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 251
    .local v4, mSoftwareInstallDisabled:I
    const-string v9, "Memory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Software Install Setting from db is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v9, "memory_software_install"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstall:Landroid/preference/CheckBoxPreference;

    .line 253
    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstall:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_7

    .line 254
    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 255
    if-eqz v4, :cond_6

    .line 256
    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 262
    :goto_2
    const-string v9, "memory_software_install_help"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstallHelp:Landroid/preference/PreferenceScreen;

    .line 263
    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstallHelp:Landroid/preference/PreferenceScreen;

    if-nez v9, :cond_3

    .line 264
    const-string v9, "Memory"

    const-string v9, "Software Install help not defined"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_3
    new-instance v9, Landroid/webkit/WebView;

    invoke-direct {v9, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mView:Landroid/webkit/WebView;

    .line 273
    .end local v4           #mSoftwareInstallDisabled:I
    :cond_4
    :goto_3
    return-void

    :cond_5
    move v10, v13

    .line 225
    goto/16 :goto_1

    .line 258
    .restart local v4       #mSoftwareInstallDisabled:I
    :cond_6
    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 260
    :cond_7
    const-string v9, "Memory"

    const-string v9, "Software Install not defined"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 268
    .end local v4           #mSoftwareInstallDisabled:I
    :cond_8
    const-string v9, "memory_swinstall"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 269
    .local v3, mSoftwareInstallCategory:Landroid/preference/Preference;
    if-eqz v3, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "id"
    .parameter "args"

    .prologue
    .line 474
    packed-switch p1, :pswitch_data_0

    .line 548
    const/4 v7, 0x0

    :goto_0
    return-object v7

    .line 476
    :pswitch_0
    iget v7, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 477
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0804bf

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08057a

    new-instance v9, Lcom/android/settings/deviceinfo/Memory$4;

    invoke-direct {v9, p0}, Lcom/android/settings/deviceinfo/Memory$4;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08034c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0804c0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 487
    :cond_0
    iget v7, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    if-nez v7, :cond_1

    .line 488
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f08022f

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08057a

    new-instance v9, Lcom/android/settings/deviceinfo/Memory$5;

    invoke-direct {v9, p0}, Lcom/android/settings/deviceinfo/Memory$5;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08034c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080230

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 500
    :cond_1
    :pswitch_1
    iget v7, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 501
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0804c1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08057a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0804c2

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 507
    :cond_2
    iget v7, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    if-nez v7, :cond_3

    .line 508
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f080231

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08057a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080232

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 517
    :cond_3
    :pswitch_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 520
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 521
    .local v0, am:Landroid/content/res/AssetManager;
    const-string v7, "html/%x%y/swinstall_help.html"

    const-string v8, "%x"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 522
    .local v4, path:Ljava/lang/String;
    const-string v7, "%y"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 523
    const/4 v6, 0x1

    .line 524
    .local v6, useCountry:Z
    const/4 v2, 0x0

    .line 526
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 530
    if-eqz v2, :cond_4

    .line 532
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 536
    :cond_4
    :goto_1
    const-string v7, "file:///android_asset/html/%x%y/swinstall_help.html"

    const-string v8, "%x"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, url:Ljava/lang/String;
    const-string v7, "%y"

    if-eqz v6, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 539
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mView:Landroid/webkit/WebView;

    invoke-virtual {v7, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 541
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080278

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/deviceinfo/Memory;->mView:Landroid/webkit/WebView;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 527
    .end local v5           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 528
    .local v1, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 530
    if-eqz v2, :cond_4

    .line 532
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 533
    :catch_1
    move-exception v7

    goto :goto_1

    .line 530
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_5

    .line 532
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 533
    :cond_5
    :goto_3
    throw v7

    .line 537
    .restart local v5       #url:Ljava/lang/String;
    :cond_6
    const-string v8, ""

    goto :goto_2

    .line 533
    .end local v5           #url:Ljava/lang/String;
    :catch_2
    move-exception v7

    goto :goto_1

    :catch_3
    move-exception v8

    goto :goto_3

    .line 474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 375
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->extStoragePath:Ljava/lang/String;

    .line 376
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 377
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 359
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->clearMessagesInHandler()V

    .line 367
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "SOFTWARE_INSTALL_SETTING"

    const-string v6, "Memory"

    .line 398
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneFormat:Landroid/preference/Preference;

    if-eq p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 399
    :cond_0
    iput v5, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    .line 423
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    if-ne v2, v4, :cond_9

    .line 425
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/Memory;->has_emmc_support:Z

    if-eqz v2, :cond_8

    .line 426
    invoke-static {}, Landroid/os/MotoEnvironment;->getExternalAltStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->extStoragePath:Ljava/lang/String;

    .line 432
    :cond_2
    :goto_1
    const-string v2, "Memory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick, the sd id is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    if-ne p2, v2, :cond_c

    .line 439
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/Memory;->has_emmc_support:Z

    if-eqz v2, :cond_a

    .line 440
    invoke-static {}, Landroid/os/MotoEnvironment;->getExternalAltStorageState()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, status:Ljava/lang/String;
    :goto_2
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 444
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->unmount()V

    :goto_3
    move v2, v4

    .line 467
    .end local v1           #status:Ljava/lang/String;
    :goto_4
    return v2

    .line 400
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdFormat:Landroid/preference/Preference;

    if-eq p2, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdMountToggle:Landroid/preference/Preference;

    if-ne p2, v2, :cond_5

    .line 401
    :cond_4
    iput v4, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    goto :goto_0

    .line 403
    :cond_5
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstall:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 404
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.intent.action.USB_DISABLE_CDROM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->sendBroadcast(Landroid/content/Intent;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SOFTWARE_INSTALL_SETTING"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    const-string v2, "Memory"

    const-string v2, "Sent Disable CDROM Intent"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move v2, v4

    .line 415
    goto :goto_4

    .line 410
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.intent.action.USB_ENABLE_CDROM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->sendBroadcast(Landroid/content/Intent;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SOFTWARE_INSTALL_SETTING"

    invoke-static {v2, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 413
    const-string v2, "Memory"

    const-string v2, "Sent Enable CDROM Intent"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 416
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstallHelp:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSoftwareInstallHelp:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_1

    .line 417
    const-string v2, "Memory"

    const-string v2, "Help clicked"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->showDialog(I)V

    move v2, v5

    .line 419
    goto :goto_4

    .line 428
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->extStoragePath:Ljava/lang/String;

    goto/16 :goto_1

    .line 429
    :cond_9
    iget v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    if-nez v2, :cond_2

    .line 430
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->extStoragePath:Ljava/lang/String;

    goto/16 :goto_1

    .line 442
    :cond_a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #status:Ljava/lang/String;
    goto/16 :goto_2

    .line 446
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->mount()V

    goto/16 :goto_3

    .line 449
    .end local v1           #status:Ljava/lang/String;
    :cond_c
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneMountToggle:Landroid/preference/Preference;

    if-ne p2, v2, :cond_d

    .line 450
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 455
    .restart local v1       #status:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->mount()V

    move v2, v4

    .line 457
    goto/16 :goto_4

    .line 458
    .end local v1           #status:Ljava/lang/String;
    :cond_d
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalPhoneFormat:Landroid/preference/Preference;

    if-eq p2, v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mExternalSdFormat:Landroid/preference/Preference;

    if-ne p2, v2, :cond_f

    .line 460
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "sd"

    iget v3, p0, Lcom/android/settings/deviceinfo/Memory;->mSdId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const-class v2, Lcom/android/settings/MediaFormat;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 463
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 464
    goto/16 :goto_4

    .end local v0           #intent:Landroid/content/Intent;
    :cond_f
    move v2, v5

    .line 467
    goto/16 :goto_4
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 277
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 280
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 282
    new-instance v2, Lcom/android/settings/deviceinfo/Memory$2;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/Memory$2;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v2, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/deviceinfo/Memory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/Memory;->hasSWInstallSettings:Z

    if-eqz v2, :cond_1

    .line 334
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .local v1, usbFilter:Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v2, "com.motorola.intent.action.USB_EXIT_MSC_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/deviceinfo/Memory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    .end local v1           #usbFilter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 342
    return-void
.end method

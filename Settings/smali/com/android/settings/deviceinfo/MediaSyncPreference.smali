.class public Lcom/android/settings/deviceinfo/MediaSyncPreference;
.super Landroid/preference/ListPreference;
.source "MediaSyncPreference.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MediaSyncPreference$UsbReceiver;
    }
.end annotation


# static fields
.field public static final ID_AUTO:I = 0x2

.field public static final ID_EXTERNAL:I = 0x1

.field public static final ID_INTERNAL:I = 0x0

.field public static final SHARED_PREFERENCE_KEY_ENABLE_UI:Ljava/lang/String; = "enable_ui"

.field private static final SHARED_PREFERENCE_KEY_STORAGE:Ljava/lang/String; = "storage"

.field private static final SHARED_PREFERENCE_NAME:Ljava/lang/String; = "com.motorola.mediasync"

.field private static final USB_CABLE_DETACHED:Ljava/lang/String; = "com.motorola.intent.action.USB_CABLE_DETACHED"

.field private static final USB_ENTER_MSC_MODE:Ljava/lang/String; = "com.motorola.intent.action.USB_ENTER_MSC_MODE"

.field private static final USB_EXIT_MSC_MODE:Ljava/lang/String; = "com.motorola.intent.action.USB_EXIT_MSC_MODE"

.field private static final USB_MTP_DEV_CLOSED:Ljava/lang/String; = "com.motorola.intent.action.USB_MTP_EXIT_OK"

.field private static final USB_MTP_DEV_OPEN:Ljava/lang/String; = "com.motorola.intent.action.USB_MTP_SERVICE_STARTED"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mEnableUI:Z

.field private mSelection:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mEnableUI:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSelection:I

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mEnableUI:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSelection:I

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/MediaSyncPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSelection:I

    return p1
.end method

.method private getMediaSyncStorageStatus()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, ")"

    const-string v4, " ("

    .line 125
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f080243

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->getStorageSize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f08021a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->getStorageSize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f08021b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->getStorageSize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 129
    .local v0, strStorage:[Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSelection:I

    aget-object v1, v0, v1

    return-object v1
.end method

.method private getStorageSize(I)Ljava/lang/String;
    .locals 14
    .parameter "storage"

    .prologue
    const-string v13, ""

    .line 99
    const/4 v5, 0x0

    .line 100
    .local v5, path:Ljava/io/File;
    if-nez p1, :cond_0

    .line 101
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 107
    :goto_0
    if-nez v5, :cond_2

    .line 108
    const-string v9, ""

    move-object v9, v13

    .line 120
    :goto_1
    return-object v9

    .line 102
    :cond_0
    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    .line 103
    invoke-static {}, Landroid/os/MotoEnvironment;->getExternalAltStorageDirectory()Ljava/io/File;

    move-result-object v5

    goto :goto_0

    .line 105
    :cond_1
    const-string v9, ""

    move-object v9, v13

    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    .line 110
    const-string v9, ""

    move-object v9, v13

    goto :goto_1

    .line 112
    :cond_3
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 113
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 114
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v7, v9

    .line 115
    .local v7, totalBlocks:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 117
    .local v0, availableBlocks:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mContext:Landroid/content/Context;

    mul-long v11, v0, v2

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mContext:Landroid/content/Context;

    mul-long v11, v7, v2

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_1

    .line 119
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v6           #stat:Landroid/os/StatFs;
    .end local v7           #totalBlocks:J
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 120
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v9, ""

    move-object v9, v13

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 50
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mContext:Landroid/content/Context;

    const-string v1, "com.motorola.mediasync"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 52
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "storage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSelection:I

    .line 53
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enable_ui"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mEnableUI:Z

    .line 54
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mEnableUI:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->enablePreference(Z)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public enablePreference(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->getMediaSyncStorageStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->setEnabled(Z)V

    .line 138
    return-void

    .line 136
    :cond_0
    const v0, 0x7f080219

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->setSummary(I)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "storage"

    iget v2, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSelection:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mEnableUI:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->enablePreference(Z)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 77
    const v0, 0x7f05003b

    iget v1, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSelection:I

    new-instance v2, Lcom/android/settings/deviceinfo/MediaSyncPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/MediaSyncPreference$1;-><init>(Lcom/android/settings/deviceinfo/MediaSyncPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const-string v1, "enable_ui"

    .line 59
    const-string v0, "enable_ui"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "enable_ui"

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mEnableUI:Z

    .line 61
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference;->mEnableUI:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->enablePreference(Z)V

    .line 63
    :cond_0
    return-void
.end method

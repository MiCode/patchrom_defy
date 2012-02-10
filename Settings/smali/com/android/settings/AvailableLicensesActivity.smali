.class public Lcom/android/settings/AvailableLicensesActivity;
.super Landroid/preference/PreferenceActivity;
.source "AvailableLicensesActivity.java"


# static fields
.field private static final DEFAULT_LICENSE_PATH:Ljava/lang/String; = "/system/etc/"

.field private static final LOGV:Z = false

.field public static final OSS_FILE_NAME:Ljava/lang/String; = "oss"

.field private static final TAG:Ljava/lang/String; = "AvailableLicensesActivity"


# instance fields
.field final NOTICE_PREFIX:Ljava/lang/String;

.field final NOTICE_SUFFIX:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 37
    const-string v0, "NOTICE"

    iput-object v0, p0, Lcom/android/settings/AvailableLicensesActivity;->NOTICE_PREFIX:Ljava/lang/String;

    .line 38
    const-string v0, ".html.gz"

    iput-object v0, p0, Lcom/android/settings/AvailableLicensesActivity;->NOTICE_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AvailableLicensesActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/AvailableLicensesActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkNOTICEFile(Ljava/lang/String;I)V
    .locals 11
    .parameter "filename"
    .parameter "num_OSSfiles"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x0

    const-string v10, "Bad OSS license file format. Filename = "

    const-string v9, "AvailableLicensesActivity"

    .line 67
    const-string v5, ".html.gz"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 68
    .local v2, indexSuffix:I
    const-string v5, "NOTICE"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 71
    .local v1, indexPrefix:I
    if-le v1, v2, :cond_0

    .line 72
    const-string v5, "AvailableLicensesActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OSS license file format. Filename = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 76
    :cond_0
    if-ne v1, v2, :cond_1

    .line 77
    new-instance v5, Ljava/util/Locale;

    const-string v6, "en"

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, p1, p2}, Lcom/android/settings/AvailableLicensesActivity;->initAvailableLicenses(Ljava/util/Locale;Ljava/lang/String;I)V

    goto :goto_0

    .line 80
    :cond_1
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, localeString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 82
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, language:Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, country:Ljava/lang/String;
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5, p1, p2}, Lcom/android/settings/AvailableLicensesActivity;->initAvailableLicenses(Ljava/util/Locale;Ljava/lang/String;I)V

    goto :goto_0

    .line 85
    .end local v0           #country:Ljava/lang/String;
    .end local v3           #language:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 86
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, p1, p2}, Lcom/android/settings/AvailableLicensesActivity;->initAvailableLicenses(Ljava/util/Locale;Ljava/lang/String;I)V

    goto :goto_0

    .line 88
    :cond_3
    const-string v5, "AvailableLicensesActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OSS license file format. Filename = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initAvailableLicenses(Ljava/util/Locale;Ljava/lang/String;I)V
    .locals 7
    .parameter "locale"
    .parameter "ossFileName"
    .parameter "num_OSSfiles"

    .prologue
    const/4 v6, 0x1

    .line 94
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/AvailableLicensesActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, preference_title:Ljava/lang/String;
    new-instance v2, Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/AvailableLicensesActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 97
    .local v2, pref:Landroid/preference/Preference;
    if-nez v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/etc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, ossFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    if-ne p3, v6, :cond_2

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/AvailableLicensesActivity;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/settings/SettingsLicenseActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 109
    const-string v4, "oss"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/AvailableLicensesActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/AvailableLicensesActivity;->finish()V

    goto :goto_0

    .line 117
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AvailableLicensesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 119
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 120
    new-instance v4, Lcom/android/settings/AvailableLicensesActivity$2;

    invoke-direct {v4, p0, p2}, Lcom/android/settings/AvailableLicensesActivity$2;-><init>(Lcom/android/settings/AvailableLicensesActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 141
    const v0, 0x7f08051c

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/AvailableLicensesActivity;->finish()V

    .line 144
    return-void
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iput-object p0, p0, Lcom/android/settings/AvailableLicensesActivity;->mContext:Landroid/content/Context;

    .line 46
    const v3, 0x7f040005

    invoke-virtual {p0, v3}, Lcom/android/settings/AvailableLicensesActivity;->addPreferencesFromResource(I)V

    .line 48
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, licenseFileDirectory:Ljava/io/File;
    new-instance v3, Lcom/android/settings/AvailableLicensesActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/AvailableLicensesActivity$1;-><init>(Lcom/android/settings/AvailableLicensesActivity;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, fileList:[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 55
    array-length v3, v0

    if-nez v3, :cond_0

    .line 56
    const-string v3, "AvailableLicensesActivity"

    const-string v4, "There is no license file available."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Lcom/android/settings/AvailableLicensesActivity;->showErrorAndFinish()V

    .line 60
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 61
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    array-length v4, v0

    invoke-direct {p0, v3, v4}, Lcom/android/settings/AvailableLicensesActivity;->checkNOTICEFile(Ljava/lang/String;I)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v1           #i:I
    :cond_1
    return-void
.end method

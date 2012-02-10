.class public Lcom/android/settings/SettingsLicenseActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsLicenseActivity.java"


# static fields
.field private static final DEFAULT_LICENSE_PATH:Ljava/lang/String; = "/system/etc/"

.field private static final LOGV:Z = false

.field private static final PROPERTY_LICENSE_PATH:Ljava/lang/String; = "ro.config.license_path"

.field private static final TAG:Ljava/lang/String; = "SettingsLicenseActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsLicenseActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 146
    const v0, 0x7f08051c

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    .line 149
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsLicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 60
    .local v16, intent:Landroid/content/Intent;
    if-nez v16, :cond_1

    .line 61
    const-string v5, "SettingsLicenseActivity"

    const-string v6, "intent for loading OSS file is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v5, "oss"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 66
    .local v18, ossFileName:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 67
    const-string v18, "NOTICE.html.gz"

    .line 69
    :cond_2
    const-string v5, "ro.config.license_path"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/etc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 72
    .local v13, fileName:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 73
    const-string v5, "SettingsLicenseActivity"

    const-string v6, "The system property for the license file is empty."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    goto :goto_0

    .line 78
    :cond_3
    const/4 v14, 0x0

    .line 79
    .local v14, inputReader:Ljava/io/InputStreamReader;
    const/4 v10, 0x0

    .line 81
    .local v10, data:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v5, 0x800

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 82
    .end local v10           #data:Ljava/lang/StringBuilder;
    .local v11, data:Ljava/lang/StringBuilder;
    const/16 v5, 0x800

    :try_start_1
    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v20, v0

    .line 84
    .local v20, tmp:[C
    const-string v5, ".gz"

    invoke-virtual {v13, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 85
    new-instance v15, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v15, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v14           #inputReader:Ljava/io/InputStreamReader;
    .local v15, inputReader:Ljava/io/InputStreamReader;
    move-object v14, v15

    .line 90
    .end local v15           #inputReader:Ljava/io/InputStreamReader;
    .restart local v14       #inputReader:Ljava/io/InputStreamReader;
    :goto_1
    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v17

    .local v17, numRead:I
    if-ltz v17, :cond_5

    .line 91
    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, v20

    move v2, v5

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_1

    .line 99
    .end local v17           #numRead:I
    .end local v20           #tmp:[C
    :catch_0
    move-exception v5

    move-object v12, v5

    move-object v10, v11

    .line 100
    .end local v11           #data:Ljava/lang/StringBuilder;
    .restart local v10       #data:Ljava/lang/StringBuilder;
    .local v12, e:Ljava/lang/OutOfMemoryError;
    :goto_2
    :try_start_2
    const-string v5, "SettingsLicenseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    if-eqz v14, :cond_0

    .line 114
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 116
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 88
    .end local v10           #data:Ljava/lang/StringBuilder;
    .end local v12           #e:Ljava/lang/OutOfMemoryError;
    .restart local v11       #data:Ljava/lang/StringBuilder;
    .restart local v20       #tmp:[C
    :cond_4
    :try_start_4
    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .end local v14           #inputReader:Ljava/io/InputStreamReader;
    .restart local v15       #inputReader:Ljava/io/InputStreamReader;
    move-object v14, v15

    .end local v15           #inputReader:Ljava/io/InputStreamReader;
    .restart local v14       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_1

    .line 95
    .restart local v17       #numRead:I
    :cond_5
    if-eqz v14, :cond_6

    .line 96
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 113
    :cond_6
    if-eqz v14, :cond_7

    .line 114
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 120
    :cond_7
    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 121
    const-string v5, "SettingsLicenseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "License HTML is empty (from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    goto/16 :goto_0

    .line 103
    .end local v11           #data:Ljava/lang/StringBuilder;
    .end local v17           #numRead:I
    .end local v20           #tmp:[C
    .restart local v10       #data:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v5

    move-object v12, v5

    .line 104
    .local v12, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    const-string v5, "SettingsLicenseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "License HTML file not found at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 113
    if-eqz v14, :cond_0

    .line 114
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 116
    :catch_3
    move-exception v5

    goto/16 :goto_0

    .line 107
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    move-object v12, v5

    .line 108
    .local v12, e:Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string v5, "SettingsLicenseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading license HTML file at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 113
    if-eqz v14, :cond_0

    .line 114
    :try_start_9
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 116
    :catch_5
    move-exception v5

    goto/16 :goto_0

    .line 112
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 113
    :goto_6
    if-eqz v14, :cond_8

    .line 114
    :try_start_a
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 117
    :cond_8
    :goto_7
    throw v5

    .line 126
    .end local v10           #data:Ljava/lang/StringBuilder;
    .restart local v11       #data:Ljava/lang/StringBuilder;
    .restart local v17       #numRead:I
    .restart local v20       #tmp:[C
    :cond_9
    new-instance v4, Landroid/webkit/WebView;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v4, webView:Landroid/webkit/WebView;
    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/html"

    const-string v8, "utf-8"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v5, Lcom/android/settings/SettingsLicenseActivity$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsLicenseActivity$1;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsLicenseActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v19, v0

    .line 139
    .local v19, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v5, 0x7f08051d

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 140
    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 141
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsLicenseActivity;->setupAlert()V

    goto/16 :goto_0

    .line 116
    .end local v4           #webView:Landroid/webkit/WebView;
    .end local v19           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :catch_6
    move-exception v5

    goto/16 :goto_3

    .end local v11           #data:Ljava/lang/StringBuilder;
    .end local v17           #numRead:I
    .end local v20           #tmp:[C
    .restart local v10       #data:Ljava/lang/StringBuilder;
    :catch_7
    move-exception v6

    goto :goto_7

    .line 112
    .end local v10           #data:Ljava/lang/StringBuilder;
    .restart local v11       #data:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v5

    move-object v10, v11

    .end local v11           #data:Ljava/lang/StringBuilder;
    .restart local v10       #data:Ljava/lang/StringBuilder;
    goto :goto_6

    .line 107
    .end local v10           #data:Ljava/lang/StringBuilder;
    .restart local v11       #data:Ljava/lang/StringBuilder;
    :catch_8
    move-exception v5

    move-object v12, v5

    move-object v10, v11

    .end local v11           #data:Ljava/lang/StringBuilder;
    .restart local v10       #data:Ljava/lang/StringBuilder;
    goto :goto_5

    .line 103
    .end local v10           #data:Ljava/lang/StringBuilder;
    .restart local v11       #data:Ljava/lang/StringBuilder;
    :catch_9
    move-exception v5

    move-object v12, v5

    move-object v10, v11

    .end local v11           #data:Ljava/lang/StringBuilder;
    .restart local v10       #data:Ljava/lang/StringBuilder;
    goto/16 :goto_4

    .line 99
    :catch_a
    move-exception v5

    move-object v12, v5

    goto/16 :goto_2
.end method

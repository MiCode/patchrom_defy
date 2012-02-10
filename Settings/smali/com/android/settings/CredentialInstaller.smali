.class public Lcom/android/settings/CredentialInstaller;
.super Landroid/app/Activity;
.source "CredentialInstaller.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CredentialInstaller"

.field private static final UNLOCKING:Ljava/lang/String; = "ulck"


# instance fields
.field private mEdmError:Lmotorola/app/admin/EdmErrorCode;

.field private mEdmFeatureEnabled:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mUnlocking:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialInstaller;->mKeyStore:Landroid/security/KeyStore;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CredentialInstaller;->mUnlocking:Z

    .line 45
    new-instance v0, Lmotorola/app/admin/EdmErrorCode;

    invoke-direct {v0, p0}, Lmotorola/app/admin/EdmErrorCode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/CredentialInstaller;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    .line 46
    const-string v0, "ro.mot.dpmext"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/CredentialInstaller;->mEdmFeatureEnabled:Z

    return-void
.end method

.method private delete(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v7, "CredentialInstaller"

    .line 117
    const-string v4, "NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, allCertNames:[Ljava/lang/String;
    const-string v4, "LENGTH"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 119
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 120
    aget-object v1, v0, v2

    .line 121
    .local v1, certName:Ljava/lang/String;
    const-string v4, "CredentialInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete :Certificate Name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eqz v1, :cond_0

    .line 123
    iget-object v4, p0, Lcom/android/settings/CredentialInstaller;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Landroid/security/KeyStore;->test()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 124
    const-string v4, "CredentialInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Deleting ... Certificate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v4, p0, Lcom/android/settings/CredentialInstaller;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 126
    iget-object v4, p0, Lcom/android/settings/CredentialInstaller;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 127
    iget-object v4, p0, Lcom/android/settings/CredentialInstaller;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 128
    iget-object v4, p0, Lcom/android/settings/CredentialInstaller;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    invoke-virtual {v4, v8, v9}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 119
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/android/settings/CredentialInstaller;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    const/16 v5, -0x1391

    invoke-virtual {v4, v5, v9}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 132
    const-string v4, "CredentialInstaller"

    const-string v4, " Keysote test is failed"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    .end local v1           #certName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private install()V
    .locals 9

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/CredentialInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 105
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 106
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    if-nez v0, :cond_1

    .line 115
    :goto_1
    return-void

    .line 105
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 107
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 108
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 109
    .local v1, data:[B
    if-eqz v1, :cond_2

    .line 110
    iget-object v6, p0, Lcom/android/settings/CredentialInstaller;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/security/KeyStore;->put([B[B)Z

    move-result v5

    .line 111
    .local v5, success:Z
    const-string v6, "CredentialInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  success? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-nez v5, :cond_2

    goto :goto_1

    .line 114
    .end local v1           #data:[B
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #success:Z
    :cond_3
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/CredentialInstaller;->setResult(I)V

    goto :goto_1
.end method

.method private isKeyStoreUnlocked()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-object v0, p0, Lcom/android/settings/CredentialInstaller;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedStates"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 100
    const-string v0, "ulck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/CredentialInstaller;->mUnlocking:Z

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const-string v5, "com.motorola.intent.action.CERT_DELETE"

    const-string v4, "com.android.certinstaller"

    const-string v3, "CredentialInstaller"

    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/CredentialInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    const-string v1, "CredentialInstaller"

    const-string v1, " Getting Intent failed"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/CredentialInstaller;->finish()V

    .line 89
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v1, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings/CredentialInstaller;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/CredentialInstaller;->mEdmFeatureEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.intent.action.CERT_DELETE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    :cond_2
    const-string v1, "CredentialInstaller"

    const-string v1, " UnAuthorised call"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/CredentialInstaller;->finish()V

    goto :goto_0

    .line 67
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/CredentialInstaller;->isKeyStoreUnlocked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/CredentialInstaller;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings/CredentialInstaller;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    invoke-direct {p0}, Lcom/android/settings/CredentialInstaller;->install()V

    .line 73
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/CredentialInstaller;->mEdmFeatureEnabled:Z

    if-eqz v1, :cond_5

    .line 74
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.intent.action.CERT_DELETE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    const-string v1, "CredentialInstaller"

    const-string v1, " Calling delete certificate"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0, v0}, Lcom/android/settings/CredentialInstaller;->delete(Landroid/content/Intent;)V

    .line 88
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/CredentialInstaller;->finish()V

    goto :goto_0

    .line 82
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/CredentialInstaller;->mUnlocking:Z

    if-nez v1, :cond_5

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/CredentialInstaller;->mUnlocking:Z

    .line 84
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 85
    const-string v1, "CredentialInstaller"

    const-string v1, "Unlock Keystore"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outStates"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "ulck"

    iget-boolean v1, p0, Lcom/android/settings/CredentialInstaller;->mUnlocking:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

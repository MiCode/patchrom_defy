.class public Lcom/android/settings/vpn/VpnAddOrRetrieve;
.super Landroid/app/Activity;
.source "VpnAddOrRetrieve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn/VpnAddOrRetrieve$3;
    }
.end annotation


# static fields
.field private static final KEY_PREFIX_IPSEC_PSK:Ljava/lang/String; = "VPN_i"

.field private static final KEY_PREFIX_L2TP_SECRET:Ljava/lang/String; = "VPN_l"

.field static final KEY_VPN_PROFILE:Ljava/lang/String; = "vpn_profile"

.field private static final PROFILES_ROOT:Ljava/lang/String; = null

.field private static final PROFILE_OBJ_FILE:Ljava/lang/String; = ".pobj"

.field private static final REQUEST_ADD_OR_EDIT_PROFILE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEdmError:Lmotorola/app/admin/EdmErrorCode;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mUnlockAction:Ljava/lang/Runnable;

.field private mVpnManager:Landroid/net/vpn/VpnManager;

.field private mVpnProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/vpn/VpnManager;->getProfilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->PROFILES_ROOT:Ljava/lang/String;

    .line 47
    const-class v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    .line 52
    new-instance v0, Landroid/net/vpn/VpnManager;

    invoke-direct {v0, p0}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mVpnManager:Landroid/net/vpn/VpnManager;

    .line 54
    new-instance v0, Lmotorola/app/admin/EdmErrorCode;

    invoke-direct {v0, p0}, Lmotorola/app/admin/EdmErrorCode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    return-void
.end method

.method private addProfile(Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->processSecrets(Landroid/net/vpn/VpnProfile;)V

    .line 465
    invoke-static {p1}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V

    .line 466
    return-void
.end method

.method private checkIdConsistency(Ljava/lang/String;Landroid/net/vpn/VpnProfile;)Z
    .locals 3
    .parameter "dirName"
    .parameter "p"

    .prologue
    .line 552
    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    sget-object v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID inconsistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v0, 0x0

    .line 556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createVpnProfile(Ljava/lang/String;)Landroid/net/vpn/VpnProfile;
    .locals 2
    .parameter "type"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mVpnManager:Landroid/net/vpn/VpnManager;

    const-class v1, Landroid/net/vpn/VpnType;

    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/VpnType;

    invoke-virtual {v0, p0}, Landroid/net/vpn/VpnManager;->createVpnProfile(Landroid/net/vpn/VpnType;)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method private deserialize(Ljava/io/File;)Landroid/net/vpn/VpnProfile;
    .locals 5
    .parameter "profileObjectFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 536
    .local v1, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 537
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 541
    .end local v1           #ois:Ljava/io/ObjectInputStream;
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_0
    return-object v3

    .line 539
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 540
    .local v0, e:Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v4, "deserialize a profile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/vpn/VpnAddOrRetrieve;->PROFILES_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProfileIndexFromId(Ljava/lang/String;)I
    .locals 4
    .parameter "id"

    .prologue
    .line 405
    const/4 v1, 0x0

    .line 406
    .local v1, index:I
    iget-object v3, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 407
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 413
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_1
    return v3

    .line 410
    .restart local v2       #p:Landroid/net/vpn/VpnProfile;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getProfileIndexFromName(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, index:I
    iget-object v3, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 419
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 425
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_1
    return v3

    .line 422
    .restart local v2       #p:Landroid/net/vpn/VpnProfile;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private isKeyStoreUnlocked()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 460
    iget-object v0, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

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

.method private needKeyStoreToSave(Landroid/net/vpn/VpnProfile;)Z
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x1

    .line 430
    sget-object v4, Lcom/android/settings/vpn/VpnAddOrRetrieve$3;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 447
    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 432
    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v3, v0

    .line 433
    .local v3, pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    invoke-virtual {v3}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, presharedKey:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_0

    .line 439
    .end local v2           #presharedKey:Ljava/lang/String;
    .end local v3           #pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    :cond_1
    :pswitch_1
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v1, v0

    .line 440
    .local v1, l2tpProfile:Landroid/net/vpn/L2tpProfile;
    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 442
    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private processSecrets(Landroid/net/vpn/VpnProfile;)V
    .locals 10
    .parameter "p"

    .prologue
    const-string v9, "keystore write failed: key="

    .line 469
    sget-object v6, Lcom/android/settings/vpn/VpnAddOrRetrieve$3;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 496
    :goto_0
    return-void

    .line 471
    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v4, v0

    .line 472
    .local v4, pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    invoke-virtual {v4}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, presharedKey:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_i"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, key:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v1, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 476
    sget-object v6, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore write failed: key="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    invoke-virtual {v4, v1}, Landroid/net/vpn/L2tpIpsecPskProfile;->setPresharedKey(Ljava/lang/String;)V

    .line 482
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #presharedKey:Ljava/lang/String;
    .end local v4           #pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    :pswitch_1
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v2, v0

    .line 483
    .local v2, l2tpProfile:Landroid/net/vpn/L2tpProfile;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_l"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .restart local v1       #key:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 485
    invoke-virtual {v2}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, secret:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v1, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 488
    sget-object v6, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore write failed: key="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    invoke-virtual {v2, v1}, Landroid/net/vpn/L2tpProfile;->setSecretString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 492
    .end local v5           #secret:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 529
    invoke-static {p1}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn/Util;->deleteFile(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method private replaceProfile(ILandroid/net/vpn/VpnProfile;)V
    .locals 3
    .parameter "index"
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 512
    .local v0, oldProfile:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    .line 517
    invoke-static {v0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/vpn/Util;->copyFiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V

    .line 520
    :cond_0
    invoke-static {p2}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V

    .line 522
    return-void
.end method

.method private retrieveVpnListFromStorage()V
    .locals 11

    .prologue
    .line 325
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mVpnProfileList:Ljava/util/List;

    .line 327
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/android/settings/vpn/VpnAddOrRetrieve;->PROFILES_ROOT:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v8, root:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, dirs:[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 353
    :goto_0
    return-void

    .line 332
    :cond_0
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v1, v0, v5

    .line 333
    .local v1, dir:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v10, ".pobj"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 334
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 332
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 336
    :cond_2
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->deserialize(Ljava/io/File;)Landroid/net/vpn/VpnProfile;

    move-result-object v7

    .line 337
    .local v7, p:Landroid/net/vpn/VpnProfile;
    if-eqz v7, :cond_1

    .line 338
    invoke-direct {p0, v1, v7}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->checkIdConsistency(Ljava/lang/String;Landroid/net/vpn/VpnProfile;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 339
    iget-object v9, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 340
    .end local v7           #p:Landroid/net/vpn/VpnProfile;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 341
    .local v3, e:Ljava/io/IOException;
    sget-object v9, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v10, "retrieveVpnListFromStorage()"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 344
    .end local v1           #dir:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #f:Ljava/io/File;
    :cond_3
    iget-object v9, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mVpnProfileList:Ljava/util/List;

    new-instance v10, Lcom/android/settings/vpn/VpnAddOrRetrieve$1;

    invoke-direct {v10, p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve$1;-><init>(Lcom/android/settings/vpn/VpnAddOrRetrieve;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V
    .locals 5
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 501
    :cond_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, ".pobj"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 503
    .local v1, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 504
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 505
    return-void
.end method

.method private unlockKeyStore(Landroid/net/vpn/VpnProfile;Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "p"
    .parameter "action"

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->isKeyStoreUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    .line 454
    :cond_0
    iput-object p2, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mUnlockAction:Ljava/lang/Runnable;

    .line 455
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 456
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected ProcessIntent(ILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 357
    const/4 v5, 0x1

    if-ne p1, v5, :cond_5

    .line 358
    const-string v5, "vpn_profile"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/vpn/VpnProfile;

    .line 359
    .local v4, p:Landroid/net/vpn/VpnProfile;
    if-nez v4, :cond_1

    .line 360
    sget-object v5, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v6, "null object returned by editor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {v4}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->getProfileIndexFromId(Ljava/lang/String;)I

    move-result v2

    .line 365
    .local v2, index:I
    invoke-virtual {v4}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 367
    .local v3, nameIndex:I
    if-gez v2, :cond_3

    if-lez v3, :cond_3

    .line 368
    sget-object v5, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v6, "VPN name is already exists"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v5, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    const/16 v6, -0xbbe

    invoke-virtual {v5, v6, v7}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    .line 375
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->needKeyStoreToSave(Landroid/net/vpn/VpnProfile;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 376
    new-instance v0, Lcom/android/settings/vpn/VpnAddOrRetrieve$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/vpn/VpnAddOrRetrieve$2;-><init>(Lcom/android/settings/vpn/VpnAddOrRetrieve;ILandroid/content/Intent;)V

    .line 381
    .local v0, action:Ljava/lang/Runnable;
    invoke-direct {p0, v4, v0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->unlockKeyStore(Landroid/net/vpn/VpnProfile;Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 385
    .end local v0           #action:Ljava/lang/Runnable;
    :cond_2
    if-gez v2, :cond_4

    .line 386
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->addProfile(Landroid/net/vpn/VpnProfile;)V

    .line 387
    sget-object v5, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v6, "Added new profile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_2
    iget-object v5, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    goto :goto_0

    .line 372
    :cond_3
    move v2, v3

    goto :goto_1

    .line 389
    :cond_4
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->replaceProfile(ILandroid/net/vpn/VpnProfile;)V

    .line 390
    sget-object v5, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v6, "Replaced profile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 392
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 393
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 396
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #index:I
    .end local v3           #nameIndex:I
    .end local v4           #p:Landroid/net/vpn/VpnProfile;
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown request code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 32
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, intentString:Ljava/lang/String;
    const-string v29, "com.motorola.intent.action.ADD_VPN_PROFILE"

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string v30, "bundle"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 70
    .local v3, extraArgs:Landroid/os/Bundle;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->retrieveVpnListFromStorage()V

    .line 72
    const-string v29, "VPN_ID"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 73
    .local v20, vpn_id:Ljava/lang/String;
    const-string v29, "VPN_TYPE"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 74
    .local v27, vpn_type:Ljava/lang/String;
    const-string v29, "VPN_NAME"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 75
    .local v22, vpn_name:Ljava/lang/String;
    const-string v29, "VPN_SERVER_NAME"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 76
    .local v25, vpn_server_name:Ljava/lang/String;
    const-string v29, "VPN_DOMAIN_SUFFICES"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 77
    .local v18, vpn_domain_suffices:Ljava/lang/String;
    const-string v29, "L2TP_SECRET_ENABLED"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 78
    .local v26, vpn_set_secret_enabled:Ljava/lang/String;
    const-string v29, "L2TP_SECRET"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 79
    .local v24, vpn_secret_string:Ljava/lang/String;
    const-string v29, "CA_CERT"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 80
    .local v17, vpn_ca_certificate:Ljava/lang/String;
    const-string v29, "USER_CERT"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 81
    .local v28, vpn_user_certificate:Ljava/lang/String;
    const-string v29, "PSK"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 82
    .local v23, vpn_pre_sharedkey:Ljava/lang/String;
    const-string v29, "ENCRYPT_ENABLED"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 84
    .local v19, vpn_encryption_enabled:Ljava/lang/String;
    const/4 v10, 0x0

    .line 86
    .local v10, p:Landroid/net/vpn/VpnProfile;
    if-eqz v22, :cond_0

    if-nez v25, :cond_1

    .line 87
    :cond_0
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "Invalid vpn_name or vpn_server_name"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    move-object/from16 v29, v0

    const/16 v30, -0xbc0

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    .line 92
    :cond_1
    if-eqz v26, :cond_2

    const-string v29, "true"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    if-nez v24, :cond_2

    .line 94
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "Invalid vpn_secret_string"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    move-object/from16 v29, v0

    const/16 v30, -0xbb9

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    .line 99
    :cond_2
    if-nez v27, :cond_3

    .line 100
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "Invalid vpn type"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    move-object/from16 v29, v0

    const/16 v30, -0xbbd

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    .line 106
    :cond_3
    const-string v29, "L2TP"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->createVpnProfile(Ljava/lang/String;)Landroid/net/vpn/VpnProfile;

    move-result-object v10

    .line 108
    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    .line 109
    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setName(Ljava/lang/String;)V

    .line 110
    move-object v0, v10

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setServerName(Ljava/lang/String;)V

    .line 111
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setDomainSuffices(Ljava/lang/String;)V

    .line 113
    const-string v29, "true"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 114
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v11, v0

    const-string v29, "true"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    move-object v0, v11

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/net/vpn/L2tpProfile;->setSecretEnabled(Z)V

    .line 115
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/vpn/L2tpProfile;->setSecretString(Ljava/lang/String;)V

    .line 186
    :cond_4
    :goto_0
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v12, pp:Landroid/content/Intent;
    const-string v29, "vpn_profile"

    move-object v0, v12

    move-object/from16 v1, v29

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->ProcessIntent(ILandroid/content/Intent;)V

    .line 306
    .end local v3           #extraArgs:Landroid/os/Bundle;
    .end local v10           #p:Landroid/net/vpn/VpnProfile;
    .end local v12           #pp:Landroid/content/Intent;
    .end local v17           #vpn_ca_certificate:Ljava/lang/String;
    .end local v18           #vpn_domain_suffices:Ljava/lang/String;
    .end local v19           #vpn_encryption_enabled:Ljava/lang/String;
    .end local v20           #vpn_id:Ljava/lang/String;
    .end local v22           #vpn_name:Ljava/lang/String;
    .end local v23           #vpn_pre_sharedkey:Ljava/lang/String;
    .end local v24           #vpn_secret_string:Ljava/lang/String;
    .end local v25           #vpn_server_name:Ljava/lang/String;
    .end local v26           #vpn_set_secret_enabled:Ljava/lang/String;
    .end local v27           #vpn_type:Ljava/lang/String;
    .end local v28           #vpn_user_certificate:Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 117
    .restart local v3       #extraArgs:Landroid/os/Bundle;
    .restart local v10       #p:Landroid/net/vpn/VpnProfile;
    .restart local v17       #vpn_ca_certificate:Ljava/lang/String;
    .restart local v18       #vpn_domain_suffices:Ljava/lang/String;
    .restart local v19       #vpn_encryption_enabled:Ljava/lang/String;
    .restart local v20       #vpn_id:Ljava/lang/String;
    .restart local v22       #vpn_name:Ljava/lang/String;
    .restart local v23       #vpn_pre_sharedkey:Ljava/lang/String;
    .restart local v24       #vpn_secret_string:Ljava/lang/String;
    .restart local v25       #vpn_server_name:Ljava/lang/String;
    .restart local v26       #vpn_set_secret_enabled:Ljava/lang/String;
    .restart local v27       #vpn_type:Ljava/lang/String;
    .restart local v28       #vpn_user_certificate:Ljava/lang/String;
    :cond_6
    const-string v29, "L2TP/IPSec CRT"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 118
    const-string v29, "L2TP_IPSEC"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->createVpnProfile(Ljava/lang/String;)Landroid/net/vpn/VpnProfile;

    move-result-object v10

    .line 119
    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    .line 120
    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setName(Ljava/lang/String;)V

    .line 121
    move-object v0, v10

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setServerName(Ljava/lang/String;)V

    .line 122
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setDomainSuffices(Ljava/lang/String;)V

    .line 124
    const-string v29, "true"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 125
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecProfile;

    move-object v11, v0

    const-string v29, "true"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    move-object v0, v11

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/net/vpn/L2tpIpsecProfile;->setSecretEnabled(Z)V

    .line 126
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecProfile;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/vpn/L2tpIpsecProfile;->setSecretString(Ljava/lang/String;)V

    .line 129
    :cond_7
    if-nez v17, :cond_8

    .line 130
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "Invalid vpn_ca_certificate"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    move-object/from16 v29, v0

    const/16 v30, -0xbba

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    .line 137
    :cond_8
    if-nez v28, :cond_9

    .line 138
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "Invalid vpn_user_certificate"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    move-object/from16 v29, v0

    const/16 v30, -0xbbb

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    .line 146
    :cond_9
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecProfile;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/vpn/L2tpIpsecProfile;->setCaCertificate(Ljava/lang/String;)V

    .line 147
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecProfile;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/vpn/L2tpIpsecProfile;->setUserCertificate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_a
    const-string v29, "L2TP/IPSec PSK"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 150
    const-string v29, "L2TP_IPSEC_PSK"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->createVpnProfile(Ljava/lang/String;)Landroid/net/vpn/VpnProfile;

    move-result-object v10

    .line 151
    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    .line 152
    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setName(Ljava/lang/String;)V

    .line 153
    move-object v0, v10

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setServerName(Ljava/lang/String;)V

    .line 154
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setDomainSuffices(Ljava/lang/String;)V

    .line 156
    const-string v29, "true"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 157
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v11, v0

    const-string v29, "true"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    move-object v0, v11

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/net/vpn/L2tpIpsecPskProfile;->setSecretEnabled(Z)V

    .line 158
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/vpn/L2tpIpsecPskProfile;->setSecretString(Ljava/lang/String;)V

    .line 161
    :cond_b
    if-nez v23, :cond_c

    .line 162
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "Invalid vpn_pre_sharedkey"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    move-object/from16 v29, v0

    const/16 v30, -0xbbc

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    .line 169
    :cond_c
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/vpn/L2tpIpsecPskProfile;->setPresharedKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :cond_d
    const-string v29, "PPTP"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->createVpnProfile(Ljava/lang/String;)Landroid/net/vpn/VpnProfile;

    move-result-object v10

    .line 173
    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    .line 174
    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setName(Ljava/lang/String;)V

    .line 175
    move-object v0, v10

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setServerName(Ljava/lang/String;)V

    .line 176
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setDomainSuffices(Ljava/lang/String;)V

    .line 178
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/PptpProfile;

    move-object v11, v0

    const-string v29, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    move-object v0, v11

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/net/vpn/PptpProfile;->setEncryptionEnabled(Z)V

    goto/16 :goto_0

    .line 180
    :cond_e
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "Invalid vpn type"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    move-object/from16 v29, v0

    const/16 v30, -0xbbd

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    goto/16 :goto_0

    .line 190
    .end local v3           #extraArgs:Landroid/os/Bundle;
    .end local v10           #p:Landroid/net/vpn/VpnProfile;
    .end local v17           #vpn_ca_certificate:Ljava/lang/String;
    .end local v18           #vpn_domain_suffices:Ljava/lang/String;
    .end local v19           #vpn_encryption_enabled:Ljava/lang/String;
    .end local v20           #vpn_id:Ljava/lang/String;
    .end local v22           #vpn_name:Ljava/lang/String;
    .end local v23           #vpn_pre_sharedkey:Ljava/lang/String;
    .end local v24           #vpn_secret_string:Ljava/lang/String;
    .end local v25           #vpn_server_name:Ljava/lang/String;
    .end local v26           #vpn_set_secret_enabled:Ljava/lang/String;
    .end local v27           #vpn_type:Ljava/lang/String;
    .end local v28           #vpn_user_certificate:Ljava/lang/String;
    :cond_f
    const-string v29, "com.motorola.intent.action.DEL_VPN_PROFILE"

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string v30, "bundle"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 192
    .restart local v3       #extraArgs:Landroid/os/Bundle;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->retrieveVpnListFromStorage()V

    .line 193
    const-string v29, "VPN_ID"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 194
    .local v21, vpn_ids:[Ljava/lang/String;
    const-string v29, "LENGTH"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 195
    .local v16, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    move v0, v4

    move/from16 v1, v16

    if-ge v0, v1, :cond_14

    .line 197
    aget-object v20, v21, v4

    .line 198
    .restart local v20       #vpn_id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->getProfileIndexFromId(Ljava/lang/String;)I

    move-result v11

    .line 200
    .local v11, position:I
    const/16 v29, -0x1

    move v0, v11

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 201
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "Invalid Vpn id"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    move-object/from16 v29, v0

    const/16 v30, -0xbc2

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 208
    :cond_10
    if-ltz v11, :cond_12

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mVpnProfileList:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/vpn/VpnProfile;

    .line 210
    .restart local v10       #p:Landroid/net/vpn/VpnProfile;
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve$3;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {v10}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v30

    aget v29, v29, v30

    packed-switch v29, :pswitch_data_0

    .line 231
    :cond_11
    :goto_3
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V

    .line 232
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "removed vpn profile from storage"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 195
    .end local v10           #p:Landroid/net/vpn/VpnProfile;
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 212
    .restart local v10       #p:Landroid/net/vpn/VpnProfile;
    :pswitch_0
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v14, v0

    .line 213
    .local v14, pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    invoke-virtual {v14}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v13

    .line 214
    .local v13, presharedKey:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "VPN_i"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v10}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, key:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_13

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 217
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "pre shared key is deleted from keystore"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v7           #key:Ljava/lang/String;
    .end local v13           #presharedKey:Ljava/lang/String;
    .end local v14           #pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    :cond_13
    :pswitch_1
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v8, v0

    .line 223
    .local v8, l2tpProfile:Landroid/net/vpn/L2tpProfile;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "VPN_l"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v10}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 224
    .restart local v7       #key:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v29

    if-eqz v29, :cond_11

    invoke-virtual {v8}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_11

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 227
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "secret is deleted from keystore"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 238
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #l2tpProfile:Landroid/net/vpn/L2tpProfile;
    .end local v10           #p:Landroid/net/vpn/VpnProfile;
    .end local v11           #position:I
    .end local v20           #vpn_id:Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    goto/16 :goto_1

    .line 240
    .end local v3           #extraArgs:Landroid/os/Bundle;
    .end local v4           #i:I
    .end local v16           #size:I
    .end local v21           #vpn_ids:[Ljava/lang/String;
    :cond_15
    const-string v29, "com.motorola.intent.action.FETCH_VPN_PROFILE"

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string v30, "bundle"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 242
    .restart local v3       #extraArgs:Landroid/os/Bundle;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->retrieveVpnListFromStorage()V

    .line 243
    const-string v29, "VPN_ID"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 244
    .restart local v20       #vpn_id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->getProfileIndexFromId(Ljava/lang/String;)I

    move-result v5

    .line 246
    .local v5, index:I
    const/16 v29, -0x1

    move v0, v5

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 247
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "Invalid Vpn id"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    move-object/from16 v29, v0

    const/16 v30, -0xbc3

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    .line 253
    :cond_16
    if-ltz v5, :cond_17

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mVpnProfileList:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/vpn/VpnProfile;

    .line 257
    .restart local v10       #p:Landroid/net/vpn/VpnProfile;
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v15, resultVpn:Landroid/os/Bundle;
    const-string v29, "VPN_ID"

    invoke-virtual {v10}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v30

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v29, "VPN_NAME"

    invoke-virtual {v10}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v30

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v29, "VPN_SERVER_NAME"

    invoke-virtual {v10}, Landroid/net/vpn/VpnProfile;->getServerName()Ljava/lang/String;

    move-result-object v30

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v29, "VPN_DOMAIN_SUFFICES"

    invoke-virtual {v10}, Landroid/net/vpn/VpnProfile;->getDomainSuffices()Ljava/lang/String;

    move-result-object v30

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve$3;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {v10}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v30

    aget v29, v29, v30

    packed-switch v29, :pswitch_data_1

    .line 301
    .end local v10           #p:Landroid/net/vpn/VpnProfile;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mEdmError:Lmotorola/app/admin/EdmErrorCode;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 302
    sget-object v29, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v30, "result sent back to ..."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v15           #resultVpn:Landroid/os/Bundle;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    goto/16 :goto_1

    .line 265
    .restart local v10       #p:Landroid/net/vpn/VpnProfile;
    .restart local v15       #resultVpn:Landroid/os/Bundle;
    :pswitch_2
    const-string v29, "VPN_TYPE"

    const-string v30, "L2TP"

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v29, "L2TP_SECRET_ENABLED"

    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v30

    if-eqz v30, :cond_18

    const-string v30, "true"

    :goto_5
    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v29, "L2TP_SECRET"

    check-cast v10, Landroid/net/vpn/L2tpProfile;

    .end local v10           #p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v10}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v30

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 266
    .restart local v10       #p:Landroid/net/vpn/VpnProfile;
    :cond_18
    const-string v30, "false"

    goto :goto_5

    .line 273
    :pswitch_3
    const-string v29, "VPN_TYPE"

    const-string v30, "L2TP/IPSec PSK"

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v29, "L2TP_SECRET_ENABLED"

    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/net/vpn/L2tpIpsecPskProfile;->isSecretEnabled()Z

    move-result v30

    if-eqz v30, :cond_19

    const-string v30, "true"

    :goto_6
    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v29, "L2TP_SECRET"

    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/net/vpn/L2tpIpsecPskProfile;->getSecretString()Ljava/lang/String;

    move-result-object v30

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v29, "PSK"

    check-cast v10, Landroid/net/vpn/L2tpIpsecPskProfile;

    .end local v10           #p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v10}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v30

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 274
    .restart local v10       #p:Landroid/net/vpn/VpnProfile;
    :cond_19
    const-string v30, "false"

    goto :goto_6

    .line 283
    :pswitch_4
    const-string v29, "VPN_TYPE"

    const-string v30, "L2TP/IPSec CRT"

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v29, "L2TP_SECRET_ENABLED"

    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecProfile;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/net/vpn/L2tpIpsecProfile;->isSecretEnabled()Z

    move-result v30

    if-eqz v30, :cond_1a

    const-string v30, "true"

    :goto_7
    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecProfile;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/net/vpn/L2tpIpsecProfile;->getSecretString()Ljava/lang/String;

    move-result-object v9

    .line 287
    .local v9, l2tp_string:Ljava/lang/String;
    const-string v29, "L2TP_SECRET"

    move-object v0, v15

    move-object/from16 v1, v29

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v29, "CA_CERT"

    move-object v0, v10

    check-cast v0, Landroid/net/vpn/L2tpIpsecProfile;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/net/vpn/L2tpIpsecProfile;->getCaCertificate()Ljava/lang/String;

    move-result-object v30

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v29, "USER_CERT"

    check-cast v10, Landroid/net/vpn/L2tpIpsecProfile;

    .end local v10           #p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v10}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v30

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 284
    .end local v9           #l2tp_string:Ljava/lang/String;
    .restart local v10       #p:Landroid/net/vpn/VpnProfile;
    :cond_1a
    const-string v30, "false"

    goto :goto_7

    .line 295
    :pswitch_5
    const-string v29, "VPN_TYPE"

    const-string v30, "PPTP"

    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v29, "ENCRYPT_ENABLED"

    check-cast v10, Landroid/net/vpn/PptpProfile;

    .end local v10           #p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v10}, Landroid/net/vpn/PptpProfile;->isEncryptionEnabled()Z

    move-result v30

    if-eqz v30, :cond_1b

    const-string v30, "true"

    :goto_8
    move-object v0, v15

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1b
    const-string v30, "false"

    goto :goto_8

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 263
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 310
    sget-object v1, Lcom/android/settings/vpn/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mUnlockAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->isKeyStoreUnlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mUnlockAction:Ljava/lang/Runnable;

    .line 313
    .local v0, action:Ljava/lang/Runnable;
    iput-object v3, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mUnlockAction:Ljava/lang/Runnable;

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 322
    .end local v0           #action:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mUnlockAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->isKeyStoreUnlocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    iput-object v3, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve;->mUnlockAction:Ljava/lang/Runnable;

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->finish()V

    goto :goto_0
.end method

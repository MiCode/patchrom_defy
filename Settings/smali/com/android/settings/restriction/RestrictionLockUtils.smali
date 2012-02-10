.class Lcom/android/settings/restriction/RestrictionLockUtils;
.super Ljava/lang/Object;
.source "RestrictionLockUtils.java"


# static fields
.field public static NO_ERROR:I = 0x0

.field public static final NO_LOCK:I = 0x0

.field public static final RESTRICTION_LOCK:I = 0x1

.field public static RESTRICTION_LOCK_CHANGING:I = 0x0

.field public static RESTRICTION_LOCK_CHECKING:I = 0x0

.field public static RESTRICTION_LOCK_DISABLING:I = 0x0

.field private static final RESTRICTION_LOCK_FILE:Ljava/lang/String; = "/system/restriction_lock.key"

.field public static RESTRICTION_LOCK_SETTING:I = 0x0

.field public static SYSTEM_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RestrictionLockUtils"

.field public static UNINITIALIZED:I

.field public static WRONG_PASSWORD:I

.field private static sPasswodFilename:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/restriction/RestrictionLockUtils;->NO_ERROR:I

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/restriction/RestrictionLockUtils;->UNINITIALIZED:I

    .line 32
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/restriction/RestrictionLockUtils;->SYSTEM_ERROR:I

    .line 33
    const/4 v0, 0x4

    sput v0, Lcom/android/settings/restriction/RestrictionLockUtils;->RESTRICTION_LOCK_SETTING:I

    .line 34
    const/4 v0, 0x5

    sput v0, Lcom/android/settings/restriction/RestrictionLockUtils;->RESTRICTION_LOCK_CHANGING:I

    .line 35
    const/4 v0, 0x6

    sput v0, Lcom/android/settings/restriction/RestrictionLockUtils;->RESTRICTION_LOCK_CHECKING:I

    .line 36
    const/4 v0, 0x7

    sput v0, Lcom/android/settings/restriction/RestrictionLockUtils;->RESTRICTION_LOCK_DISABLING:I

    .line 37
    const/16 v0, 0x8

    sput v0, Lcom/android/settings/restriction/RestrictionLockUtils;->WRONG_PASSWORD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/restriction/RestrictionLockUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    sget-object v0, Lcom/android/settings/restriction/RestrictionLockUtils;->sPasswodFilename:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/restriction_lock.key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/restriction/RestrictionLockUtils;->sPasswodFilename:Ljava/lang/String;

    .line 53
    :cond_0
    return-void
.end method

.method static pinToHash(Ljava/lang/String;)[B
    .locals 5
    .parameter "pin"

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 176
    const/4 v4, 0x0

    .line 185
    :goto_0
    return-object v4

    .line 179
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 181
    .local v3, res:[B
    :try_start_0
    const-string v4, "SHA-1"

    invoke-static {v4}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v1

    .line 182
    .local v1, md:Landroid/security/MessageDigest;
    invoke-virtual {v1, v3}, Landroid/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, hash:[B
    move-object v4, v0

    .line 183
    goto :goto_0

    .line 184
    .end local v0           #hash:[B
    .end local v1           #md:Landroid/security/MessageDigest;
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v4, v3

    .line 185
    goto :goto_0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)I
    .locals 10
    .parameter "pin"

    .prologue
    const-string v9, "RestrictionLockUtils"

    .line 139
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/settings/restriction/RestrictionLockUtils;->sPasswodFilename:Ljava/lang/String;

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v5, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    .line 141
    .local v3, len:I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    const/4 v8, 0x4

    sub-int v4, v7, v8

    .line 142
    .local v4, malloc:I
    new-array v6, v4, [B

    .line 143
    .local v6, stored:[B
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 144
    .local v1, got:I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 145
    if-gtz v1, :cond_0

    .line 146
    const-string v7, "RestrictionLockUtils"

    const-string v8, "The pinlock file is zero lengthed so granting access..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget v7, Lcom/android/settings/restriction/RestrictionLockUtils;->NO_ERROR:I

    .line 163
    .end local v1           #got:I
    .end local v3           #len:I
    .end local v4           #malloc:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    :goto_0
    return v7

    .line 150
    .restart local v1       #got:I
    .restart local v3       #len:I
    .restart local v4       #malloc:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #stored:[B
    :cond_0
    invoke-static {p1}, Lcom/android/settings/restriction/RestrictionLockUtils;->pinToHash(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 152
    sget v7, Lcom/android/settings/restriction/RestrictionLockUtils;->NO_ERROR:I

    goto :goto_0

    .line 156
    :cond_1
    sget v7, Lcom/android/settings/restriction/RestrictionLockUtils;->WRONG_PASSWORD:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 158
    .end local v1           #got:I
    .end local v3           #len:I
    .end local v4           #malloc:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 159
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v7, "RestrictionLockUtils"

    const-string v7, "file not found"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget v7, Lcom/android/settings/restriction/RestrictionLockUtils;->NO_ERROR:I

    goto :goto_0

    .line 161
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 162
    .local v2, ioe:Ljava/io/IOException;
    const-string v7, "RestrictionLockUtils"

    const-string v7, "IO Exception"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget v7, Lcom/android/settings/restriction/RestrictionLockUtils;->NO_ERROR:I

    goto :goto_0
.end method

.method public isRestrictionLockEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/android/settings/restriction/RestrictionLockUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "restriction_lock"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public savePassword(Ljava/lang/String;)I
    .locals 8
    .parameter "pin"

    .prologue
    const-string v7, "Unable to save pin lock to "

    const-string v6, "RestrictionLockUtils"

    .line 105
    invoke-static {p1}, Lcom/android/settings/restriction/RestrictionLockUtils;->pinToHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 109
    .local v1, hash:[B
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v4, Lcom/android/settings/restriction/RestrictionLockUtils;->sPasswodFilename:Ljava/lang/String;

    const-string v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v3, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_0

    .line 112
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 117
    :goto_0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 118
    sget v4, Lcom/android/settings/restriction/RestrictionLockUtils;->NO_ERROR:I

    .line 126
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    :goto_1
    return v4

    .line 114
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 115
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 119
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 121
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v4, "RestrictionLockUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save pin lock to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/restriction/RestrictionLockUtils;->sPasswodFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": file not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget v4, Lcom/android/settings/restriction/RestrictionLockUtils;->SYSTEM_ERROR:I

    goto :goto_1

    .line 123
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 125
    .local v2, ioe:Ljava/io/IOException;
    const-string v4, "RestrictionLockUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save pin lock to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/restriction/RestrictionLockUtils;->sPasswodFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": I/O error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget v4, Lcom/android/settings/restriction/RestrictionLockUtils;->SYSTEM_ERROR:I

    goto :goto_1
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "oldPin"
    .parameter "newPin"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/restriction/RestrictionLockUtils;->checkPassword(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, errorCode:I
    sget v1, Lcom/android/settings/restriction/RestrictionLockUtils;->NO_ERROR:I

    if-ne v1, v0, :cond_0

    .line 93
    invoke-virtual {p0, p2}, Lcom/android/settings/restriction/RestrictionLockUtils;->savePassword(Ljava/lang/String;)I

    move-result v1

    .line 96
    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/android/settings/restriction/RestrictionLockUtils;->WRONG_PASSWORD:I

    goto :goto_0
.end method

.method public savedPasswordExists()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "RestrictionLockUtils"

    .line 72
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v4, Lcom/android/settings/restriction/RestrictionLockUtils;->sPasswodFilename:Ljava/lang/String;

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 74
    .local v0, first:B
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    const/4 v4, 0x1

    .line 81
    .end local v0           #first:B
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    :goto_0
    return v4

    .line 76
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 77
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v4, "RestrictionLockUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 78
    goto :goto_0

    .line 79
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 80
    .local v2, ioe:Ljava/io/IOException;
    const-string v4, "RestrictionLockUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 81
    goto :goto_0
.end method

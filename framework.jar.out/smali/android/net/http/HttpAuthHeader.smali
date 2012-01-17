.class public Landroid/net/http/HttpAuthHeader;
.super Ljava/lang/Object;
.source "HttpAuthHeader.java"


# static fields
.field private static final ALGORITHM_TOKEN:Ljava/lang/String; = "algorithm"

.field public static final BASIC:I = 0x1

.field public static final BASIC_TOKEN:Ljava/lang/String; = "Basic"

.field public static final DIGEST:I = 0x2

.field public static final DIGEST_TOKEN:Ljava/lang/String; = "Digest"

.field private static final NONCE_TOKEN:Ljava/lang/String; = "nonce"

.field private static final OPAQUE_TOKEN:Ljava/lang/String; = "opaque"

.field private static final QOP_TOKEN:Ljava/lang/String; = "qop"

.field private static final REALM_TOKEN:Ljava/lang/String; = "realm"

.field private static final STALE_TOKEN:Ljava/lang/String; = "stale"

.field public static final UNKNOWN:I


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mIsProxy:Z

.field private mNonce:Ljava/lang/String;

.field private mOpaque:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mQop:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field private mScheme:I

.field private mStale:Z

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "header"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/net/http/HttpAuthHeader;->parseHeader(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private parseHeader(Ljava/lang/String;)V
    .locals 2
    .parameter "header"

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/net/http/HttpAuthHeader;->parseScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, parameters:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/net/http/HttpAuthHeader;->parseParameters(Ljava/lang/String;)V

    .end local v0           #parameters:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private parseParameter(Ljava/lang/String;)V
    .locals 5
    .parameter "parameter"

    .prologue
    if-eqz p1, :cond_0

    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, i:I
    if-ltz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .local v1, token:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/http/HttpAuthHeader;->trimDoubleQuotesIfAny(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, value:Ljava/lang/String;
    const-string v3, "realm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Landroid/net/http/HttpAuthHeader;->mRealm:Ljava/lang/String;

    .end local v0           #i:I
    .end local v1           #token:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #i:I
    .restart local v1       #token:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    iget v3, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v1, v2}, Landroid/net/http/HttpAuthHeader;->parseParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "token"
    .parameter "value"

    .prologue
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Landroid/net/http/HttpAuthHeader;->mNonce:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Landroid/net/http/HttpAuthHeader;->parseStale(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "opaque"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Landroid/net/http/HttpAuthHeader;->mOpaque:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "qop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/HttpAuthHeader;->mQop:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "algorithm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/HttpAuthHeader;->mAlgorithm:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseParameters(Ljava/lang/String;)V
    .locals 2
    .parameter "parameters"

    .prologue
    if-eqz p1, :cond_1

    :cond_0
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, i:I
    if-gez v0, :cond_2

    invoke-direct {p0, p1}, Landroid/net/http/HttpAuthHeader;->parseParameter(Ljava/lang/String;)V

    :goto_0
    if-gez v0, :cond_0

    .end local v0           #i:I
    :cond_1
    return-void

    .restart local v0       #i:I
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/http/HttpAuthHeader;->parseParameter(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private parseScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "header"

    .prologue
    if-eqz p1, :cond_2

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, i:I
    if-ltz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .local v1, scheme:Ljava/lang/String;
    const-string v2, "Digest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iput v2, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    const-string v2, "md5"

    iput-object v2, p0, Landroid/net/http/HttpAuthHeader;->mAlgorithm:Ljava/lang/String;

    :cond_0
    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .end local v0           #i:I
    .end local v1           #scheme:Ljava/lang/String;
    :goto_1
    return-object v2

    .restart local v0       #i:I
    .restart local v1       #scheme:Ljava/lang/String;
    :cond_1
    const-string v2, "Basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #scheme:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private parseStale(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/HttpAuthHeader;->mStale:Z

    :cond_0
    return-void
.end method

.method private static trimDoubleQuotesIfAny(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, len:I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    sub-int v1, v0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    sub-int v1, v0, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v0           #len:I
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mOpaque:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mQop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    return v0
.end method

.method public getStale()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/http/HttpAuthHeader;->mStale:Z

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public isBasic()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDigest()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProxy()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/http/HttpAuthHeader;->mIsProxy:Z

    return v0
.end method

.method public isSupportedScheme()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mRealm:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mAlgorithm:Ljava/lang/String;

    const-string v1, "md5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mQop:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mQop:Ljava/lang/String;

    const-string v1, "auth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    iput-object p1, p0, Landroid/net/http/HttpAuthHeader;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setProxy()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/HttpAuthHeader;->mIsProxy:Z

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    iput-object p1, p0, Landroid/net/http/HttpAuthHeader;->mUsername:Ljava/lang/String;

    return-void
.end method

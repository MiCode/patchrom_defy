.class public final Lcom/android/internal/net/DNParser;
.super Ljava/lang/Object;
.source "DNParser.java"


# static fields
.field private static final ERROR_PARSE_ERROR:Ljava/lang/String; = "Failed to parse DN"

.field private static final TAG:Ljava/lang/String; = "DNParser"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .parameter "principal"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/DNParser;->dn:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/DNParser;->length:I

    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->end:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/DNParser;->end:I

    iget-object v2, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/DNParser;->end:I

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/android/internal/net/DNParser;->end:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->cur:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/DNParser;->end:I

    aput-char v4, v0, v1

    :goto_2
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/DNParser;->end:I

    aput-char v4, v0, v1

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->cur:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private getByte(I)I
    .locals 9
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x41

    const/16 v7, 0x39

    const/16 v6, 0x37

    const/16 v4, 0x30

    const-string v5, "Failed to parse DN"

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse DN"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/net/DNParser;->chars:[C

    aget-char v0, v2, p1

    .local v0, b1:I
    if-lt v0, v4, :cond_1

    if-gt v0, v7, :cond_1

    sub-int/2addr v0, v4

    :goto_0
    iget-object v2, p0, Lcom/android/internal/net/DNParser;->chars:[C

    add-int/lit8 v3, p1, 0x1

    aget-char v1, v2, v3

    .local v1, b2:I
    if-lt v1, v4, :cond_4

    if-gt v1, v7, :cond_4

    sub-int/2addr v1, v4

    :goto_1
    shl-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    return v2

    .end local v1           #b2:I
    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x66

    if-gt v0, v2, :cond_2

    const/16 v2, 0x57

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    if-lt v0, v8, :cond_3

    const/16 v2, 0x46

    if-gt v0, v2, :cond_3

    sub-int/2addr v0, v6

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse DN"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v1       #b2:I
    :cond_4
    const/16 v2, 0x61

    if-lt v1, v2, :cond_5

    const/16 v2, 0x66

    if-gt v1, v2, :cond_5

    const/16 v2, 0x57

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_5
    if-lt v1, v8, :cond_6

    const/16 v2, 0x46

    if-gt v1, v2, :cond_6

    sub-int/2addr v1, v6

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse DN"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getEscaped()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->getUTF8()C

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private getUTF8()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x3f

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    invoke-direct {p0, v4}, Lcom/android/internal/net/DNParser;->getByte(I)I

    move-result v3

    .local v3, res:I
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    if-ge v3, v7, :cond_0

    int-to-char v4, v3

    :goto_0
    return v4

    :cond_0
    const/16 v4, 0xc0

    if-lt v3, v4, :cond_7

    const/16 v4, 0xf7

    if-gt v3, v4, :cond_7

    const/16 v4, 0xdf

    if-gt v3, v4, :cond_2

    const/4 v1, 0x1

    .local v1, count:I
    and-int/lit8 v3, v3, 0x1f

    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_6

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4

    :cond_1
    move v4, v6

    goto :goto_0

    .end local v1           #count:I
    .end local v2           #i:I
    :cond_2
    const/16 v4, 0xef

    if-gt v3, v4, :cond_3

    const/4 v1, 0x2

    .restart local v1       #count:I
    and-int/lit8 v3, v3, 0xf

    goto :goto_1

    .end local v1           #count:I
    :cond_3
    const/4 v1, 0x3

    .restart local v1       #count:I
    and-int/lit8 v3, v3, 0x7

    goto :goto_1

    .restart local v2       #i:I
    :cond_4
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    invoke-direct {p0, v4}, Lcom/android/internal/net/DNParser;->getByte(I)I

    move-result v0

    .local v0, b:I
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    and-int/lit16 v4, v0, 0xc0

    if-eq v4, v7, :cond_5

    move v4, v6

    goto :goto_0

    :cond_5
    shl-int/lit8 v4, v3, 0x6

    and-int/lit8 v5, v0, 0x3f

    add-int v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #b:I
    :cond_6
    int-to-char v4, v3

    goto :goto_0

    .end local v1           #count:I
    .end local v2           #i:I
    :cond_7
    move v4, v6

    goto :goto_0
.end method

.method private hexAV()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const-string v8, "Failed to parse DN"

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v4, v5, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to parse DN"

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    :goto_0
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_4

    :cond_1
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v4, p0, Lcom/android/internal/net/DNParser;->end:I

    :cond_2
    iget v4, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int v1, v4, v5

    .local v1, hexLen:I
    const/4 v4, 0x5

    if-lt v1, v4, :cond_3

    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_7

    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to parse DN"

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1           #hexLen:I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_5

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v4, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    :goto_1
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_2

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x41

    if-lt v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x46

    if-gt v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v6, v4, v5

    add-int/lit8 v6, v6, 0x20

    int-to-char v6, v6

    aput-char v6, v4, v5

    :cond_6
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto/16 :goto_0

    .restart local v1       #hexLen:I
    :cond_7
    div-int/lit8 v4, v1, 0x2

    new-array v0, v4, [B

    .local v0, encoded:[B
    const/4 v2, 0x0

    .local v2, i:I
    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v3, v4, 0x1

    .local v3, p:I
    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_8

    invoke-direct {p0, v3}, Lcom/android/internal/net/DNParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v6, p0, Lcom/android/internal/net/DNParser;->beg:I

    invoke-direct {v4, v5, v6, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method private nextAT()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    const-string v4, "Failed to parse DN"

    :goto_0
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    :goto_2
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v0, v1, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->end:I

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_6

    :goto_3
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v0, v1, :cond_6

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    :goto_4
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_b

    :cond_8
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_b

    :cond_a
    iget v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1
.end method

.method private quotedAV()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->end:I

    :goto_0
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    :goto_1
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    :goto_2
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->end:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    iget-object v2, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "attributeType"

    .prologue
    const/4 v6, 0x0

    const-string v3, "Failed to parse DN"

    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/net/DNParser;->beg:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/net/DNParser;->end:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/net/DNParser;->cur:I

    iget-object v3, p0, Lcom/android/internal/net/DNParser;->dn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/DNParser;->chars:[C

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .local v0, attType:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v3, v6

    .end local v0           #attType:Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v0       #attType:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .local v1, attValue:Ljava/lang/String;
    iget v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v3, v4, :cond_1

    move-object v3, v6

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->escapedAV()Ljava/lang/String;

    move-result-object v1

    :goto_1
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->quotedAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->hexAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v3, v4, :cond_3

    move-object v3, v6

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_5

    :cond_4
    iget v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to parse DN"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #attType:Ljava/lang/String;
    .end local v1           #attValue:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, e:Ljava/io/IOException;
    const-string v3, "DNParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse DN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/net/DNParser;->dn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #attType:Ljava/lang/String;
    .restart local v1       #attValue:Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_4

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to parse DN"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method

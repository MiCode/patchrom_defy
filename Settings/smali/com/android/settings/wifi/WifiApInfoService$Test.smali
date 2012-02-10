.class Lcom/android/settings/wifi/WifiApInfoService$Test;
.super Ljava/lang/Object;
.source "WifiApInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Test"
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Test.WifiApInfoService"

.field static TESTlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/wifi/StaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static rn:Ljava/util/Random;

.field static run:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiApInfoService$Test;->TESTlist:Ljava/util/List;

    .line 584
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiApInfoService$Test;->rn:Ljava/util/Random;

    .line 585
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiApInfoService$Test;->run:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    return-void
.end method

.method private static newRandSta()Lcom/motorola/android/wifi/StaInfo;
    .locals 7

    .prologue
    .line 609
    const/4 v4, 0x5

    const/16 v5, 0x14

    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiApInfoService$Test;->randomstring(II)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, mac:Ljava/lang/String;
    const/4 v4, 0x6

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiApInfoService$Test;->randomstring(II)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, ip:Ljava/lang/String;
    const/4 v4, 0x7

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiApInfoService$Test;->randomstring(II)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, name:Ljava/lang/String;
    new-instance v3, Lcom/motorola/android/wifi/StaInfo;

    invoke-direct {v3, v1, v0, v2}, Lcom/motorola/android/wifi/StaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .local v3, s:Lcom/motorola/android/wifi/StaInfo;
    const-string v4, "Test.WifiApInfoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding sta "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/motorola/android/wifi/StaInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-object v3
.end method

.method public static rand(II)I
    .locals 3
    .parameter "lo"
    .parameter "hi"

    .prologue
    .line 592
    sub-int v2, p1, p0

    add-int/lit8 v1, v2, 0x1

    .line 593
    .local v1, n:I
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService$Test;->rn:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int v0, v2, v1

    .line 594
    .local v0, i:I
    if-gez v0, :cond_0

    .line 595
    neg-int v0, v0

    .line 596
    :cond_0
    add-int v2, p0, v0

    return v2
.end method

.method public static randomstring(II)Ljava/lang/String;
    .locals 5
    .parameter "lo"
    .parameter "hi"

    .prologue
    .line 601
    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiApInfoService$Test;->rand(II)I

    move-result v2

    .line 602
    .local v2, n:I
    new-array v0, v2, [B

    .line 603
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 604
    const/16 v3, 0x61

    const/16 v4, 0x7a

    invoke-static {v3, v4}, Lcom/android/settings/wifi/WifiApInfoService$Test;->rand(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :cond_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v3
.end method

.method private static testGenerateRandomStaList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/wifi/StaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    const-string v5, "Test.WifiApInfoService"

    .line 619
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService$Test;->TESTlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/settings/wifi/WifiApInfoService$Test;->run:I

    if-ltz v2, :cond_0

    .line 621
    const-string v2, "Test.WifiApInfoService"

    const-string v2, "No STAs - Create List"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService$Test;->rn:Ljava/util/Random;

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 623
    .local v0, i:I
    :goto_0
    if-lez v0, :cond_2

    .line 624
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService$Test;->TESTlist:Ljava/util/List;

    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService$Test;->newRandSta()Lcom/motorola/android/wifi/StaInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 627
    .end local v0           #i:I
    :cond_0
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService$Test;->TESTlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 628
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService$Test;->rn:Ljava/util/Random;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_1

    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService$Test;->TESTlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 630
    :cond_1
    const/4 v2, 0x1

    sput v2, Lcom/android/settings/wifi/WifiApInfoService$Test;->run:I

    .line 631
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService$Test;->TESTlist:Ljava/util/List;

    sget-object v3, Lcom/android/settings/wifi/WifiApInfoService$Test;->rn:Ljava/util/Random;

    sget-object v4, Lcom/android/settings/wifi/WifiApInfoService$Test;->TESTlist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/wifi/StaInfo;

    .line 632
    .local v1, s:Lcom/motorola/android/wifi/StaInfo;
    const-string v2, "Test.WifiApInfoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed STA "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/motorola/android/wifi/StaInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v1           #s:Lcom/motorola/android/wifi/StaInfo;
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService$Test;->TESTlist:Ljava/util/List;

    return-object v2

    .line 635
    :cond_3
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService$Test;->TESTlist:Ljava/util/List;

    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService$Test;->newRandSta()Lcom/motorola/android/wifi/StaInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

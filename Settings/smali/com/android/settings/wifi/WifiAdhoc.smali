.class public Lcom/android/settings/wifi/WifiAdhoc;
.super Ljava/lang/Object;
.source "WifiAdhoc.java"


# static fields
.field public static final DEFAULT_ADHOC_CHANNEL_NUMBER:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAdhoc;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public static mapChannelNumToFreq(I)I
    .locals 6
    .parameter "channelNum"

    .prologue
    const/16 v5, 0xe

    const/4 v4, 0x1

    .line 96
    const/16 v1, 0x96c

    .line 98
    .local v1, frequency:I
    new-array v0, v5, [I

    .line 99
    .local v0, freq:[I
    const/4 v2, 0x0

    const/16 v3, 0x96c

    aput v3, v0, v2

    .line 100
    const/16 v2, 0x971

    aput v2, v0, v4

    .line 101
    const/4 v2, 0x2

    const/16 v3, 0x976

    aput v3, v0, v2

    .line 102
    const/4 v2, 0x3

    const/16 v3, 0x97b

    aput v3, v0, v2

    .line 103
    const/4 v2, 0x4

    const/16 v3, 0x980

    aput v3, v0, v2

    .line 104
    const/4 v2, 0x5

    const/16 v3, 0x985

    aput v3, v0, v2

    .line 105
    const/4 v2, 0x6

    const/16 v3, 0x98a

    aput v3, v0, v2

    .line 106
    const/4 v2, 0x7

    const/16 v3, 0x98f

    aput v3, v0, v2

    .line 107
    const/16 v2, 0x8

    const/16 v3, 0x994

    aput v3, v0, v2

    .line 108
    const/16 v2, 0x9

    const/16 v3, 0x999

    aput v3, v0, v2

    .line 109
    const/16 v2, 0xa

    const/16 v3, 0x99e

    aput v3, v0, v2

    .line 110
    const/16 v2, 0xb

    const/16 v3, 0x9a3

    aput v3, v0, v2

    .line 111
    const/16 v2, 0xc

    const/16 v3, 0x9a8

    aput v3, v0, v2

    .line 112
    const/16 v2, 0xd

    const/16 v3, 0x9b4

    aput v3, v0, v2

    .line 114
    if-lez p0, :cond_0

    if-gt p0, v5, :cond_0

    .line 115
    sub-int v2, p0, v4

    aget v1, v0, v2

    .line 118
    :cond_0
    return v1
.end method


# virtual methods
.method public updateAdhocChannelNumberPreference(Landroid/preference/ListPreference;)V
    .locals 13
    .parameter "pref"

    .prologue
    const v12, 0x7f0800df

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 63
    iget-object v7, p0, Lcom/android/settings/wifi/WifiAdhoc;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 65
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getNumAllowedChannels()I

    move-result v5

    .line 66
    .local v5, numChannels:I
    if-lez v5, :cond_3

    .line 67
    new-array v2, v5, [Ljava/lang/String;

    .line 68
    .local v2, entries:[Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    .line 70
    .local v3, entryValues:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 71
    add-int/lit8 v7, v4, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 72
    iget-object v7, p0, Lcom/android/settings/wifi/WifiAdhoc;->mContext:Landroid/content/Context;

    new-array v8, v10, [Ljava/lang/Object;

    add-int/lit8 v9, v4, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v12, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    .line 70
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p1, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 79
    iget-object v7, p0, Lcom/android/settings/wifi/WifiAdhoc;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_adhoc_channel_number"

    invoke-static {v7, v8, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, channelNum:I
    if-lt v0, v10, :cond_1

    if-le v0, v5, :cond_2

    .line 81
    :cond_1
    const/4 v0, 0x1

    .line 83
    :cond_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiAdhoc;->mContext:Landroid/content/Context;

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v12, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, channelNumSummary:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    .end local v0           #channelNum:I
    .end local v2           #entries:[Ljava/lang/String;
    .end local v3           #entryValues:[Ljava/lang/String;
    .end local v4           #i:I
    :goto_1
    return-void

    .line 88
    .end local v1           #channelNumSummary:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/wifi/WifiAdhoc;->mContext:Landroid/content/Context;

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v12, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .restart local v1       #channelNumSummary:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1
.end method

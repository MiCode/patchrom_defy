.class public Lcom/android/settings/HDMIOverscanPreference;
.super Landroid/preference/SeekBarPreference;
.source "HDMIOverscanPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static DEFAULT_OVERSCAN:I

.field private static MAXIMUM_OVERSCAN:I

.field private static MINIMUM_OVERSCAN:I

.field private static final SETTINGS_URI:Landroid/net/Uri;

.field private static mOldOscanValue:I

.field private static final mUri:Landroid/net/Uri;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAutomaticAvailable:Z

.field private mContext:Landroid/content/Context;

.field private mHdmiHelper:Lcom/android/settings/HDMIHelper;

.field private mOscanValue:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x5a

    sput v0, Lcom/android/settings/HDMIOverscanPreference;->MINIMUM_OVERSCAN:I

    .line 36
    const/16 v0, 0x64

    sput v0, Lcom/android/settings/HDMIOverscanPreference;->MAXIMUM_OVERSCAN:I

    .line 37
    const/16 v0, 0x5f

    sput v0, Lcom/android/settings/HDMIOverscanPreference;->DEFAULT_OVERSCAN:I

    .line 41
    const-string v0, "content://com.motorola.android.providers.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/HDMIOverscanPreference;->SETTINGS_URI:Landroid/net/Uri;

    .line 44
    const-string v0, "content://com.motorola.android.providers.settings/hdmi_overscan"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/HDMIOverscanPreference;->mUri:Landroid/net/Uri;

    .line 48
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/HDMIOverscanPreference;->mOldOscanValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const-string v0, "HDMIOverscanPreference"

    iput-object v0, p0, Lcom/android/settings/HDMIOverscanPreference;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mOscanValue:I

    .line 50
    iput-object v1, p0, Lcom/android/settings/HDMIOverscanPreference;->mHdmiHelper:Lcom/android/settings/HDMIHelper;

    .line 52
    iput-object v1, p0, Lcom/android/settings/HDMIOverscanPreference;->mContext:Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/android/settings/HDMIOverscanPreference;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/android/settings/HDMIHelper;

    invoke-direct {v0}, Lcom/android/settings/HDMIHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mHdmiHelper:Lcom/android/settings/HDMIHelper;

    .line 59
    iget-object v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mHdmiHelper:Lcom/android/settings/HDMIHelper;

    iget-object v1, p0, Lcom/android/settings/HDMIOverscanPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/HDMIHelper;->initHelper(Landroid/content/Context;)V

    .line 61
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/android/settings/HDMIOverscanPreference;->setDialogLayoutResource(I)V

    .line 62
    const v0, 0x7f02004f

    invoke-virtual {p0, v0}, Lcom/android/settings/HDMIOverscanPreference;->setDialogIcon(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/HDMIOverscanPreference;->readOverscanSetting()I

    move-result v0

    iput v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mOscanValue:I

    .line 65
    iget v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mOscanValue:I

    if-gez v0, :cond_0

    .line 67
    sget v0, Lcom/android/settings/HDMIOverscanPreference;->DEFAULT_OVERSCAN:I

    iput v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mOscanValue:I

    .line 69
    :cond_0
    iget v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mOscanValue:I

    sput v0, Lcom/android/settings/HDMIOverscanPreference;->mOldOscanValue:I

    .line 71
    return-void
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/HDMIOverscanPreference;->SETTINGS_URI:Landroid/net/Uri;

    const-string v3, "name=\'hdmi_overscan\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private readOverscanSetting()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/HDMIOverscanPreference;->SETTINGS_URI:Landroid/net/Uri;

    const-string v3, "name=\'hdmi_overscan\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 128
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 130
    .local v7, value:I
    if-eqz v6, :cond_1

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 134
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_1
    return v7
.end method

.method private saveOverscanSetting(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 117
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "hdmi_overscan"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/HDMIOverscanPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/HDMIOverscanPreference;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 121
    sput p1, Lcom/android/settings/HDMIOverscanPreference;->mOldOscanValue:I

    .line 122
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V

    .line 77
    invoke-static {p1}, Lcom/android/settings/HDMIOverscanPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 78
    iget-object v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Lcom/android/settings/HDMIOverscanPreference;->MAXIMUM_OVERSCAN:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/HDMIOverscanPreference;->mOscanValue:I

    sget v2, Lcom/android/settings/HDMIOverscanPreference;->MINIMUM_OVERSCAN:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mHdmiHelper:Lcom/android/settings/HDMIHelper;

    iget v1, p0, Lcom/android/settings/HDMIOverscanPreference;->mOscanValue:I

    invoke-virtual {v0, v1}, Lcom/android/settings/HDMIHelper;->setOverscan(I)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onDialogClosed(Z)V

    .line 103
    if-nez p1, :cond_0

    .line 105
    sget v0, Lcom/android/settings/HDMIOverscanPreference;->mOldOscanValue:I

    iput v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mOscanValue:I

    .line 106
    iget-object v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mHdmiHelper:Lcom/android/settings/HDMIHelper;

    iget v1, p0, Lcom/android/settings/HDMIOverscanPreference;->mOscanValue:I

    invoke-virtual {v0, v1}, Lcom/android/settings/HDMIHelper;->setOverscan(I)V

    .line 108
    :cond_0
    iget v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mOscanValue:I

    invoke-direct {p0, v0}, Lcom/android/settings/HDMIOverscanPreference;->saveOverscanSetting(I)V

    .line 109
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 87
    div-int/lit8 v0, p2, 0xa

    sget v1, Lcom/android/settings/HDMIOverscanPreference;->MINIMUM_OVERSCAN:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mOscanValue:I

    .line 88
    iget-object v0, p0, Lcom/android/settings/HDMIOverscanPreference;->mHdmiHelper:Lcom/android/settings/HDMIHelper;

    iget v1, p0, Lcom/android/settings/HDMIOverscanPreference;->mOscanValue:I

    invoke-virtual {v0, v1}, Lcom/android/settings/HDMIHelper;->setOverscan(I)V

    .line 89
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 93
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 97
    return-void
.end method

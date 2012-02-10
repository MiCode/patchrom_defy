.class public Lcom/motorola/ringtone/ChooseSoundDialog;
.super Ljava/lang/Object;
.source "ChooseSoundDialog.java"

# interfaces
.implements Lcom/motorola/ringtone/AbstractSetAlarm$OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;
    }
.end annotation


# static fields
.field public static final DIALOG_MUSIC:I = 0x1

.field public static final DIALOG_RINGTONE:I = 0x0

.field public static final ID_COLUMN_INDEX:I = 0x0

.field static final SOUND_PREFERENCES:[I = null

.field public static final START_ALETTPICKER_REQUEST_CODE:I = 0x65

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private mAlertUri:Landroid/net/Uri;

.field private mAudioCursor:Landroid/database/Cursor;

.field private mDialog:Landroid/app/Dialog;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemSelected:Z

.field private mKey:Ljava/lang/String;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlaying:Z

.field private mSetAlarm:Lcom/motorola/ringtone/AbstractSetAlarm;

.field private mSoundSelectedListener:Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;

.field private mSoundType:I

.field private mTempMediaCursorPosition:Ljava/lang/Integer;

.field private mTempUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/ringtone/ChooseSoundDialog;->SOUND_PREFERENCES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xdt 0x7t 0x8t 0x7ft
        0xet 0x7t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/ringtone/AbstractSetAlarm;Landroid/net/Uri;)V
    .locals 2
    .parameter "setAlarm"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 50
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mTempMediaCursorPosition:Ljava/lang/Integer;

    .line 67
    iput-object p2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAlertUri:Landroid/net/Uri;

    .line 68
    iput-object p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSetAlarm:Lcom/motorola/ringtone/AbstractSetAlarm;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSoundType:I

    .line 70
    iput-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mTempUri:Landroid/net/Uri;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/ringtone/ChooseSoundDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/motorola/ringtone/ChooseSoundDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/motorola/ringtone/ChooseSoundDialog;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mTempUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/ringtone/ChooseSoundDialog;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mTempUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/ringtone/ChooseSoundDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mItemSelected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/ringtone/ChooseSoundDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mItemSelected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAlertUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Lcom/motorola/ringtone/ChooseSoundDialog;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAlertUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/motorola/ringtone/ChooseSoundDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSoundType:I

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/ringtone/ChooseSoundDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/ringtone/ChooseSoundDialog;)Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSoundSelectedListener:Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/ringtone/ChooseSoundDialog;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mTempMediaCursorPosition:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/ringtone/ChooseSoundDialog;)Lcom/motorola/ringtone/AbstractSetAlarm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSetAlarm:Lcom/motorola/ringtone/AbstractSetAlarm;

    return-object v0
.end method

.method private createDialog(Landroid/database/Cursor;)V
    .locals 6
    .parameter "mediaCursor"

    .prologue
    .line 148
    move-object v1, p1

    .line 149
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mItemSelected:Z

    .line 150
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSetAlarm:Lcom/motorola/ringtone/AbstractSetAlarm;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSetAlarm:Lcom/motorola/ringtone/AbstractSetAlarm;

    sget-object v4, Lcom/motorola/ringtone/ChooseSoundDialog;->SOUND_PREFERENCES:[I

    iget v5, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSoundType:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/motorola/ringtone/AbstractSetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    .local v0, b:Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_0

    .line 154
    iget-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mTempMediaCursorPosition:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "title"

    new-instance v4, Lcom/motorola/ringtone/ChooseSoundDialog$4;

    invoke-direct {v4, p0, v1}, Lcom/motorola/ringtone/ChooseSoundDialog$4;-><init>(Lcom/motorola/ringtone/ChooseSoundDialog;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/motorola/ringtone/ChooseSoundDialog$3;

    invoke-direct {v3, p0}, Lcom/motorola/ringtone/ChooseSoundDialog$3;-><init>(Lcom/motorola/ringtone/ChooseSoundDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/motorola/ringtone/ChooseSoundDialog$2;

    invoke-direct {v4, p0, v1}, Lcom/motorola/ringtone/ChooseSoundDialog$2;-><init>(Lcom/motorola/ringtone/ChooseSoundDialog;Landroid/database/Cursor;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/motorola/ringtone/ChooseSoundDialog$1;

    invoke-direct {v4, p0}, Lcom/motorola/ringtone/ChooseSoundDialog$1;-><init>(Lcom/motorola/ringtone/ChooseSoundDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mDialog:Landroid/app/Dialog;

    .line 253
    iget-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/motorola/ringtone/ChooseSoundDialog$5;

    invoke-direct {v3, p0, v1}, Lcom/motorola/ringtone/ChooseSoundDialog$5;-><init>(Lcom/motorola/ringtone/ChooseSoundDialog;Landroid/database/Cursor;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 271
    :cond_1
    return-void
.end method

.method private getAlertPosition(Landroid/database/Cursor;)I
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v8, -0x1

    .line 328
    iget-object v5, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAlertUri:Landroid/net/Uri;

    if-nez v5, :cond_0

    move v5, v8

    .line 355
    :goto_0
    return v5

    .line 329
    :cond_0
    if-nez p1, :cond_1

    move v5, v8

    goto :goto_0

    .line 330
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 332
    .local v1, cursorCount:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v8

    .line 334
    goto :goto_0

    .line 338
    :cond_2
    const/4 v0, 0x0

    .line 339
    .local v0, currentUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 340
    .local v3, previousUriString:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 342
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, uriString:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 345
    :cond_3
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 347
    :cond_4
    iget-object v5, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAlertUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v2

    .line 350
    goto :goto_0

    .line 352
    :cond_5
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->move(I)Z

    .line 353
    move-object v3, v4

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4           #uriString:Ljava/lang/String;
    :cond_6
    move v5, v8

    .line 355
    goto :goto_0
.end method

.method private setCursorForMusic()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v9, "\""

    .line 277
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAudioCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAudioCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "title"

    aput-object v0, v2, v5

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 282
    .local v2, MEDIA_COLUMNS:[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v7, mFilterColumns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 284
    const-string v0, "is_music"

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    if-nez v7, :cond_1

    .line 286
    iput-object v4, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAudioCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 288
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v8, sb:Ljava/lang/StringBuilder;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int v6, v0, v5

    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_2

    .line 290
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1 or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 293
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 295
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSetAlarm:Lcom/motorola/ringtone/AbstractSetAlarm;

    invoke-virtual {v0}, Lcom/motorola/ringtone/AbstractSetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAudioCursor:Landroid/database/Cursor;

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 76
    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    .line 77
    if-eqz p3, :cond_0

    .line 78
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 79
    .local v0, uri:Landroid/net/Uri;
    iput-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAlertUri:Landroid/net/Uri;

    .line 80
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSoundSelectedListener:Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;

    iget-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAlertUri:Landroid/net/Uri;

    iget v3, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSoundType:I

    iget-object v4, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;->onSelectedChanged(Landroid/net/Uri;ILjava/lang/String;)V

    .line 82
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSetAlarm:Lcom/motorola/ringtone/AbstractSetAlarm;

    invoke-virtual {v1}, Lcom/motorola/ringtone/AbstractSetAlarm;->removeOnActivityResultListener()V

    .line 85
    :cond_1
    return-void
.end method

.method public setOnSoundSelectedListener(Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;Ljava/lang/String;)V
    .locals 0
    .parameter "soundSelectedListener"
    .parameter "key"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSoundSelectedListener:Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;

    .line 64
    iput-object p2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mKey:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public showDialog(I)V
    .locals 6
    .parameter "dlgType"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    iput p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSoundType:I

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 120
    iput v4, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSoundType:I

    .line 121
    const/4 v1, 0x0

    .line 123
    .local v1, mediaCursor:Landroid/database/Cursor;
    :goto_0
    invoke-direct {p0, v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->getAlertPosition(Landroid/database/Cursor;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mTempMediaCursorPosition:Ljava/lang/Integer;

    .line 124
    iget-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 125
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 126
    :cond_0
    invoke-direct {p0, v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->createDialog(Landroid/database/Cursor;)V

    .line 127
    iget-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 128
    .end local v1           #mediaCursor:Landroid/database/Cursor;
    :goto_1
    return-void

    .line 93
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v3, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAlertUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iget-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSetAlarm:Lcom/motorola/ringtone/AbstractSetAlarm;

    const/16 v3, 0x65

    invoke-virtual {v2, v0, v3}, Lcom/motorola/ringtone/AbstractSetAlarm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    iget-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSetAlarm:Lcom/motorola/ringtone/AbstractSetAlarm;

    invoke-virtual {v2, p0}, Lcom/motorola/ringtone/AbstractSetAlarm;->addOnActivityResultListener(Lcom/motorola/ringtone/AbstractSetAlarm$OnActivityResultListener;)V

    goto :goto_1

    .line 110
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/ringtone/ChooseSoundDialog;->setCursorForMusic()V

    .line 111
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAudioCursor:Landroid/database/Cursor;

    .line 112
    .restart local v1       #mediaCursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mSetAlarm:Lcom/motorola/ringtone/AbstractSetAlarm;

    invoke-virtual {v2}, Lcom/motorola/ringtone/AbstractSetAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopAlarmSound()V
    .locals 3

    .prologue
    .line 304
    iget-boolean v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 306
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z

    .line 307
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAudioCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAudioCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAudioCursor:Landroid/database/Cursor;

    .line 317
    :cond_1
    return-void

    .line 308
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 309
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAlarm.stopPlay()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/ringtone/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopMedia()V
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z

    .line 135
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAudioCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog;->mAudioCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    return-void

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

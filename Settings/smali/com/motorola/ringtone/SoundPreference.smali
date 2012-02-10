.class public Lcom/motorola/ringtone/SoundPreference;
.super Landroid/preference/ListPreference;
.source "SoundPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;
    }
.end annotation


# static fields
.field public static final DIALOG_MUSIC:I = 0x1

.field public static final DIALOG_RINGTONE:I

.field static final SOUND_PREFERENCES:[I


# instance fields
.field private mAlert:Landroid/net/Uri;

.field private mPreSound:Ljava/lang/String;

.field private mSound:Ljava/lang/String;

.field private mSoundChangedListener:Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;

.field private mSoundPreferences:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/ringtone/SoundPreference;->SOUND_PREFERENCES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xdt 0x7t 0x8t 0x7ft
        0xet 0x7t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/ringtone/SoundPreference;->mSoundPreferences:[Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/motorola/ringtone/SoundPreference;->mSoundPreferences:[Ljava/lang/String;

    sget-object v1, Lcom/motorola/ringtone/SoundPreference;->SOUND_PREFERENCES:[I

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 48
    iget-object v0, p0, Lcom/motorola/ringtone/SoundPreference;->mSoundPreferences:[Ljava/lang/String;

    sget-object v1, Lcom/motorola/ringtone/SoundPreference;->SOUND_PREFERENCES:[I

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 49
    const v0, 0x7f020030

    invoke-virtual {p0, v0}, Lcom/motorola/ringtone/SoundPreference;->setDialogIcon(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public getAlert()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/ringtone/SoundPreference;->mAlert:Landroid/net/Uri;

    return-object v0
.end method

.method public getSoundText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/motorola/ringtone/SoundPreference;->mSound:Ljava/lang/String;

    return-object v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/motorola/ringtone/SoundPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/ringtone/SoundPreference;->mPreSound:Ljava/lang/String;

    .line 66
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    .line 67
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/motorola/ringtone/SoundPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, selectedSound:Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/ringtone/SoundPreference;->mPreSound:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/ringtone/SoundPreference;->mSound:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/motorola/ringtone/SoundPreference;->mSound:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/motorola/ringtone/SoundPreference;->setValue(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/motorola/ringtone/SoundPreference;->mSoundChangedListener:Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;

    invoke-virtual {p0, v0}, Lcom/motorola/ringtone/SoundPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/ringtone/SoundPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;->onSoundChanged(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .end local v0           #selectedSound:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/motorola/ringtone/SoundPreference;->mSoundPreferences:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/motorola/ringtone/SoundPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/motorola/ringtone/SoundPreference;->mSoundPreferences:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/motorola/ringtone/SoundPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 60
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 61
    return-void
.end method

.method public setAlert(Landroid/net/Uri;)V
    .locals 0
    .parameter "alert"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/motorola/ringtone/SoundPreference;->mAlert:Landroid/net/Uri;

    .line 92
    return-void
.end method

.method public setOnSoundChangedListener(Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;)V
    .locals 0
    .parameter "soundChangedListener"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/motorola/ringtone/SoundPreference;->mSoundChangedListener:Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;

    .line 54
    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 1
    .parameter "sound"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/motorola/ringtone/SoundPreference;->mSound:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/motorola/ringtone/SoundPreference;->mSound:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/motorola/ringtone/SoundPreference;->setValue(Ljava/lang/String;)V

    .line 84
    return-void
.end method

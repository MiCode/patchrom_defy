.class public Lcom/android/settings/IccNetworkLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccNetworkLockSettings.java"

# interfaces
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final DBG:Z = true

.field private static final DIALOG_ENTERED_LOCK_CODE:Ljava/lang/String; = "dialogLockCode"

.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialogError"

.field private static final DIALOG_ICC_NETWORK_LOCK_CODE:Ljava/lang/String; = "sim_network_lock_code"

.field private static final DIALOG_SHOW_STATE:Ljava/lang/String; = "dialogShowState"

.field private static final EVENT_SIM_NETWORK_LOCK_RESULT:I = 0x64

.field private static final ICC_NETWORK_LOCK_TOGGLER:Ljava/lang/String; = "sim_network_lock_toggle"

.field private static final MAX_LOCK_CODE_LENGTH:I = 0x8

.field private static final MAX_LOCK_CODE_RETRY_LEFT_NUMBER:I = 0xa

.field private static final MIN_LOCK_CODE_LENGTH:I = 0x4

.field private static final MODE_NETWORK_LOCK_EDITOR_HIDE:I = 0x0

.field private static final MODE_NETWORK_LOCK_EDITOR_SHOW:I = 0x1

.field private static final NETWORK_LOCK_STATE:Ljava/lang/String; = "NetworkLockState"

.field private static final TAG:Ljava/lang/String; = "IccNetworkLockSettings"


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIccNetworkLockToggler:Landroid/preference/CheckBoxPreference;

.field private mLockCode:Ljava/lang/String;

.field private mLockCodeEditor:Lcom/android/settings/EditPinPreference;

.field private mNetworkLockPreferState:Z

.field private mNetworkLockState:Z

.field private mNumRetries:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 100
    iput v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mDialogState:I

    .line 124
    iput v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mNumRetries:I

    .line 128
    new-instance v0, Lcom/android/settings/IccNetworkLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccNetworkLockSettings$1;-><init>(Lcom/android/settings/IccNetworkLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/IccNetworkLockSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/settings/IccNetworkLockSettings;->mNumRetries:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/IccNetworkLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/IccNetworkLockSettings;->iccGetNetworkLockRetryLeft(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/IccNetworkLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/IccNetworkLockSettings;->iccNetworkLockStateChanged(Z)V

    return-void
.end method

.method private checkLockCodeFormat(Ljava/lang/String;)Z
    .locals 3
    .parameter "lockCode"

    .prologue
    .line 415
    const/4 v0, 0x1

    .line 417
    .local v0, rtn_val:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 421
    :cond_0
    const/4 v0, 0x0

    .line 424
    :cond_1
    return v0
.end method

.method private iccGetNetworkLockRetryLeft(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 498
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 502
    .local v1, int_array:[I
    array-length v2, v1

    if-lez v2, :cond_0

    .line 504
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcom/android/settings/IccNetworkLockSettings;->mNumRetries:I

    .line 507
    .end local v1           #int_array:[I
    :cond_0
    return-void
.end method

.method private iccNetworkLockStateChanged(Z)V
    .locals 6
    .parameter "success"

    .prologue
    const/4 v5, 0x0

    .line 446
    if-eqz p1, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/android/settings/IccNetworkLockSettings;->isIccNetworkLockEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockState:Z

    .line 450
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mIccNetworkLockToggler:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockState:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 451
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0801e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 474
    :goto_0
    return-void

    .line 456
    :cond_0
    const-string v1, "IccNetworkLockSettings"

    const-string v2, " iccNetworkLockStateChanged() ==> catch message with error status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mNumRetries:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mNumRetries:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0801e7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/IccNetworkLockSettings;->mNumRetries:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08057a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 470
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0801e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private isIccNetworkLockEnabled()Z
    .locals 4

    .prologue
    .line 482
    const/4 v0, 0x1

    .line 484
    .local v0, lockEnabled:Z
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccNetworkLockEnabled()Z

    move-result v0

    .line 485
    const-string v1, "IccNetworkLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isIccNetworkLockEnabled() ==>current network lock state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return v0
.end method

.method private resetDialogState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mError:Ljava/lang/String;

    .line 433
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCode:Ljava/lang/String;

    .line 434
    invoke-direct {p0}, Lcom/android/settings/IccNetworkLockSettings;->setDialogValues()V

    .line 435
    iput-boolean v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockPreferState:Z

    .line 436
    iput v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mDialogState:I

    .line 438
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .prologue
    .line 356
    const-string v0, ""

    .line 359
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 364
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCodeEditor:Lcom/android/settings/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockState:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/IccNetworkLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0801e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0801df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccNetworkLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mError:Ljava/lang/String;

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCodeEditor:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCodeEditor:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 364
    :cond_1
    iget-object v2, p0, Lcom/android/settings/IccNetworkLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0801e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private showLockCodeEditor()V
    .locals 2

    .prologue
    .line 340
    iget v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mDialogState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 342
    const-string v0, "IccNetworkLockSettings"

    const-string v1, " showLockCodeEditor() ==> try to show pin dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/android/settings/IccNetworkLockSettings;->setDialogValues()V

    .line 344
    iget-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCodeEditor:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    .line 346
    :cond_0
    return-void
.end method

.method private tryChangeIccNetworkLockState()V
    .locals 4

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    :goto_0
    return-void

    .line 400
    :cond_0
    const-string v1, "IccNetworkLockSettings"

    const-string v2, " tryChangeIccNetworkLockState() ==> call iccCard API to change network lock state "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 404
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockPreferState:Z

    iget-object v3, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccNetworkLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const-string v3, "dialogShowState"

    .line 167
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const-string v0, "IccNetworkLockSettings"

    const-string v1, " onCreate() ==> start. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/IccNetworkLockSettings;->finish()V

    .line 216
    :goto_0
    return-void

    .line 179
    :cond_0
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/android/settings/IccNetworkLockSettings;->addPreferencesFromResource(I)V

    .line 182
    const-string v0, "sim_network_lock_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccNetworkLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mIccNetworkLockToggler:Landroid/preference/CheckBoxPreference;

    .line 185
    const-string v0, "sim_network_lock_code"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccNetworkLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCodeEditor:Lcom/android/settings/EditPinPreference;

    .line 187
    iget-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCodeEditor:Lcom/android/settings/EditPinPreference;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCodeEditor:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 194
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/IccNetworkLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mRes:Landroid/content/res/Resources;

    .line 200
    if-eqz p1, :cond_2

    const-string v0, "dialogShowState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const-string v0, "dialogShowState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mDialogState:I

    .line 203
    const-string v0, "dialogLockCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCode:Ljava/lang/String;

    .line 204
    const-string v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mError:Ljava/lang/String;

    .line 205
    const-string v0, "NetworkLockState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockState:Z

    .line 209
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockPreferState:Z

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/IccNetworkLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCodeEditor:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/IccNetworkLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    goto :goto_0
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 3
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, validCodeFormat:Z
    iget v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mDialogState:I

    if-nez v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 307
    :cond_0
    if-nez p2, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/android/settings/IccNetworkLockSettings;->resetDialogState()V

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCode:Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/IccNetworkLockSettings;->checkLockCodeFormat(Ljava/lang/String;)Z

    move-result v0

    .line 318
    if-nez v0, :cond_2

    .line 321
    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0801e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mError:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Lcom/android/settings/IccNetworkLockSettings;->showLockCodeEditor()V

    goto :goto_0

    .line 327
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/IccNetworkLockSettings;->tryChangeIccNetworkLockState()V

    .line 330
    invoke-direct {p0}, Lcom/android/settings/IccNetworkLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 273
    iget-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mIccNetworkLockToggler:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mIccNetworkLockToggler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockPreferState:Z

    .line 279
    iget-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mIccNetworkLockToggler:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockPreferState:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    iput v2, p0, Lcom/android/settings/IccNetworkLockSettings;->mDialogState:I

    .line 284
    invoke-direct {p0}, Lcom/android/settings/IccNetworkLockSettings;->showLockCodeEditor()V

    .line 287
    :cond_0
    return v2

    .line 279
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 227
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 230
    invoke-direct {p0}, Lcom/android/settings/IccNetworkLockSettings;->isIccNetworkLockEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockState:Z

    .line 232
    const-string v0, "IccNetworkLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onResume() ==> mNetworkLockState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mIccNetworkLockToggler:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 238
    iget v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mDialogState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/android/settings/IccNetworkLockSettings;->showLockCodeEditor()V

    .line 242
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCodeEditor:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "dialogShowState"

    iget v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v0, "dialogLockCode"

    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mLockCodeEditor:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "NetworkLockState"

    iget-boolean v1, p0, Lcom/android/settings/IccNetworkLockSettings;->mNetworkLockState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    :cond_0
    return-void
.end method

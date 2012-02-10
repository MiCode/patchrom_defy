.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Activity;
.source "MasterClear.java"


# static fields
.field private static final BKP_SAMPLE_SIZE_100M:I = 0x6666666

.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final SHREDDING_SEC_PER_100M:I = 0x1b

.field private static final SILENT_SETUP_BUILD_PROPERTY:Ljava/lang/String; = "ro.mot.setuptype"

.field private static final TAG:Ljava/lang/String; = "MasterClear"

.field private static mEmmcEnabled:Z


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalInternalStorageEraseDesc:Landroid/widget/TextView;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInternalStorageErase:Landroid/widget/CheckBox;

.field private mInternalStorageEraseContainer:Landroid/view/View;

.field private mInternalStorageEraseDesc:Landroid/widget/TextView;

.field private mMasterClearBlurIdReminder:Landroid/widget/TextView;

.field private mMasterClearDesc:Landroid/widget/TextView;

.field private mSdCardEraseCheckbox:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/MasterClear;->mEmmcEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorageErase:Landroid/widget/CheckBox;

    .line 96
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorageEraseContainer:Landroid/view/View;

    .line 97
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorageEraseDesc:Landroid/widget/TextView;

    .line 98
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mMasterClearDesc:Landroid/widget/TextView;

    .line 99
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalInternalStorageEraseDesc:Landroid/widget/TextView;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/MasterClear;->mBatteryLevel:I

    .line 112
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 143
    new-instance v0, Lcom/android/settings/MasterClear$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    new-instance v0, Lcom/android/settings/MasterClear$3;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/settings/MasterClear;->mEmmcEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorageErase:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/settings/MasterClear;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/MasterClear;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/settings/MasterClear;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishFinalConfirmationState()V

    return-void
.end method

.method private checkStorageState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 407
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mSdCardEraseCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorageErase:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mSdCardEraseCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 411
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mSdCardEraseCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 412
    sget-boolean v0, Lcom/android/settings/MasterClear;->mEmmcEnabled:Z

    if-nez v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorageErase:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorageEraseDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorageErase:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorageEraseContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mMasterClearDesc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mMasterClearDesc:Landroid/widget/TextView;

    const v1, 0x7f0801a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private establishFinalConfirmationState()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 222
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mSdCardEraseCheckbox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mSdCardEraseCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030026

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    .line 224
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    const v5, 0x7f0c007f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 226
    .local v3, timeText:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->getEstimatedShreddingTime()I

    move-result v2

    .line 227
    .local v2, time:I
    if-lez v2, :cond_2

    .line 228
    rem-int/lit8 v1, v2, 0x3c

    .line 229
    .local v1, secs:I
    div-int/lit8 v0, v2, 0x3c

    .line 230
    .local v0, mins:I
    const v4, 0x7f08012c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/MasterClear;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .end local v0           #mins:I
    .end local v1           #secs:I
    .end local v2           #time:I
    .end local v3           #timeText:Landroid/widget/TextView;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    const v5, 0x7f0c0074

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mFinalButton:Landroid/widget/Button;

    .line 239
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mFinalButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/MasterClear;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    const v5, 0x7f0c0073

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mFinalInternalStorageEraseDesc:Landroid/widget/TextView;

    .line 243
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mFinalInternalStorageEraseDesc:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 244
    sget-boolean v4, Lcom/android/settings/MasterClear;->mEmmcEnabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mInternalStorageErase:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 245
    :cond_0
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mFinalInternalStorageEraseDesc:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :cond_1
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/settings/MasterClear;->setEncryptionMsgVisibility(Landroid/view/View;)V

    .line 250
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/MasterClear;->setContentView(Landroid/view/View;)V

    .line 251
    return-void

    .line 232
    .restart local v2       #time:I
    .restart local v3       #timeText:Landroid/widget/TextView;
    :cond_2
    const v4, 0x7f08012d

    invoke-virtual {p0, v4}, Lcom/android/settings/MasterClear;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    .end local v2           #time:I
    .end local v3           #timeText:Landroid/widget/TextView;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030024

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const-string v8, "ro.mot.setuptype"

    .line 266
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 267
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030025

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    .line 268
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v6, 0x7f0c007e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 270
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v6, 0x7f0c007b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 273
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v6, 0x7f0c007c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 275
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v6, Lcom/android/settings/MasterClear$4;

    invoke-direct {v6, p0}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v6, 0x7f0c007d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mSdCardEraseCheckbox:Landroid/widget/CheckBox;

    .line 286
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v6, 0x7f0c0075

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mMasterClearDesc:Landroid/widget/TextView;

    .line 287
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v6, 0x7f0c0077

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mInternalStorageEraseDesc:Landroid/widget/TextView;

    .line 289
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v6, 0x7f0c0079

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mInternalStorageErase:Landroid/widget/CheckBox;

    .line 290
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v6, 0x7f0c0078

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mInternalStorageEraseContainer:Landroid/view/View;

    .line 291
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInternalStorageEraseContainer:Landroid/view/View;

    new-instance v6, Lcom/android/settings/MasterClear$5;

    invoke-direct {v6, p0}, Lcom/android/settings/MasterClear$5;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v6, 0x7f0c0076

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/MasterClear;->mMasterClearBlurIdReminder:Landroid/widget/TextView;

    .line 301
    const-string v5, "ro.mot.setuptype"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ro.mot.setuptype"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ro.mot.setuptype"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ro.mot.setuptype"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 305
    :cond_0
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mMasterClearBlurIdReminder:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->checkStorageState()V

    .line 338
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/settings/MasterClear;->setEncryptionMsgVisibility(Landroid/view/View;)V

    .line 339
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/settings/MasterClear;->setContentView(Landroid/view/View;)V

    .line 340
    return-void

    .line 307
    :cond_2
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 310
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v5, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v2, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 311
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v3, 0x0

    .line 313
    .local v3, message:Ljava/lang/String;
    const/4 v4, 0x0

    .line 314
    .local v4, motoblurId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 315
    .local v0, accountlength:I
    if-eqz v1, :cond_3

    .line 316
    array-length v0, v1

    .line 318
    :cond_3
    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    .line 319
    const/4 v5, 0x1

    sub-int v5, v0, v5

    aget-object v5, v1, v5

    const-string v6, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_EMAIL"

    invoke-virtual {v2, v5, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    if-eqz v4, :cond_4

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f08017a

    invoke-virtual {p0, v6}, Lcom/android/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080179

    invoke-virtual {p0, v6}, Lcom/android/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    :cond_4
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mMasterClearBlurIdReminder:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 328
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mMasterClearBlurIdReminder:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 329
    :cond_5
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mMasterClearBlurIdReminder:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    .line 330
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mMasterClearBlurIdReminder:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getEstimatedShreddingTime()I
    .locals 6

    .prologue
    .line 388
    const/4 v3, 0x0

    .line 390
    .local v3, totalTime:I
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 391
    .local v1, path:Ljava/io/File;
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 392
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-float v0, v4

    .line 393
    .local v0, diskSize:F
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    .line 394
    const/high16 v4, 0x41d8

    mul-float/2addr v4, v0

    const v5, 0x4ccccccd

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 397
    .end local v0           #diskSize:F
    .end local v1           #path:Ljava/io/File;
    .end local v2           #stat:Landroid/os/StatFs;
    :goto_0
    if-gtz v3, :cond_0

    .line 398
    const/4 v3, 0x1

    .line 400
    :cond_0
    return v3

    .line 395
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private isSdCardPresent()Z
    .locals 4

    .prologue
    .line 430
    const-string v2, "ro.mot.master_clear.shredsd"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, enabled:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, status:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bad_removal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 166
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0804ed

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0804ee

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private setEncryptionMsgVisibility(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.motorola.android.encryption.settings"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 451
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const v2, 0x7f0c0072

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 452
    .local v1, textView:Landroid/widget/TextView;
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 454
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 176
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishFinalConfirmationState()V

    goto :goto_0

    .line 184
    :cond_1
    if-nez p2, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->finish()V

    goto :goto_0

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 380
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 344
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 346
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    .line 347
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    .line 348
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mSdCardEraseCheckbox:Landroid/widget/CheckBox;

    .line 349
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    .line 353
    const-string v0, "ro.mot.internalsdcard"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/MasterClear;->mEmmcEnabled:Z

    .line 354
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 355
    return-void

    :cond_0
    move v0, v1

    .line 353
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 370
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 374
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 360
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MasterClear;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    return-void
.end method

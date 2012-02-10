.class public Lcom/android/settings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFormat"


# instance fields
.field private has_emmc_support:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalDes:Landroid/widget/TextView;

.field private mFinalView:Landroid/view/View;

.field private mFormatScreen:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateDes:Landroid/widget/TextView;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field mLocText:Ljava/lang/String;

.field private mSdId:I

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MediaFormat;->has_emmc_support:Z

    .line 82
    new-instance v0, Lcom/android/settings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$1;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance v0, Lcom/android/settings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$2;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormat;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/settings/MediaFormat;->has_emmc_support:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MediaFormat;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/settings/MediaFormat;->mSdId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/MediaFormat;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 162
    iput v4, p0, Lcom/android/settings/MediaFormat;->mFormatScreen:I

    .line 164
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030027

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 166
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0c0081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 189
    const-string v0, ""

    .line 190
    .local v0, des:Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/MediaFormat;->mSdId:I

    if-nez v1, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mTitle:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0c0080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalDes:Landroid/widget/TextView;

    .line 201
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalDes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .end local v0           #des:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 207
    return-void

    .line 193
    .restart local v0       #des:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/android/settings/MediaFormat;->mSdId:I

    if-ne v4, v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mTitle:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 5

    .prologue
    .line 223
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/MediaFormat;->mFormatScreen:I

    .line 225
    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030028

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 227
    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v3, 0x7f0c0083

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 254
    const-string v1, ""

    .line 255
    .local v1, des:Ljava/lang/String;
    const-string v0, ""

    .line 256
    .local v0, buttonText:Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/MediaFormat;->mSdId:I

    if-nez v2, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08018e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MediaFormat;->mTitle:Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080190

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormat;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v3, 0x7f0c0082

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/MediaFormat;->mInitiateDes:Landroid/widget/TextView;

    .line 270
    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mInitiateDes:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .end local v0           #buttonText:Ljava/lang/String;
    .end local v1           #des:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 278
    return-void

    .line 260
    .restart local v0       #buttonText:Ljava/lang/String;
    .restart local v1       #des:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/settings/MediaFormat;->mSdId:I

    if-ne v2, v3, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MediaFormat;->mTitle:Ljava/lang/String;

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 6
    .parameter "request"

    .prologue
    .line 119
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0804f6

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/MediaFormat;->mLocText:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 137
    :cond_1
    if-nez p2, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedState"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "sd"

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 284
    iput-object v7, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 285
    iput-object v7, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 286
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 288
    if-eqz p1, :cond_1

    const-string v7, "sd"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    :goto_0
    iput v7, p0, Lcom/android/settings/MediaFormat;->mSdId:I

    .line 291
    if-eqz p1, :cond_2

    const-string v7, "FormatScreen"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    :goto_1
    iput v7, p0, Lcom/android/settings/MediaFormat;->mFormatScreen:I

    .line 295
    const/4 v3, 0x0

    .line 297
    .local v3, mountService:Landroid/os/storage/IMountService;
    const-string v7, "mount"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 298
    .local v5, service:Landroid/os/IBinder;
    if-eqz v5, :cond_3

    .line 299
    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    .line 304
    :goto_2
    if-eqz v3, :cond_4

    .line 306
    :try_start_0
    invoke-interface {v3}, Landroid/os/storage/IMountService;->getVolumeList()[Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, volumes:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 308
    .local v4, s:Ljava/lang/String;
    const-string v7, "/mnt/sdcard-ext"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 309
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/MediaFormat;->has_emmc_support:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 288
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #mountService:Landroid/os/storage/IMountService;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #service:Landroid/os/IBinder;
    .end local v6           #volumes:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "sd"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    goto :goto_0

    :cond_2
    move v7, v9

    .line 291
    goto :goto_1

    .line 301
    .restart local v3       #mountService:Landroid/os/storage/IMountService;
    .restart local v5       #service:Landroid/os/IBinder;
    :cond_3
    const-string v7, "MediaFormat"

    const-string v8, "Can\'t get mount service"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 312
    :catch_0
    move-exception v7

    .line 318
    :cond_4
    iget v7, p0, Lcom/android/settings/MediaFormat;->mFormatScreen:I

    if-ne v7, v10, :cond_5

    .line 319
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    .line 324
    :goto_4
    return-void

    .line 321
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    goto :goto_4
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 346
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 330
    const-string v0, "FormatScreen"

    iget v1, p0, Lcom/android/settings/MediaFormat;->mFormatScreen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 331
    const-string v0, "sd"

    iget v1, p0, Lcom/android/settings/MediaFormat;->mSdId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 332
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 333
    return-void
.end method

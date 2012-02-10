.class public Lcom/android/settings/ChoosePinLock;
.super Landroid/app/Activity;
.source "ChoosePinLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MIN_CHARS:Ljava/lang/String; = "min_chars"

.field public static final SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field public static final TAG:Ljava/lang/String; = "ChoosePinLock"


# instance fields
.field private mAsAlphaNumericScreen:Z

.field private mCancelButton:Landroid/widget/Button;

.field protected mChooseNewLockPinListener:Lcom/motorola/internal/widget/LockPinView$OnPinListener;

.field private mEnterButton:Landroid/widget/Button;

.field private mFirstPin:Ljava/lang/String;

.field mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mIsAlphaRequire:Z

.field private mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

.field private mLockPinView:Lcom/motorola/internal/widget/LockPinView;

.field private mMinPin:I

.field private mMinSpecialChars:I

.field private mPasscodeButtons:Landroid/view/ViewGroup;

.field private mPinText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/android/settings/ChoosePinLock$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChoosePinLock$1;-><init>(Lcom/android/settings/ChoosePinLock;)V

    iput-object v0, p0, Lcom/android/settings/ChoosePinLock;->mChooseNewLockPinListener:Lcom/motorola/internal/widget/LockPinView$OnPinListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChoosePinLock;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/ChoosePinLock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/ChoosePinLock;)Lcom/motorola/internal/widget/LockPinView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ChoosePinLock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/ChoosePinLock;->mMinPin:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/ChoosePinLock;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/ChoosePinLock;->saveChosenPinAndFinish(Ljava/lang/String;)V

    return-void
.end method

.method private saveChosenPinAndFinish(Ljava/lang/String;)V
    .locals 3
    .parameter "pin"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, p1}, Lcom/motorola/internal/widget/LockPinUtils;->saveLockPin(Ljava/lang/String;)V

    .line 186
    const v0, 0x10403bf

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 189
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChoosePinLock;->setResult(I)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v2}, Lcom/motorola/internal/widget/LockPinUtils;->setPinEnabled(Z)V

    .line 192
    iget-boolean v0, p0, Lcom/android/settings/ChoosePinLock;->mAsAlphaNumericScreen:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v2}, Lcom/motorola/internal/widget/LockPinUtils;->setAlphaNuricLockEnabled(I)V

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChoosePinLock;->finish()V

    .line 198
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v1}, Lcom/motorola/internal/widget/LockPinUtils;->setAlphaNuricLockEnabled(I)V

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 246
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 252
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 253
    return-void
.end method

.method private showErrorPasscodeMisMatch()V
    .locals 3

    .prologue
    .line 259
    const v2, 0x10403c8

    invoke-virtual {p0, v2}, Lcom/android/settings/ChoosePinLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, title:Ljava/lang/String;
    const v2, 0x10403c9

    invoke-virtual {p0, v2}, Lcom/android/settings/ChoosePinLock;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, message:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/settings/ChoosePinLock;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method private verifyPasscodeAgainstPolicy(Ljava/lang/String;)Z
    .locals 11
    .parameter "pin"

    .prologue
    const v9, 0x10403ca

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, " "

    .line 223
    const/4 v2, 0x1

    .line 226
    .local v2, return_result:Z
    iget-object v4, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v4, p1}, Lcom/motorola/internal/widget/LockPinUtils;->verifyPassCodeSatisfyPolicy(Ljava/lang/String;)I

    move-result v1

    .line 228
    .local v1, result:I
    iget-object v4, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    if-eqz v1, :cond_0

    .line 229
    const/4 v2, 0x0

    .line 230
    iget-boolean v4, p0, Lcom/android/settings/ChoosePinLock;->mIsAlphaRequire:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/settings/ChoosePinLock;->mMinSpecialChars:I

    iget-object v5, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    if-lez v4, :cond_1

    .line 231
    const v4, 0x10403c5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/ChoosePinLock;->mMinPin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/settings/ChoosePinLock;->mMinSpecialChars:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ChoosePinLock;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, message:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/android/settings/ChoosePinLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    const v4, 0x10403c7

    invoke-virtual {p0, v4}, Lcom/android/settings/ChoosePinLock;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, title:Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/android/settings/ChoosePinLock;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v0           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_0
    return v2

    .line 233
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/ChoosePinLock;->mIsAlphaRequire:Z

    if-eqz v4, :cond_2

    .line 234
    const v4, 0x10403c4

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/ChoosePinLock;->mMinPin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ChoosePinLock;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .restart local v0       #message:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/android/settings/ChoosePinLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    .end local v0           #message:Ljava/lang/String;
    :cond_2
    const v4, 0x10403c6

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/ChoosePinLock;->mMinPin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ChoosePinLock;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected confirmPin()V
    .locals 3

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmPinLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const/16 v1, 0x37

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChoosePinLock;->startActivityForResult(Landroid/content/Intent;I)V

    .line 274
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 282
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 284
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ChoosePinLock;->setResult(I)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/ChoosePinLock;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 300
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/settings/ChoosePinLock;->startActivity(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const-string v3, ""

    .line 172
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/ChoosePinLock;->setResult(I)V

    .line 174
    const-string v1, ""

    iput-object v3, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/ChoosePinLock;->finish()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock;->mEnterButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, pin:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/ChoosePinLock;->mPinText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/settings/ChoosePinLock;->onPasscodeDetected(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0c0018

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/android/settings/ChoosePinLock;->setContentView(I)V

    .line 126
    new-instance v0, Lcom/motorola/internal/widget/LockPinUtils;

    invoke-direct {v0, p0}, Lcom/motorola/internal/widget/LockPinUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    .line 127
    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Lcom/android/settings/ChoosePinLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/internal/widget/LockPinView;

    iput-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    .line 128
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    iget-object v1, p0, Lcom/android/settings/ChoosePinLock;->mChooseNewLockPinListener:Lcom/motorola/internal/widget/LockPinView$OnPinListener;

    invoke-virtual {v0, v1}, Lcom/motorola/internal/widget/LockPinView;->setOnPinListener(Lcom/motorola/internal/widget/LockPinView$OnPinListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    const v1, 0x10201af

    invoke-virtual {v0, v1}, Lcom/motorola/internal/widget/LockPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-virtual {p0, v6}, Lcom/android/settings/ChoosePinLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChoosePinLock;->mHeaderTextView:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/android/settings/ChoosePinLock;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChoosePinLock;->mHeaderText:Ljava/lang/CharSequence;

    .line 132
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ChoosePinLock;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0}, Lcom/motorola/internal/widget/LockPinUtils;->getMinPinLen()I

    move-result v0

    iput v0, p0, Lcom/android/settings/ChoosePinLock;->mMinPin:I

    .line 134
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    const v1, 0x10403b4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/ChoosePinLock;->mMinPin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ChoosePinLock;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/internal/widget/LockPinView;->setPinHint(Ljava/lang/CharSequence;)V

    .line 136
    const v0, 0x7f0c0087

    invoke-virtual {p0, v0}, Lcom/android/settings/ChoosePinLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ChoosePinLock;->mPinText:Landroid/widget/EditText;

    .line 137
    const v0, 0x7f0c008a

    invoke-virtual {p0, v0}, Lcom/android/settings/ChoosePinLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChoosePinLock;->mEnterButton:Landroid/widget/Button;

    .line 138
    const v0, 0x7f0c0089

    invoke-virtual {p0, v0}, Lcom/android/settings/ChoosePinLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChoosePinLock;->mCancelButton:Landroid/widget/Button;

    .line 139
    const v0, 0x7f0c0088

    invoke-virtual {p0, v0}, Lcom/android/settings/ChoosePinLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/ChoosePinLock;->mPasscodeButtons:Landroid/view/ViewGroup;

    .line 140
    invoke-virtual {p0, v6}, Lcom/android/settings/ChoosePinLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChoosePinLock;->mHeaderTextView:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mEnterButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0}, Lcom/motorola/internal/widget/LockPinUtils;->isDevicePinAlphanumericRequired()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ChoosePinLock;->mIsAlphaRequire:Z

    .line 146
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0}, Lcom/motorola/internal/widget/LockPinUtils;->getDevicePinMinComplexChars()I

    move-result v0

    iput v0, p0, Lcom/android/settings/ChoosePinLock;->mMinSpecialChars:I

    .line 147
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mPinText:Landroid/widget/EditText;

    const v1, 0x10403b5

    invoke-virtual {p0, v1}, Lcom/android/settings/ChoosePinLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0}, Lcom/motorola/internal/widget/LockPinUtils;->isDevicePinAlphanumericRequired()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ChoosePinLock;->mAsAlphaNumericScreen:Z

    .line 150
    iget-boolean v0, p0, Lcom/android/settings/ChoosePinLock;->mAsAlphaNumericScreen:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    invoke-virtual {v0, v5}, Lcom/motorola/internal/widget/LockPinView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mPasscodeButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mEnterButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0}, Lcom/motorola/internal/widget/LockPinUtils;->savedPinExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/ChoosePinLock;->confirmPin()V

    .line 168
    :cond_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    invoke-virtual {v0, v4}, Lcom/motorola/internal/widget/LockPinView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mPasscodeButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mEnterButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPasscodeDetected(Ljava/lang/String;)V
    .locals 5
    .parameter "pin"

    .prologue
    const/16 v4, 0x10

    const-string v2, ""

    .line 201
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mPinText:Landroid/widget/EditText;

    const v1, 0x10403be

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ChoosePinLock;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, ""

    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/ChoosePinLock;->verifyPasscodeAgainstPolicy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    iput-object p1, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mPinText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mPinText:Landroid/widget/EditText;

    const v1, 0x10403b6

    invoke-virtual {p0, v1}, Lcom/android/settings/ChoosePinLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 210
    const-string v0, ""

    iput-object v2, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/settings/ChoosePinLock;->saveChosenPinAndFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/android/settings/ChoosePinLock;->showErrorPasscodeMisMatch()V

    .line 215
    const-string v0, ""

    iput-object v2, p0, Lcom/android/settings/ChoosePinLock;->mFirstPin:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mPinText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/ChoosePinLock;->mPinText:Landroid/widget/EditText;

    const v1, 0x10403b5

    invoke-virtual {p0, v1}, Lcom/android/settings/ChoosePinLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

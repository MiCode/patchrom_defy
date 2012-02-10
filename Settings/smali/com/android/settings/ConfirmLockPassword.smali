.class public Lcom/android/settings/ConfirmLockPassword;
.super Landroid/app/Activity;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L


# instance fields
.field private mCreationHardKeyboardHidden:I

.field private mEndHeaderText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderImage:Landroid/widget/ImageView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mShowKeyboardView:Z

.field private mlidKeyboardAccessibility:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPassword;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->handleNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmLockPassword;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNext()V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, pin:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPassword;->setResult(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->finish()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const v1, 0x7f08052f

    invoke-direct {p0, v1}, Lcom/android/settings/ConfirmLockPassword;->showError(I)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 11

    .prologue
    const/high16 v6, 0x2

    const/16 v10, 0x8

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 64
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    .line 65
    .local v4, storedQuality:I
    const v5, 0x7f03000e

    invoke-virtual {p0, v5}, Lcom/android/settings/ConfirmLockPassword;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 71
    new-instance v2, Lcom/android/settings/ConfirmLockPassword$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ConfirmLockPassword$1;-><init>(Lcom/android/settings/ConfirmLockPassword;)V

    .line 82
    .local v2, mTextKeyListener:Landroid/view/View$OnKeyListener;
    const v5, 0x7f0c001c

    invoke-virtual {p0, v5}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    .line 83
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 85
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 86
    const v5, 0x7f0c001e

    invoke-virtual {p0, v5}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 88
    .local v0, config:Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v5, p0, Lcom/android/settings/ConfirmLockPassword;->mCreationHardKeyboardHidden:I

    .line 89
    const/high16 v5, 0x4

    if-eq v5, v4, :cond_0

    const/high16 v5, 0x5

    if-ne v5, v4, :cond_2

    :cond_0
    move v1, v9

    .line 92
    .local v1, isAlpha:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/ConfirmLockPassword;->mlidKeyboardAccessibility:I

    .line 94
    iget v5, p0, Lcom/android/settings/ConfirmLockPassword;->mCreationHardKeyboardHidden:I

    if-eq v5, v7, :cond_1

    iget v5, p0, Lcom/android/settings/ConfirmLockPassword;->mlidKeyboardAccessibility:I

    if-nez v5, :cond_3

    iget v5, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v5, v7, :cond_3

    if-nez v1, :cond_3

    .line 99
    :cond_1
    iput-boolean v9, p0, Lcom/android/settings/ConfirmLockPassword;->mShowKeyboardView:Z

    .line 105
    :goto_1
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-boolean v6, p0, Lcom/android/settings/ConfirmLockPassword;->mShowKeyboardView:Z

    if-eqz v6, :cond_4

    move v6, v8

    :goto_2
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 107
    const v5, 0x7f0c0018

    invoke-virtual {p0, v5}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    .line 108
    const v5, 0x7f0c0019

    invoke-virtual {p0, v5}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderImage:Landroid/widget/ImageView;

    .line 109
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    const v5, 0x7f0c001a

    invoke-virtual {p0, v5}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mEndHeaderText:Landroid/widget/TextView;

    .line 111
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mEndHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    const v6, 0x7f080524

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 114
    new-instance v5, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v7, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 115
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v1, :cond_6

    move v6, v8

    :goto_4
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 117
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v5}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 119
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    .line 122
    .local v3, savedInputType:I
    if-eqz v1, :cond_7

    .line 123
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 128
    :goto_5
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 129
    return-void

    .end local v1           #isAlpha:Z
    .end local v3           #savedInputType:I
    :cond_2
    move v1, v8

    .line 89
    goto/16 :goto_0

    .line 103
    .restart local v1       #isAlpha:Z
    :cond_3
    iput-boolean v8, p0, Lcom/android/settings/ConfirmLockPassword;->mShowKeyboardView:Z

    goto :goto_1

    .line 105
    :cond_4
    const/4 v6, 0x4

    goto :goto_2

    .line 112
    :cond_5
    const v6, 0x7f080525

    goto :goto_3

    :cond_6
    move v6, v9

    .line 115
    goto :goto_4

    .line 125
    .restart local v3       #savedInputType:I
    :cond_7
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_5
.end method

.method private showError(I)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/ConfirmLockPassword$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPassword$2;-><init>(Lcom/android/settings/ConfirmLockPassword;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->initViews()V

    .line 61
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 166
    if-nez p2, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->handleNext()V

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 142
    return-void
.end method

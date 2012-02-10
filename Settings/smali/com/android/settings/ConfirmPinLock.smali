.class public Lcom/android/settings/ConfirmPinLock;
.super Landroid/app/Activity;
.source "ConfirmPinLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final HEADER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmPinLock.header"

.field public static final HEADER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmPinLock.header_wrong"

.field public static final TAG:Ljava/lang/String; = "ConfirmPinLock"


# instance fields
.field private mAsAlphaNumericScreen:Z

.field private mCancelButton:Landroid/widget/Button;

.field protected mChooseNewLockPinListener:Lcom/motorola/internal/widget/LockPinView$OnPinListener;

.field private mEnterButton:Landroid/widget/Button;

.field mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field mHeaderWrongText:Ljava/lang/CharSequence;

.field private mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

.field private mLockPinView:Lcom/motorola/internal/widget/LockPinView;

.field private mPasscodeButtons:Landroid/view/ViewGroup;

.field private mPinText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/ConfirmPinLock$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmPinLock$1;-><init>(Lcom/android/settings/ConfirmPinLock;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmPinLock;->mChooseNewLockPinListener:Lcom/motorola/internal/widget/LockPinView$OnPinListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 147
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ConfirmPinLock;->setResult(ILandroid/content/Intent;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/ConfirmPinLock;->finish()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mEnterButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, pin:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mPinText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmPinLock;->onPasscodeDetected(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0c0018

    const v5, 0x10403b3

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v7, "com.android.settings.ConfirmPinLock.header"

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmPinLock;->setContentView(I)V

    .line 97
    new-instance v1, Lcom/motorola/internal/widget/LockPinUtils;

    invoke-direct {v1, p0}, Lcom/motorola/internal/widget/LockPinUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    .line 98
    const v1, 0x7f0c0086

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmPinLock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/internal/widget/LockPinView;

    iput-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    .line 99
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    iget-object v2, p0, Lcom/android/settings/ConfirmPinLock;->mChooseNewLockPinListener:Lcom/motorola/internal/widget/LockPinView$OnPinListener;

    invoke-virtual {v1, v2}, Lcom/motorola/internal/widget/LockPinView;->setOnPinListener(Lcom/motorola/internal/widget/LockPinView$OnPinListener;)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    const v2, 0x10201af

    invoke-virtual {v1, v2}, Lcom/motorola/internal/widget/LockPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-virtual {p0, v6}, Lcom/android/settings/ConfirmPinLock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mHeaderTextView:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmPinLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mHeaderText:Ljava/lang/CharSequence;

    .line 104
    const v1, 0x104029a

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmPinLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mHeaderWrongText:Ljava/lang/CharSequence;

    .line 106
    const v1, 0x7f0c0087

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmPinLock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mPinText:Landroid/widget/EditText;

    .line 107
    const v1, 0x7f0c008a

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmPinLock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mEnterButton:Landroid/widget/Button;

    .line 108
    const v1, 0x7f0c0089

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmPinLock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mCancelButton:Landroid/widget/Button;

    .line 109
    const v1, 0x7f0c0088

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmPinLock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mPasscodeButtons:Landroid/view/ViewGroup;

    .line 110
    invoke-virtual {p0, v6}, Lcom/android/settings/ConfirmPinLock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mHeaderTextView:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mEnterButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v1}, Lcom/motorola/internal/widget/LockPinUtils;->isAlphaNumericLockEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ConfirmPinLock;->mAsAlphaNumericScreen:Z

    .line 117
    iget-boolean v1, p0, Lcom/android/settings/ConfirmPinLock;->mAsAlphaNumericScreen:Z

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    invoke-virtual {v1, v4}, Lcom/motorola/internal/widget/LockPinView;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mPasscodeButtons:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mEnterButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmPinLock;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 135
    const-string v1, "com.android.settings.ConfirmPinLock.header"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.settings.ConfirmPinLock.header"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mHeaderText:Ljava/lang/CharSequence;

    .line 136
    :cond_0
    const-string v1, "com.android.settings.ConfirmPinLock.header_wrong"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.settings.ConfirmPinLock.header_wrong"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mHeaderWrongText:Ljava/lang/CharSequence;

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ConfirmPinLock;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    invoke-virtual {p0, v5}, Lcom/android/settings/ConfirmPinLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/internal/widget/LockPinView;->setPinHint(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mPinText:Landroid/widget/EditText;

    invoke-virtual {p0, v5}, Lcom/android/settings/ConfirmPinLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 142
    return-void

    .line 125
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    invoke-virtual {v1, v3}, Lcom/motorola/internal/widget/LockPinView;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mPasscodeButtons:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mEnterButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPasscodeDetected(Ljava/lang/String;)V
    .locals 2
    .parameter "pin"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/ConfirmPinLock;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, p1}, Lcom/motorola/internal/widget/LockPinUtils;->checkPin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ConfirmPinLock;->setResult(ILandroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/ConfirmPinLock;->finish()V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmPinLock;->mLockPinView:Lcom/motorola/internal/widget/LockPinView;

    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/motorola/internal/widget/LockPinView;->setPinHint(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/ConfirmPinLock;->mPinText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ConfirmPinLock;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

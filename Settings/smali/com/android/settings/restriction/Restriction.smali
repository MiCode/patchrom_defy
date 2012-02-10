.class public Lcom/android/settings/restriction/Restriction;
.super Landroid/app/Activity;
.source "Restriction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static CHANGE_RESTRICTION_PASSWORD:Ljava/lang/String; = null

.field public static final EXTRA_CHECK_PASSWORD_RESULT:Ljava/lang/String; = "check_password_result"

.field public static final EXTRA_CLEAR_PASSWORD:Ljava/lang/String; = "CLEAR_PASSWORD"

.field public static LAUNCH_RESTRICTION_SETTINGS:Ljava/lang/String; = null

.field private static final MINIMUM_PASSWORD_LENGTH:I = 0x4

.field private static final PASSWORD_DIALOG:I = 0x2

.field public static SET_RESTRICTION_PASSWORD:Ljava/lang/String; = null

.field private static final UNLOCK_DIALOG:I = 0x1

.field public static UNLOCK_RESTRICTION_SETTINGS:Ljava/lang/String;


# instance fields
.field private mDialogId:I

.field private mErrorId:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentAction:Ljava/lang/String;

.field private mPasswordDialog:Landroid/app/Dialog;

.field private mRestrictionLockUtils:Lcom/android/settings/restriction/RestrictionLockUtils;

.field private mSubmit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "com.android.settings.restriction.UNLOCK_RESTRICTION_SETTINGS"

    sput-object v0, Lcom/android/settings/restriction/Restriction;->UNLOCK_RESTRICTION_SETTINGS:Ljava/lang/String;

    .line 26
    const-string v0, "com.android.settings.restriction.LAUNCH_RESTRICTION_SETTINGS"

    sput-object v0, Lcom/android/settings/restriction/Restriction;->LAUNCH_RESTRICTION_SETTINGS:Ljava/lang/String;

    .line 28
    const-string v0, "com.android.settings.restriction.SET_RESTRICTION_PASSWORD"

    sput-object v0, Lcom/android/settings/restriction/Restriction;->SET_RESTRICTION_PASSWORD:Ljava/lang/String;

    .line 30
    const-string v0, "com.android.settings.restriction.CHANGE_RESTRICTION_PASSWORD"

    sput-object v0, Lcom/android/settings/restriction/Restriction;->CHANGE_RESTRICTION_PASSWORD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkError(Landroid/app/Dialog;I)Z
    .locals 2
    .parameter "dialog"
    .parameter "error"

    .prologue
    const/4 v1, 0x0

    .line 161
    sget v0, Lcom/android/settings/restriction/RestrictionLockUtils;->NO_ERROR:I

    if-ne p2, v0, :cond_0

    move v0, v1

    .line 173
    :goto_0
    return v0

    .line 164
    :cond_0
    sget v0, Lcom/android/settings/restriction/RestrictionLockUtils;->UNINITIALIZED:I

    if-ne p2, v0, :cond_1

    move v0, v1

    .line 165
    goto :goto_0

    .line 167
    :cond_1
    sget v0, Lcom/android/settings/restriction/RestrictionLockUtils;->WRONG_PASSWORD:I

    if-ge p2, v0, :cond_2

    move v0, v1

    .line 168
    goto :goto_0

    .line 171
    :cond_2
    const v0, 0x7f080027

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/restriction/Restriction;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkPasswordFormat(Landroid/app/Dialog;)Z
    .locals 7
    .parameter "dialog"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    const v3, 0x7f0c0030

    invoke-direct {p0, p1, v3}, Lcom/android/settings/restriction/Restriction;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, oldPassword:Ljava/lang/String;
    const v3, 0x7f0c0031

    invoke-direct {p0, p1, v3}, Lcom/android/settings/restriction/Restriction;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, newPassword:Ljava/lang/String;
    const v3, 0x7f0c0032

    invoke-direct {p0, p1, v3}, Lcom/android/settings/restriction/Restriction;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, confirmPassword:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 140
    const v3, 0x7f08002a

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/restriction/Restriction;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    move v3, v5

    .line 156
    :goto_0
    return v3

    .line 142
    :cond_0
    if-nez v1, :cond_2

    .line 143
    iget-object v3, p0, Lcom/android/settings/restriction/Restriction;->mRestrictionLockUtils:Lcom/android/settings/restriction/RestrictionLockUtils;

    invoke-virtual {v3, v2}, Lcom/android/settings/restriction/RestrictionLockUtils;->checkPassword(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/settings/restriction/Restriction;->checkError(Landroid/app/Dialog;I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 145
    :cond_3
    const v3, 0x7f080029

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/restriction/Restriction;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    :goto_1
    move v3, v5

    .line 156
    goto :goto_0

    .line 146
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    .line 147
    const v3, 0x7f08002b

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/restriction/Restriction;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 148
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 149
    const v3, 0x7f080028

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/restriction/Restriction;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 150
    :cond_6
    if-nez v2, :cond_7

    .line 151
    iget-object v3, p0, Lcom/android/settings/restriction/Restriction;->mRestrictionLockUtils:Lcom/android/settings/restriction/RestrictionLockUtils;

    invoke-virtual {v3, v1}, Lcom/android/settings/restriction/RestrictionLockUtils;->savePassword(Ljava/lang/String;)I

    move v3, v6

    .line 152
    goto :goto_0

    .line 154
    :cond_7
    iget-object v3, p0, Lcom/android/settings/restriction/Restriction;->mRestrictionLockUtils:Lcom/android/settings/restriction/RestrictionLockUtils;

    invoke-virtual {v3, v2, v1}, Lcom/android/settings/restriction/RestrictionLockUtils;->savePassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/settings/restriction/Restriction;->checkError(Landroid/app/Dialog;I)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v6

    goto :goto_0

    :cond_8
    move v3, v5

    goto :goto_0
.end method

.method private createPasswordDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, title:I
    const v3, 0x7f030041

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 215
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/restriction/Restriction;->mRestrictionLockUtils:Lcom/android/settings/restriction/RestrictionLockUtils;

    invoke-virtual {v3}, Lcom/android/settings/restriction/RestrictionLockUtils;->savedPasswordExists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    const v1, 0x7f080022

    .line 223
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08002e

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 229
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 230
    iput-object v0, p0, Lcom/android/settings/restriction/Restriction;->mPasswordDialog:Landroid/app/Dialog;

    .line 231
    return-object v0

    .line 218
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    const v3, 0x7f0c002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const v3, 0x7f0c0030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 220
    const v1, 0x7f080023

    goto :goto_0
.end method

.method private createUnlockDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 196
    const v2, 0x7f030042

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080021

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 205
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 206
    iput-object v0, p0, Lcom/android/settings/restriction/Restriction;->mPasswordDialog:Landroid/app/Dialog;

    .line 207
    return-object v0
.end method

.method private getText(Landroid/app/Dialog;I)Ljava/lang/String;
    .locals 3
    .parameter "dialog"
    .parameter "viewId"

    .prologue
    .line 177
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private varargs showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V
    .locals 2
    .parameter "dialog"
    .parameter "stringId"
    .parameter "formatArgs"

    .prologue
    .line 183
    iput p2, p0, Lcom/android/settings/restriction/Restriction;->mErrorId:I

    .line 184
    const v1, 0x7f0c002e

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 186
    if-eqz p3, :cond_0

    array-length v1, p3

    if-nez v1, :cond_2

    .line 187
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 191
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :cond_1
    return-void

    .line 189
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method handleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 71
    if-eqz p1, :cond_1

    .line 72
    iput-object p1, p0, Lcom/android/settings/restriction/Restriction;->mIntent:Landroid/content/Intent;

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/restriction/Restriction;->mIntentAction:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/android/settings/restriction/Restriction;->LAUNCH_RESTRICTION_SETTINGS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/restriction/Restriction;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/restriction/Restriction;->UNLOCK_RESTRICTION_SETTINGS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/restriction/Restriction;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/Restriction;->showDialog(I)V

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    sget-object v0, Lcom/android/settings/restriction/Restriction;->CHANGE_RESTRICTION_PASSWORD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/restriction/Restriction;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/settings/restriction/Restriction;->SET_RESTRICTION_PASSWORD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/restriction/Restriction;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/Restriction;->showDialog(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 85
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/restriction/Restriction;->mSubmit:Z

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance v0, Lcom/android/settings/restriction/RestrictionLockUtils;

    invoke-virtual {p0}, Lcom/android/settings/restriction/Restriction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/restriction/RestrictionLockUtils;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/settings/restriction/Restriction;->mRestrictionLockUtils:Lcom/android/settings/restriction/RestrictionLockUtils;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/restriction/Restriction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/Restriction;->handleIntent(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/settings/restriction/Restriction;->mDialogId:I

    .line 48
    packed-switch p1, :pswitch_data_0

    .line 54
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/restriction/Restriction;->createUnlockDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/restriction/Restriction;->createPasswordDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/android/settings/restriction/Restriction;->mSubmit:Z

    if-nez v0, :cond_1

    .line 94
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "check_password_result"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/restriction/Restriction;->setResult(ILandroid/content/Intent;)V

    .line 110
    .end local p1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/restriction/Restriction;->finish()V

    .line 111
    :goto_1
    return-void

    .line 96
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/restriction/Restriction;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iput-boolean v3, p0, Lcom/android/settings/restriction/Restriction;->mSubmit:Z

    .line 98
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/settings/restriction/Restriction;->checkPasswordFormat(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    iget v0, p0, Lcom/android/settings/restriction/Restriction;->mDialogId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/Restriction;->removeDialog(I)V

    .line 101
    iget v0, p0, Lcom/android/settings/restriction/Restriction;->mDialogId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/Restriction;->showDialog(I)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/restriction/Restriction;->mPasswordDialog:Landroid/app/Dialog;

    iget v1, p0, Lcom/android/settings/restriction/Restriction;->mErrorId:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/restriction/Restriction;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/restriction/Restriction;->processIntent()V

    goto :goto_0
.end method

.method processIntent()V
    .locals 5

    .prologue
    .line 114
    sget-object v1, Lcom/android/settings/restriction/Restriction;->LAUNCH_RESTRICTION_SETTINGS:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/restriction/Restriction;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.restriction.RestrictionSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/Restriction;->startActivity(Landroid/content/Intent;)V

    .line 131
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    sget-object v1, Lcom/android/settings/restriction/Restriction;->UNLOCK_RESTRICTION_SETTINGS:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/restriction/Restriction;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/settings/restriction/Restriction;->SET_RESTRICTION_PASSWORD:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/restriction/Restriction;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    :cond_2
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "check_password_result"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/restriction/Restriction;->setResult(ILandroid/content/Intent;)V

    .line 126
    sget-object v1, Lcom/android/settings/restriction/Restriction;->UNLOCK_RESTRICTION_SETTINGS:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/restriction/Restriction;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/restriction/Restriction;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/restriction/Restriction;->mIntent:Landroid/content/Intent;

    const-string v2, "CLEAR_PASSWORD"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings/restriction/Restriction;->mRestrictionLockUtils:Lcom/android/settings/restriction/RestrictionLockUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/restriction/RestrictionLockUtils;->savePassword(Ljava/lang/String;)I

    goto :goto_0
.end method

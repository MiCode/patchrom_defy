.class public Lcom/android/settings/ChooseLockPatternTutorial;
.super Landroid/app/Activity;
.source "ChooseLockPatternTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field private static final REQUESTCODE_EXAMPLE:I = 0x1


# instance fields
.field private mNextButton:Landroid/view/View;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->setContentView(I)V

    .line 53
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    const-string v1, "password_confirmed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const-string v5, "confirm_credentials"

    .line 60
    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/view/View;

    if-ne p1, v2, :cond_1

    .line 62
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPatternTutorial;->setResult(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 67
    const-string v2, "password_confirmed"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->startActivity(Landroid/content/Intent;)V

    .line 79
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/view/View;

    if-ne p1, v2, :cond_0

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/ChooseLockPatternExample;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "confirm_credentials"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    .local v0, confirmCredentials:Z
    const-string v2, "confirm_credentials"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->startActivity(Landroid/content/Intent;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    .line 49
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->initViews()V

    goto :goto_0
.end method

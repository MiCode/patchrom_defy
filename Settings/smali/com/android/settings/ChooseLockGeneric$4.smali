.class Lcom/android/settings/ChooseLockGeneric$4;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric;->createFingerprintConfirmDeleteEnrollDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockGeneric;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$4;->this$0:Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 454
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$4;->this$0:Lcom/android/settings/ChooseLockGeneric;

    #getter for: Lcom/android/settings/ChooseLockGeneric;->mLockPinUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/settings/ChooseLockGeneric;->access$100(Lcom/android/settings/ChooseLockGeneric;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, showHelp:Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.motorola.fingerprint"

    const-string v4, "com.motorola.fingerprint.FingerprintEnrollmentWizard"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 458
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "show-instructions"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    const-string v2, "password-existed"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 460
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$4;->this$0:Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v2, v0}, Lcom/android/settings/ChooseLockGeneric;->startActivity(Landroid/content/Intent;)V

    .line 461
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 462
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$4;->this$0:Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    .line 467
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #showHelp:Z
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$4;->this$0:Lcom/android/settings/ChooseLockGeneric;

    const/4 v3, 0x0

    #calls: Lcom/android/settings/ChooseLockGeneric;->setupFingerprintBackupPassword(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/ChooseLockGeneric;->access$200(Lcom/android/settings/ChooseLockGeneric;Z)V

    .line 465
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method

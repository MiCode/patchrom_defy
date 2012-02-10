.class Lcom/android/settings/ChooseLockGeneric$2;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric;->createFingerprintLockDialog()Landroid/app/Dialog;
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
    .line 416
    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$2;->this$0:Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 418
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 419
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.motorola.fingerprint"

    const-string v2, "com.motorola.fingerprint.ConfirmFingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v1, "FINGERPRINTS_STORED_KEY"

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$2;->this$0:Lcom/android/settings/ChooseLockGeneric;

    #getter for: Lcom/android/settings/ChooseLockGeneric;->mFingerprintsStored:Z
    invoke-static {v2}, Lcom/android/settings/ChooseLockGeneric;->access$000(Lcom/android/settings/ChooseLockGeneric;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 421
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$2;->this$0:Lcom/android/settings/ChooseLockGeneric;

    const/16 v2, 0x69

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/ChooseLockGeneric;->startActivityForResult(Landroid/content/Intent;I)V

    .line 422
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 423
    return-void
.end method

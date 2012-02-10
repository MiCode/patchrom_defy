.class Lcom/android/settings/ChooseLockGeneric$5;
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
    .line 472
    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$5;->this$0:Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 474
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 475
    return-void
.end method

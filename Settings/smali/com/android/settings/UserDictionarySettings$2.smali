.class Lcom/android/settings/UserDictionarySettings$2;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UserDictionarySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UserDictionarySettings;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/UserDictionarySettings;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/UserDictionarySettings$2;->this$0:Lcom/android/settings/UserDictionarySettings;

    iput-object p2, p0, Lcom/android/settings/UserDictionarySettings$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings$2;->this$0:Lcom/android/settings/UserDictionarySettings;

    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/UserDictionarySettings;->onAddOrEditFinished(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/UserDictionarySettings;->access$100(Lcom/android/settings/UserDictionarySettings;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings$2;->this$0:Lcom/android/settings/UserDictionarySettings;

    #getter for: Lcom/android/settings/UserDictionarySettings;->mAutoReturn:Z
    invoke-static {v0}, Lcom/android/settings/UserDictionarySettings;->access$000(Lcom/android/settings/UserDictionarySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings$2;->this$0:Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v0}, Lcom/android/settings/UserDictionarySettings;->finish()V

    .line 221
    :cond_0
    return-void
.end method

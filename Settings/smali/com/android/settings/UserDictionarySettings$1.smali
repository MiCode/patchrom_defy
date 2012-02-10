.class Lcom/android/settings/UserDictionarySettings$1;
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


# direct methods
.method constructor <init>(Lcom/android/settings/UserDictionarySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings/UserDictionarySettings$1;->this$0:Lcom/android/settings/UserDictionarySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings$1;->this$0:Lcom/android/settings/UserDictionarySettings;

    #getter for: Lcom/android/settings/UserDictionarySettings;->mAutoReturn:Z
    invoke-static {v0}, Lcom/android/settings/UserDictionarySettings;->access$000(Lcom/android/settings/UserDictionarySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings$1;->this$0:Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v0}, Lcom/android/settings/UserDictionarySettings;->finish()V

    .line 225
    :cond_0
    return-void
.end method

.class Lcom/android/settings/deviceinfo/MediaSyncPreference$1;
.super Ljava/lang/Object;
.source "MediaSyncPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MediaSyncPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MediaSyncPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MediaSyncPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference$1;->this$0:Lcom/android/settings/deviceinfo/MediaSyncPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference$1;->this$0:Lcom/android/settings/deviceinfo/MediaSyncPreference;

    #setter for: Lcom/android/settings/deviceinfo/MediaSyncPreference;->mSelection:I
    invoke-static {v0, p2}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->access$002(Lcom/android/settings/deviceinfo/MediaSyncPreference;I)I

    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MediaSyncPreference$1;->this$0:Lcom/android/settings/deviceinfo/MediaSyncPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/deviceinfo/MediaSyncPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 82
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 83
    return-void
.end method

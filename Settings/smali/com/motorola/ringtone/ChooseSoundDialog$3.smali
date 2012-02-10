.class Lcom/motorola/ringtone/ChooseSoundDialog$3;
.super Ljava/lang/Object;
.source "ChooseSoundDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/ringtone/ChooseSoundDialog;->createDialog(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/ringtone/ChooseSoundDialog;


# direct methods
.method constructor <init>(Lcom/motorola/ringtone/ChooseSoundDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$3;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$3;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z
    invoke-static {v0}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$000(Lcom/motorola/ringtone/ChooseSoundDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$3;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$3;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z
    invoke-static {v0, v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$002(Lcom/motorola/ringtone/ChooseSoundDialog;Z)Z

    .line 213
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$3;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/motorola/ringtone/ChooseSoundDialog$5;
.super Ljava/lang/Object;
.source "ChooseSoundDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/motorola/ringtone/ChooseSoundDialog;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$5;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    iput-object p2, p0, Lcom/motorola/ringtone/ChooseSoundDialog$5;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 256
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$5;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$000(Lcom/motorola/ringtone/ChooseSoundDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$5;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$5;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z
    invoke-static {v1, v2}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$002(Lcom/motorola/ringtone/ChooseSoundDialog;Z)Z

    .line 259
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$5;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$5;->val$cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$5;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_1
    return-void

    .line 260
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 261
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss.stopPlay()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/ringtone/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/motorola/ringtone/ChooseSoundDialog$2;
.super Ljava/lang/Object;
.source "ChooseSoundDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 221
    iput-object p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    iput-object p2, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 223
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z
    invoke-static {v0}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$000(Lcom/motorola/ringtone/ChooseSoundDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z
    invoke-static {v0, v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$002(Lcom/motorola/ringtone/ChooseSoundDialog;Z)Z

    .line 226
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mTempUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$200(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mItemSelected:Z
    invoke-static {v0}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$300(Lcom/motorola/ringtone/ChooseSoundDialog;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 232
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mTempUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$200(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mAlertUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$402(Lcom/motorola/ringtone/ChooseSoundDialog;Landroid/net/Uri;)Landroid/net/Uri;

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mItemSelected:Z
    invoke-static {v0}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$300(Lcom/motorola/ringtone/ChooseSoundDialog;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 235
    iget-object v0, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mSoundSelectedListener:Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;
    invoke-static {v0}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$700(Lcom/motorola/ringtone/ChooseSoundDialog;)Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mAlertUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$400(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mSoundType:I
    invoke-static {v2}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$500(Lcom/motorola/ringtone/ChooseSoundDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/motorola/ringtone/ChooseSoundDialog$2;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$600(Lcom/motorola/ringtone/ChooseSoundDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/ringtone/ChooseSoundDialog$OnSoundSelectedListener;->onSelectedChanged(Landroid/net/Uri;ILjava/lang/String;)V

    .line 237
    :cond_2
    return-void

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/motorola/ringtone/ChooseSoundDialog$4;
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
    .line 155
    iput-object p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    iput-object p2, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 158
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #setter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mItemSelected:Z
    invoke-static {v1, v2}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$302(Lcom/motorola/ringtone/ChooseSoundDialog;Z)Z

    .line 159
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$000(Lcom/motorola/ringtone/ChooseSoundDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z
    invoke-static {v1, v2}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$002(Lcom/motorola/ringtone/ChooseSoundDialog;Z)Z

    .line 162
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$102(Lcom/motorola/ringtone/ChooseSoundDialog;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 171
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_3

    .line 172
    const-string v1, "Unable to instantiate MediaPlayer"

    invoke-static {v1}, Lcom/motorola/ringtone/Log;->e(Ljava/lang/String;)V

    .line 185
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 186
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mTempUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$202(Lcom/motorola/ringtone/ChooseSoundDialog;Landroid/net/Uri;)Landroid/net/Uri;

    .line 193
    :goto_2
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mTempUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$200(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 195
    :try_start_1
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mPlaying:Z
    invoke-static {v1, v2}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$002(Lcom/motorola/ringtone/ChooseSoundDialog;Z)Z

    .line 196
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 197
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mSetAlarm:Lcom/motorola/ringtone/AbstractSetAlarm;
    invoke-static {v2}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$900(Lcom/motorola/ringtone/ChooseSoundDialog;)Lcom/motorola/ringtone/AbstractSetAlarm;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mTempUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$200(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 198
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 199
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    :cond_2
    :goto_3
    return-void

    .line 163
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 164
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$102(Lcom/motorola/ringtone/ChooseSoundDialog;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto :goto_0

    .line 174
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    #getter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$100(Lcom/motorola/ringtone/ChooseSoundDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Lcom/motorola/ringtone/ChooseSoundDialog$4$1;

    invoke-direct {v2, p0}, Lcom/motorola/ringtone/ChooseSoundDialog$4$1;-><init>(Lcom/motorola/ringtone/ChooseSoundDialog$4;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_1

    .line 188
    :cond_4
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #setter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mTempMediaCursorPosition:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$802(Lcom/motorola/ringtone/ChooseSoundDialog;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 189
    iget-object v1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->this$0:Lcom/motorola/ringtone/ChooseSoundDialog;

    iget-object v2, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->val$cursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/motorola/ringtone/ChooseSoundDialog;->mTempUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/motorola/ringtone/ChooseSoundDialog;->access$202(Lcom/motorola/ringtone/ChooseSoundDialog;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_2

    .line 200
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 201
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

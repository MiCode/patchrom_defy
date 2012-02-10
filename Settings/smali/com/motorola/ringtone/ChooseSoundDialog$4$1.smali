.class Lcom/motorola/ringtone/ChooseSoundDialog$4$1;
.super Ljava/lang/Object;
.source "ChooseSoundDialog.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/ringtone/ChooseSoundDialog$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/ringtone/ChooseSoundDialog$4;


# direct methods
.method constructor <init>(Lcom/motorola/ringtone/ChooseSoundDialog$4;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/motorola/ringtone/ChooseSoundDialog$4$1;->this$1:Lcom/motorola/ringtone/ChooseSoundDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 178
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 179
    const/4 p1, 0x0

    .line 180
    const/4 v0, 0x1

    return v0
.end method

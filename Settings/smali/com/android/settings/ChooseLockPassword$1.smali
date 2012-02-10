.class Lcom/android/settings/ChooseLockPassword$1;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPassword;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$1;->this$0:Lcom/android/settings/ChooseLockPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 195
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/16 v0, 0x17

    if-ne p2, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$1;->this$0:Lcom/android/settings/ChooseLockPassword;

    #calls: Lcom/android/settings/ChooseLockPassword;->handleNext()V
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword;->access$000(Lcom/android/settings/ChooseLockPassword;)V

    .line 198
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

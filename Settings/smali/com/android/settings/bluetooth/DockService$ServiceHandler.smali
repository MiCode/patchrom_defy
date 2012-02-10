.class final Lcom/android/settings/bluetooth/DockService$ServiceHandler;
.super Landroid/os/Handler;
.source "DockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DockService;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->this$0:Lcom/android/settings/bluetooth/DockService;

    .line 219
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 220
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->this$0:Lcom/android/settings/bluetooth/DockService;

    #calls: Lcom/android/settings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/DockService;->access$000(Lcom/android/settings/bluetooth/DockService;Landroid/os/Message;)V

    .line 225
    return-void
.end method

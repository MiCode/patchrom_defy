.class Lcom/android/settings/HDMIHelper$MirrorServiceConnection;
.super Ljava/lang/Object;
.source "HDMIHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HDMIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MirrorServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HDMIHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/HDMIHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/HDMIHelper$MirrorServiceConnection;->this$0:Lcom/android/settings/HDMIHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    const-string v2, "HDMIMirrorSettingsHelper"

    .line 87
    const-string v0, "HDMIMirrorSettingsHelper"

    const-string v0, "onServiceConnected - Mirror"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/settings/HDMIHelper$MirrorServiceConnection;->this$0:Lcom/android/settings/HDMIHelper;

    invoke-static {p2}, Lcom/motorola/android/mirrorservice/IMirrorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/mirrorservice/IMirrorService;

    move-result-object v1

    #setter for: Lcom/android/settings/HDMIHelper;->mMirrorService:Lcom/motorola/android/mirrorservice/IMirrorService;
    invoke-static {v0, v1}, Lcom/android/settings/HDMIHelper;->access$002(Lcom/android/settings/HDMIHelper;Lcom/motorola/android/mirrorservice/IMirrorService;)Lcom/motorola/android/mirrorservice/IMirrorService;

    .line 90
    iget-object v0, p0, Lcom/android/settings/HDMIHelper$MirrorServiceConnection;->this$0:Lcom/android/settings/HDMIHelper;

    #getter for: Lcom/android/settings/HDMIHelper;->mMirrorService:Lcom/motorola/android/mirrorservice/IMirrorService;
    invoke-static {v0}, Lcom/android/settings/HDMIHelper;->access$000(Lcom/android/settings/HDMIHelper;)Lcom/motorola/android/mirrorservice/IMirrorService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "HDMIMirrorSettingsHelper"

    const-string v0, "Error retreiving mirrorService interface!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 97
    const-string v0, "HDMIMirrorSettingsHelper"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/settings/HDMIHelper$MirrorServiceConnection;->this$0:Lcom/android/settings/HDMIHelper;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/HDMIHelper;->mMirrorService:Lcom/motorola/android/mirrorservice/IMirrorService;
    invoke-static {v0, v1}, Lcom/android/settings/HDMIHelper;->access$002(Lcom/android/settings/HDMIHelper;Lcom/motorola/android/mirrorservice/IMirrorService;)Lcom/motorola/android/mirrorservice/IMirrorService;

    .line 102
    return-void
.end method

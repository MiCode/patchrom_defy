.class public Lcom/android/settings/HDMIHelper;
.super Ljava/lang/Object;
.source "HDMIHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HDMIHelper$MirrorServiceConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HDMIMirrorSettingsHelper"


# instance fields
.field private lock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mDeathWatcher:Landroid/os/Binder;

.field private mMirrorConnection:Lcom/android/settings/HDMIHelper$MirrorServiceConnection;

.field private mMirrorService:Lcom/motorola/android/mirrorservice/IMirrorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/HDMIHelper;->lock:Ljava/lang/Object;

    .line 28
    iput-object v1, p0, Lcom/android/settings/HDMIHelper;->mContext:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/android/settings/HDMIHelper;->mDeathWatcher:Landroid/os/Binder;

    .line 32
    iput-object v1, p0, Lcom/android/settings/HDMIHelper;->mMirrorService:Lcom/motorola/android/mirrorservice/IMirrorService;

    .line 33
    iput-object v1, p0, Lcom/android/settings/HDMIHelper;->mMirrorConnection:Lcom/android/settings/HDMIHelper$MirrorServiceConnection;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/HDMIHelper;)Lcom/motorola/android/mirrorservice/IMirrorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/HDMIHelper;->mMirrorService:Lcom/motorola/android/mirrorservice/IMirrorService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/HDMIHelper;Lcom/motorola/android/mirrorservice/IMirrorService;)Lcom/motorola/android/mirrorservice/IMirrorService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/settings/HDMIHelper;->mMirrorService:Lcom/motorola/android/mirrorservice/IMirrorService;

    return-object p1
.end method


# virtual methods
.method public closeHelper()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/HDMIHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/settings/HDMIHelper;->mDeathWatcher:Landroid/os/Binder;

    .line 59
    iget-object v1, p0, Lcom/android/settings/HDMIHelper;->mMirrorConnection:Lcom/android/settings/HDMIHelper$MirrorServiceConnection;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/settings/HDMIHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/HDMIHelper;->mMirrorConnection:Lcom/android/settings/HDMIHelper$MirrorServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/HDMIHelper;->mMirrorConnection:Lcom/android/settings/HDMIHelper$MirrorServiceConnection;

    .line 64
    :cond_0
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initHelper(Landroid/content/Context;)V
    .locals 5
    .parameter "ctxt"

    .prologue
    const-string v1, "HDMIMirrorSettingsHelper"

    .line 37
    iput-object p1, p0, Lcom/android/settings/HDMIHelper;->mContext:Landroid/content/Context;

    .line 41
    iget-object v1, p0, Lcom/android/settings/HDMIHelper;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/settings/HDMIHelper;->mDeathWatcher:Landroid/os/Binder;

    .line 43
    new-instance v2, Lcom/android/settings/HDMIHelper$MirrorServiceConnection;

    invoke-direct {v2, p0}, Lcom/android/settings/HDMIHelper$MirrorServiceConnection;-><init>(Lcom/android/settings/HDMIHelper;)V

    iput-object v2, p0, Lcom/android/settings/HDMIHelper;->mMirrorConnection:Lcom/android/settings/HDMIHelper$MirrorServiceConnection;

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/motorola/android/mirrorservice/IMirrorService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/HDMIHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/HDMIHelper;->mMirrorConnection:Lcom/android/settings/HDMIHelper$MirrorServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    const-string v2, "HDMIMirrorSettingsHelper"

    const-string v3, "bindService failed for mMirrorConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    monitor-exit v1

    .line 51
    return-void

    .line 48
    :cond_0
    const-string v2, "HDMIMirrorSettingsHelper"

    const-string v3, "bindService successful, mirror connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setOverscan(I)V
    .locals 4
    .parameter "percentage"

    .prologue
    const-string v3, "HDMIMirrorSettingsHelper"

    .line 69
    iget-object v1, p0, Lcom/android/settings/HDMIHelper;->mMirrorService:Lcom/motorola/android/mirrorservice/IMirrorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/HDMIHelper;->mDeathWatcher:Landroid/os/Binder;

    if-eqz v1, :cond_0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/HDMIHelper;->mMirrorService:Lcom/motorola/android/mirrorservice/IMirrorService;

    iget-object v2, p0, Lcom/android/settings/HDMIHelper;->mDeathWatcher:Landroid/os/Binder;

    invoke-interface {v1, v2, p1}, Lcom/motorola/android/mirrorservice/IMirrorService;->setOverscanPercent(Landroid/os/IBinder;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 73
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HDMIMirrorSettingsHelper"

    const-string v1, "Exception detected in setOverscan"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "HDMIMirrorSettingsHelper"

    const-string v1, "tried to set Overscan without proper setup!"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

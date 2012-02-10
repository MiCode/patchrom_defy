.class Lcom/android/settings/wifi/ManageNetworks$Scanner;
.super Landroid/os/Handler;
.source "ManageNetworks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ManageNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings/wifi/ManageNetworks;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/ManageNetworks;)V
    .locals 1
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 714
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/ManageNetworks;Lcom/android/settings/wifi/ManageNetworks$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ManageNetworks$Scanner;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 730
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    #getter for: Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/ManageNetworks;->access$300(Lcom/android/settings/wifi/ManageNetworks;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    iput v2, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    #getter for: Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wifi/ManageNetworks;->access$200(Lcom/android/settings/wifi/ManageNetworks;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 739
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 740
    :goto_1
    return-void

    .line 732
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 733
    iput v2, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    .line 734
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    const v1, 0x7f0803db

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 738
    goto :goto_0
.end method

.method pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 723
    iput v1, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    .line 724
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    #getter for: Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wifi/ManageNetworks;->access$200(Lcom/android/settings/wifi/ManageNetworks;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 725
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->removeMessages(I)V

    .line 726
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 717
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->sendEmptyMessage(I)Z

    .line 720
    :cond_0
    return-void
.end method

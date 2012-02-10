.class Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;
.super Landroid/os/Handler;
.source "PrefNetworkFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/PrefNetworkFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings/wifi/PrefNetworkFinder;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/PrefNetworkFinder;)V
    .locals 1
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->this$0:Lcom/android/settings/wifi/PrefNetworkFinder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/PrefNetworkFinder;Lcom/android/settings/wifi/PrefNetworkFinder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 653
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;-><init>(Lcom/android/settings/wifi/PrefNetworkFinder;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 670
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->this$0:Lcom/android/settings/wifi/PrefNetworkFinder;

    #getter for: Lcom/android/settings/wifi/PrefNetworkFinder;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/PrefNetworkFinder;->access$300(Lcom/android/settings/wifi/PrefNetworkFinder;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    iput v2, p0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->mRetry:I

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->this$0:Lcom/android/settings/wifi/PrefNetworkFinder;

    #getter for: Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wifi/PrefNetworkFinder;->access$200(Lcom/android/settings/wifi/PrefNetworkFinder;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->mRetry:I

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 679
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    :goto_1
    return-void

    .line 672
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 673
    iput v2, p0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->mRetry:I

    .line 674
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->this$0:Lcom/android/settings/wifi/PrefNetworkFinder;

    const v1, 0x7f0803db

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 678
    goto :goto_0
.end method

.method pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 663
    iput v1, p0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->mRetry:I

    .line 664
    iget-object v0, p0, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->this$0:Lcom/android/settings/wifi/PrefNetworkFinder;

    #getter for: Lcom/android/settings/wifi/PrefNetworkFinder;->mAccessPoints:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wifi/PrefNetworkFinder;->access$200(Lcom/android/settings/wifi/PrefNetworkFinder;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 665
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->removeMessages(I)V

    .line 666
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 657
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/PrefNetworkFinder$Scanner;->sendEmptyMessage(I)Z

    .line 660
    :cond_0
    return-void
.end method

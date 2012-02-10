.class Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;
.super Landroid/app/AlertDialog;
.source "WifiApManageDevices.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApManageDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerAlertDialog"
.end annotation


# instance fields
.field private mDevice:Lcom/android/settings/wifi/ConnectedDevice;

.field private mDuration:Landroid/text/format/Time;

.field private mGroup:Landroid/view/ViewGroup;

.field private mTimeView:Landroid/view/View;

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiApManageDevices;


# direct methods
.method protected constructor <init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "dev"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    .line 452
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 444
    new-instance v0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog$1;-><init>(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    .line 453
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    .line 454
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDuration:Landroid/text/format/Time;

    .line 455
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDuration:Landroid/text/format/Time;

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)Lcom/android/settings/wifi/ConnectedDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->updateFields()V

    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 508
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0c003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 509
    const v1, 0x7f0c008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 511
    return-object v0
.end method

.method private updateFields()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 497
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 498
    .local v0, now:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 499
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDuration:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v4, v4, Lcom/android/settings/wifi/ConnectedDevice;->mConnectTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 500
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mTimeView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mTimeView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    const v2, 0x7f080251

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDuration:Landroid/text/format/Time;

    const-string v4, "%H:%M:%S"

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mTimeView:Landroid/view/View;

    .line 504
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 481
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v1, v1, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    #calls: Lcom/android/settings/wifi/WifiApManageDevices;->invokeServiceToUnBlackList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$200(Lcom/android/settings/wifi/WifiApManageDevices;Ljava/lang/String;)V

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->dismiss()V

    .line 494
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030054

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mView:Landroid/view/View;

    .line 461
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    .line 462
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->setView(Landroid/view/View;)V

    .line 463
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->setInverseBackgroundForced(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 465
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$100(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080252

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 466
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$100(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080253

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 467
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    const v1, 0x7f08024e

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v2, v2, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 468
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mGroup:Landroid/view/ViewGroup;

    const v1, 0x7f08024f

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v2, v2, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 469
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->updateFields()V

    .line 470
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 471
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$700(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 516
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$700(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$700(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 477
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 478
    return-void
.end method

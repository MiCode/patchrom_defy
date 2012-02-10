.class public Lcom/android/settings/wifi/NetworkDetectedWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "NetworkDetectedWarning.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DEBUG_LOGS:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkDetectedWarning"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOkButton:Landroid/widget/Button;

.field private mShowWarningCheckBox:Landroid/widget/CheckBox;

.field private mView:Landroid/view/View;

.field private mWarningText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkDetectedWarning;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, mView:Landroid/view/View;
    const v1, 0x7f0c013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/NetworkDetectedWarning;->mShowWarningCheckBox:Landroid/widget/CheckBox;

    .line 90
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkDetectedWarning;->mShowWarningCheckBox:Landroid/widget/CheckBox;

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 91
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 103
    const-string v1, "NetworkDetectedWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() --  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string v1, "android.net.wifi.WIFI_NETWORK_PREFERRED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.PrefNetworkFinder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/NetworkDetectedWarning;->startActivity(Landroid/content/Intent;)V

    .line 112
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkDetectedWarning;->mShowWarningCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkDetectedWarning;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_prefnetworks_warning"

    iget-object v2, p0, Lcom/android/settings/wifi/NetworkDetectedWarning;->mShowWarningCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    :cond_0
    return-void

    .line 97
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkDetectedWarning;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 63
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x10801bd

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 65
    const v1, 0x7f0801b6

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/NetworkDetectedWarning;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 66
    const v1, 0x7f0801b1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/NetworkDetectedWarning;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkDetectedWarning;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 71
    const v1, 0x7f0801b5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/NetworkDetectedWarning;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 72
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkDetectedWarning;->setupAlert()V

    .line 76
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkDetectedWarning;->mShowWarningCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkDetectedWarning;->mShowWarningCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkDetectedWarning;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/NetworkDetectedWarning;->mOkButton:Landroid/widget/Button;

    .line 81
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkDetectedWarning;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    return-void
.end method

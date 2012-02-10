.class Lcom/android/settings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final BUTTON_FORGET:I = -0x3

.field static final BUTTON_SUBMIT:I = -0x1

.field public static final CERT_CONTENT_URI:Landroid/net/Uri; = null

.field private static final KEYSTORE_SPACE:Ljava/lang/String; = "keystore://"

.field private static final NETWORK_MODE_ADHOC:I = 0x1

.field private static final NETWORK_MODE_INFRASTRUCTURE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiDialog"

.field private static final WAPI_PASSWORD_ASCII:I = 0x0

.field private static final WAPI_PASSWORD_HEX:I = 0x1

.field private static final WAPI_TYPE_VALUES:[I


# instance fields
.field private final WPS_MSG_DISMISS:I

.field private final WPS_MSG_SHOW:I

.field public final WPS_PIN_LENGTH:I

.field final edit:Z

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mCertificateManageButton:Landroid/widget/Button;

.field private mCertificateManageText:Landroid/widget/TextView;

.field private mEapAnonymous:Landroid/widget/TextView;

.field private mEapCaCert:Landroid/widget/Spinner;

.field private mEapIdentity:Landroid/widget/TextView;

.field private mEapMethod:Landroid/widget/Spinner;

.field private mEapUserCert:Landroid/widget/Spinner;

.field private mHasWAPIASCert:Z

.field private mHasWAPIUserCert:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMsgDialog:Landroid/app/Dialog;

.field private mNetworkModeCheckBox:Landroid/widget/CheckBox;

.field private mPassword:Landroid/widget/TextView;

.field private mPasswordText:Landroid/widget/TextView;

.field private mPhase2:Landroid/widget/Spinner;

.field private mProxyEnabled:Z

.field private mProxyEnabledCheckBox:Landroid/widget/CheckBox;

.field private mProxyExceptionsEdit:Landroid/widget/EditText;

.field private mProxyExceptionsExampleText:Landroid/widget/TextView;

.field private mProxyExceptionsText:Landroid/widget/TextView;

.field private mProxyHostEdit:Landroid/widget/EditText;

.field private mProxyHostText:Landroid/widget/TextView;

.field private mProxyModifiable:Z

.field private mProxyPortEdit:Landroid/widget/EditText;

.field private mProxyPortText:Landroid/widget/TextView;

.field private mProxySettingsText:Landroid/widget/TextView;

.field private mPushButtonCheckBox:Landroid/widget/CheckBox;

.field private mSecurity:I

.field private mSecurityRow:Landroid/view/View;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mSsid:Landroid/widget/TextView;

.field private mState:Lcom/android/settings/wifi/AccessPoint;

.field private mUpdateProxy:Z

.field private mView:Landroid/view/View;

.field private mWAPIASCertSpinner:Landroid/widget/Spinner;

.field private mWAPIUserCertSpinner:Landroid/widget/Spinner;

.field private mWapiPskType:Landroid/widget/Spinner;

.field private mWpsMethodCheckBox:Landroid/widget/CheckBox;

.field private mWpsMode:Ljava/lang/String;

.field private mWpsPinCodeEdit:Landroid/widget/EditText;

.field private mWpsPinCodeText:Landroid/widget/TextView;

.field public netMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "content://com.motorola.wapicertificatemanager/certs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiDialog;->CERT_CONTENT_URI:Landroid/net/Uri;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/WifiDialog;->WAPI_TYPE_VALUES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 81
    const/16 v0, 0x6d

    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->WPS_MSG_SHOW:I

    .line 82
    const/16 v0, 0x6e

    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->WPS_MSG_DISMISS:I

    .line 129
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->mHasWAPIASCert:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->mHasWAPIUserCert:Z

    .line 167
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->WPS_PIN_LENGTH:I

    .line 184
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    .line 185
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 186
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 187
    if-nez p3, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 188
    if-nez p3, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->netMode:I

    .line 189
    if-nez p3, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabled:Z

    .line 190
    return-void

    .line 187
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0

    .line 188
    :cond_1
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    goto :goto_1

    .line 189
    :cond_2
    iget-boolean v0, p3, Lcom/android/settings/wifi/AccessPoint;->proxyEnabled:Z

    goto :goto_2
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0c003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 527
    const v1, 0x7f0c008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 529
    return-object v0
.end method

.method private connectWithWps()I
    .locals 12

    .prologue
    const-string v9, "WifiDialog"

    .line 1240
    const/4 v6, 0x0

    .line 1241
    .local v6, wps_error:I
    const/4 v3, 0x0

    .line 1243
    .local v3, msgShow:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1244
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiDialog;->startWpsPbc(Lcom/android/settings/wifi/AccessPoint;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1245
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isWpsPbcActivated()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1246
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0800b2

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1281
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1282
    const-string v7, "WifiDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WPS msgShow "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1285
    .local v2, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0800c2

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v11, v11, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1286
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1287
    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1288
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1289
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->showDialog(Landroid/app/Dialog;)V

    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v2           #dialog:Landroid/app/AlertDialog$Builder;
    :cond_1
    move v7, v6

    .line 1291
    :goto_1
    return v7

    .line 1250
    :cond_2
    const v6, 0x7f0800bf

    goto :goto_0

    .line 1252
    :cond_3
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1253
    .local v4, pin:Ljava/lang/String;
    const/4 v1, 0x1

    .line 1254
    .local v1, bPinCodeValid:Z
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isWpsPinActivated()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1255
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiDialog;->isWpsPinValid(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1257
    :cond_4
    const/4 v1, 0x0

    .line 1261
    :cond_5
    if-nez v1, :cond_6

    .line 1262
    const-string v7, "WifiDialog"

    const-string v7, "The wps pin code you typed is not correct."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const v7, 0x7f0800b6

    goto :goto_1

    .line 1266
    :cond_6
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7, v4}, Lcom/android/settings/wifi/AccessPoint;->setWpsPinCode(Ljava/lang/String;)V

    .line 1267
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiDialog;->startWpsPin(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v5

    .line 1268
    .local v5, pinCode:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1269
    const v7, 0x7f0800bf

    goto :goto_1

    .line 1272
    :cond_7
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isWpsPinActivated()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isWpsPbcActivated()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1273
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0800b4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1274
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1275
    :cond_8
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isWpsPinActivated()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1276
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0800b3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1277
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const-string v2, "\""

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateWpsPinCode()I
    .locals 5

    .prologue
    .line 1387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1388
    .local v0, m:J
    :goto_0
    const-wide/32 v3, 0xf4240

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 1389
    const-wide/16 v3, 0xa

    mul-long/2addr v0, v3

    goto :goto_0

    .line 1391
    :cond_0
    const-wide/32 v3, 0x989680

    rem-long v3, v0, v3

    long-to-int v2, v3

    .line 1394
    .local v2, val:I
    mul-int/lit8 v3, v2, 0xa

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiDialog;->getWpsPinChecksum(I)I

    move-result v4

    add-int/2addr v3, v4

    return v3
.end method

.method private getWAPIASCertFromSpinner()Ljava/lang/String;
    .locals 12

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 653
    const/4 v0, 0x0

    .line 681
    :goto_0
    return-object v0

    .line 655
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 656
    .local v8, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    .line 658
    .local v11, position:I
    const/4 v9, 0x0

    .line 659
    .local v9, cur:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "ascertpath"

    aput-object v1, v2, v0

    .line 661
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/WifiDialog;->CERT_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 667
    :goto_1
    const/4 v6, 0x0

    .line 668
    .local v6, ascertpath:Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v11, :cond_2

    .line 669
    :cond_1
    const-string v0, "WifiDialog"

    const-string v1, "getWAPIASCertFromSpinner cert cert count == 0 or <= position"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v0, 0x0

    goto :goto_0

    .line 663
    .end local v6           #ascertpath:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 664
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "WifiDialog"

    const-string v1, "getWAPIASCertFromSpinner query failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v9, 0x0

    goto :goto_1

    .line 672
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v6       #ascertpath:Ljava/lang/String;
    :cond_2
    const/4 v7, -0x1

    .line 673
    .local v7, col:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    const-string v0, "ascertpath"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 675
    invoke-interface {v9, v11}, Landroid/database/Cursor;->move(I)Z

    .line 676
    new-instance v6, Ljava/lang/String;

    .end local v6           #ascertpath:Ljava/lang/String;
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 678
    .restart local v6       #ascertpath:Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mHasWAPIASCert:Z

    move-object v0, v6

    .line 681
    goto :goto_0
.end method

.method private getWAPIUserCertFromSpinner()Ljava/lang/String;
    .locals 12

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 686
    const/4 v0, 0x0

    .line 714
    :goto_0
    return-object v0

    .line 688
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 689
    .local v7, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    .line 691
    .local v10, position:I
    const/4 v8, 0x0

    .line 692
    .local v8, cur:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "usercertpath"

    aput-object v1, v2, v0

    .line 694
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/WifiDialog;->CERT_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 700
    :goto_1
    const/4 v11, 0x0

    .line 701
    .local v11, usercertpath:Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v10, :cond_2

    .line 702
    :cond_1
    const-string v0, "WifiDialog"

    const-string v1, "getWAPIUserCertFromSpinner cert count == 0 or <= position"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v0, 0x0

    goto :goto_0

    .line 696
    .end local v11           #usercertpath:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 697
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WifiDialog"

    const-string v1, "getWAPIUserASCertFromSpinner query failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v8, 0x0

    goto :goto_1

    .line 705
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v11       #usercertpath:Ljava/lang/String;
    :cond_2
    const/4 v6, -0x1

    .line 706
    .local v6, col:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 707
    const-string v0, "usercertpath"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 708
    invoke-interface {v8, v10}, Landroid/database/Cursor;->move(I)Z

    .line 709
    new-instance v11, Ljava/lang/String;

    .end local v11           #usercertpath:Ljava/lang/String;
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 711
    .restart local v11       #usercertpath:Ljava/lang/String;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mHasWAPIUserCert:Z

    move-object v0, v11

    .line 714
    goto :goto_0
.end method

.method private getWpsPinChecksum(I)I
    .locals 3
    .parameter "pin"

    .prologue
    .line 1402
    const/4 v0, 0x0

    .line 1403
    .local v0, accum:I
    :goto_0
    if-eqz p1, :cond_0

    .line 1404
    rem-int/lit8 v1, p1, 0xa

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 1405
    div-int/lit8 p1, p1, 0xa

    .line 1406
    rem-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    .line 1407
    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    .line 1410
    :cond_0
    const/16 v1, 0xa

    rem-int/lit8 v2, v0, 0xa

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0xa

    return v1
.end method

.method private handleNetworkModeChange(I)V
    .locals 11
    .parameter "networkMode"

    .prologue
    const v10, 0x7f0c008f

    const v9, 0x7f0c003d

    const v8, 0x7f0803e8

    const/4 v7, 0x1

    .line 1003
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1004
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_0

    .line 1007
    if-eqz p1, :cond_2

    .line 1008
    const v2, 0x7f05001d

    .line 1015
    .local v2, tmp:I
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1018
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1020
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1022
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #tmp:I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurityRow:Landroid/view/View;

    if-nez v4, :cond_4

    .line 1052
    :cond_1
    :goto_1
    return-void

    .line 1009
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->isWapiSupported(Landroid/content/Context;)Z

    move-result v4

    if-ne v7, v4, :cond_3

    .line 1010
    const v2, 0x7f050015

    .restart local v2       #tmp:I
    goto :goto_0

    .line 1012
    .end local v2           #tmp:I
    :cond_3
    const v2, 0x7f050014

    .restart local v2       #tmp:I
    goto :goto_0

    .line 1023
    .end local v2           #tmp:I
    :cond_4
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1028
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->isWapiSupported(Landroid/content/Context;)Z

    move-result v4

    if-ne v7, v4, :cond_6

    .line 1029
    const v4, 0x7f050015

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1033
    .local v3, type:[Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1034
    array-length v4, v3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-le v4, v5, :cond_1

    .line 1037
    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurityRow:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1038
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurityRow:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1031
    .end local v3           #type:[Ljava/lang/String;
    :cond_6
    const v4, 0x7f050014

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .restart local v3       #type:[Ljava/lang/String;
    goto :goto_2

    .line 1043
    .end local v3           #type:[Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f05001d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1044
    .restart local v3       #type:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1045
    array-length v4, v3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-le v4, v5, :cond_1

    .line 1047
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurityRow:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1048
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurityRow:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1023
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isWpsPinValid(I)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 1398
    div-int/lit8 v0, p1, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getWpsPinChecksum(I)I

    move-result v0

    rem-int/lit8 v1, p1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 964
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 965
    .local v2, certs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 966
    .local v3, context:Landroid/content/Context;
    const v5, 0x7f0803f6

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 968
    .local v4, unspecified:Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 969
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #certs:[Ljava/lang/String;
    aput-object v4, v2, v6

    .line 977
    .restart local v2       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 979
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 980
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 981
    return-void

    .line 971
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 972
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v6

    .line 973
    array-length v5, v2

    invoke-static {v2, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 974
    move-object v2, v1

    goto :goto_0
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .parameter "config"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 171
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 173
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 174
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "keystore://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    .line 178
    .end local v3           #value:Ljava/lang/String;
    :goto_1
    return v5

    .line 173
    .restart local v3       #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #value:Ljava/lang/String;
    :cond_1
    move v5, v7

    .line 178
    goto :goto_1
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 985
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 988
    :cond_0
    return-void
.end method

.method private setGenericPasswordVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1057
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 1058
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1060
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1061
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1063
    :cond_0
    return-void

    .line 1057
    .end local v0           #visibility:I
    :cond_1
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0
.end method

.method private setProxyVisible(Z)V
    .locals 4
    .parameter "bVisible"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1425
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyHostText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1426
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyHostEdit:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1427
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyPortText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1428
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyPortEdit:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1429
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyExceptionsText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1430
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyExceptionsEdit:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1431
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyExceptionsExampleText:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1432
    return-void

    :cond_0
    move v1, v3

    .line 1425
    goto :goto_0

    :cond_1
    move v1, v3

    .line 1426
    goto :goto_1

    :cond_2
    move v1, v3

    .line 1427
    goto :goto_2

    :cond_3
    move v1, v3

    .line 1428
    goto :goto_3

    :cond_4
    move v1, v3

    .line 1429
    goto :goto_4

    :cond_5
    move v1, v3

    .line 1430
    goto :goto_5

    :cond_6
    move v1, v3

    .line 1431
    goto :goto_6
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 4
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 991
    if-eqz p2, :cond_0

    .line 992
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 993
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 994
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 995
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1000
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 993
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setWAPIASCertSpinnerAdapter()V
    .locals 22

    .prologue
    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 842
    .local v12, context:Landroid/content/Context;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiDialog;->mHasWAPIASCert:Z

    .line 843
    const/16 v21, 0x0

    .line 845
    .local v21, wapiCertNames:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 846
    .local v13, cur:Landroid/database/Cursor;
    const/4 v14, -0x1

    .line 847
    .local v14, curCert:I
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ascertpath"

    aput-object v5, v6, v4

    .line 849
    .local v6, projection:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/settings/wifi/WifiDialog;->CERT_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 856
    :goto_0
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 857
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 858
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    .end local v6           #projection:[Ljava/lang/String;
    const v7, 0x7f080713

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v21, v4

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 889
    :cond_1
    :goto_1
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    move-object v0, v10

    move-object v1, v12

    move v2, v4

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 892
    .local v10, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v10, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    if-eqz v4, :cond_2

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    invoke-virtual {v4, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 895
    if-ltz v14, :cond_2

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    invoke-virtual {v4, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 898
    :cond_2
    return-void

    .line 851
    .end local v10           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v6       #projection:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v15, v4

    .line 852
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "WifiDialog"

    const-string v5, "query failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v13, 0x0

    goto :goto_0

    .line 862
    .end local v15           #e:Ljava/lang/Exception;
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 863
    .local v17, iWAPICertCount:I
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 864
    const/4 v11, -0x1

    .line 865
    .local v11, col:I
    const/16 v16, 0x0

    .line 866
    .local v16, i:I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 867
    const-string v4, "ascertpath"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 870
    :cond_4
    new-instance v19, Ljava/lang/String;

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 871
    .local v19, str:Ljava/lang/String;
    const/16 v4, 0x2f

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 872
    .local v18, index:I
    const/16 v20, 0x0

    .line 873
    .local v20, strCurrent:Ljava/lang/String;
    if-lez v18, :cond_8

    .line 874
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 877
    :goto_2
    aput-object v20, v21, v16

    .line 878
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 879
    move/from16 v14, v16

    .line 881
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 882
    :cond_5
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiDialog;->mHasWAPIASCert:Z

    .line 884
    .end local v18           #index:I
    .end local v19           #str:Ljava/lang/String;
    .end local v20           #strCurrent:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    if-eqz v4, :cond_7

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 886
    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 876
    .restart local v18       #index:I
    .restart local v19       #str:Ljava/lang/String;
    .restart local v20       #strCurrent:Ljava/lang/String;
    :cond_8
    move-object/from16 v20, v19

    goto :goto_2
.end method

.method private setWAPIUserCertSpinnerAdapter()V
    .locals 22

    .prologue
    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 903
    .local v12, context:Landroid/content/Context;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiDialog;->mHasWAPIUserCert:Z

    .line 904
    const/16 v21, 0x0

    .line 906
    .local v21, wapiCertNames:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 907
    .local v13, cur:Landroid/database/Cursor;
    const/4 v14, -0x1

    .line 908
    .local v14, curCert:I
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "usercertpath"

    aput-object v5, v6, v4

    .line 910
    .local v6, projection:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/settings/wifi/WifiDialog;->CERT_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 916
    :goto_0
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 917
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 918
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    .end local v6           #projection:[Ljava/lang/String;
    const v7, 0x7f080713

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v21, v4

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 951
    :cond_1
    :goto_1
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    move-object v0, v10

    move-object v1, v12

    move v2, v4

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 954
    .local v10, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v10, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    if-eqz v4, :cond_2

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    invoke-virtual {v4, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 958
    if-ltz v14, :cond_2

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    invoke-virtual {v4, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 961
    :cond_2
    return-void

    .line 912
    .end local v10           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v6       #projection:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v15, v4

    .line 913
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "WifiDialog"

    const-string v5, "query failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v13, 0x0

    goto :goto_0

    .line 922
    .end local v15           #e:Ljava/lang/Exception;
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 923
    .local v17, iWAPICertCount:I
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 924
    const/4 v11, -0x1

    .line 925
    .local v11, col:I
    const/16 v16, 0x0

    .line 926
    .local v16, i:I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 927
    const-string v4, "usercertpath"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 931
    :cond_4
    new-instance v19, Ljava/lang/String;

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 932
    .local v19, str:Ljava/lang/String;
    const/16 v4, 0x2f

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 934
    .local v18, index:I
    const/16 v20, 0x0

    .line 935
    .local v20, strCurrent:Ljava/lang/String;
    if-lez v18, :cond_8

    .line 936
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 939
    :goto_2
    aput-object v20, v21, v16

    .line 940
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 941
    move/from16 v14, v16

    .line 943
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 944
    :cond_5
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiDialog;->mHasWAPIUserCert:Z

    .line 946
    .end local v18           #index:I
    .end local v19           #str:Ljava/lang/String;
    .end local v20           #strCurrent:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    if-eqz v4, :cond_7

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 948
    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 938
    .restart local v18       #index:I
    .restart local v19       #str:Ljava/lang/String;
    .restart local v20       #strCurrent:Ljava/lang/String;
    :cond_8
    move-object/from16 v20, v19

    goto :goto_2
.end method

.method private setWpsMethodVisible(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    const/4 v4, 0x1

    const/16 v1, 0x8

    const/4 v6, 0x0

    .line 1119
    if-nez p1, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1122
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isWpsPbcActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1157
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getVerboseWpsInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800af

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const-string v5, "WPS-PBC"

    :goto_2
    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1131
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isWpsPinActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1132
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1134
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1135
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1137
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1139
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1142
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_1

    .line 1145
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_1

    .line 1157
    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const-string v5, "WPS-PIN"

    goto :goto_2
.end method

.method private showDialog(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mMsgDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mMsgDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1300
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mMsgDialog:Landroid/app/Dialog;

    .line 1301
    if-eqz p1, :cond_1

    .line 1302
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1304
    :cond_1
    return-void
.end method

.method private showSecurityFields()V
    .locals 9

    .prologue
    const v8, 0x7f0c0129

    const v7, 0x7f0c0115

    const v4, 0x7f0c0114

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 730
    iget v2, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-nez v2, :cond_1

    .line 731
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0113

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0113

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 736
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 737
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    .line 738
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPasswordText:Landroid/widget/TextView;

    .line 739
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 741
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mShowPassword:Landroid/widget/CheckBox;

    .line 742
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 746
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    const v3, 0x7f0803f5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 749
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 750
    iget v2, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 751
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0138

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 754
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 755
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0136

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 772
    :cond_3
    :goto_1
    iget v2, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    .line 773
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 803
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 805
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskType:Landroid/widget/Spinner;

    .line 806
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskType:Landroid/widget/Spinner;

    if-eqz v2, :cond_5

    .line 807
    iget v2, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_9

    .line 808
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 821
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c012b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mCertificateManageText:Landroid/widget/TextView;

    .line 822
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mCertificateManageText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 823
    iget v2, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_c

    .line 824
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiDialog;->setGenericPasswordVisible(Z)V

    .line 825
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mCertificateManageText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 757
    :cond_6
    iget v2, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 758
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0138

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 760
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 761
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 762
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0136

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 764
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0136

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 765
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 766
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 767
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 768
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0138

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 776
    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 778
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    if-nez v2, :cond_4

    .line 779
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    .line 780
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c011f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    .line 781
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0120

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    .line 782
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0121

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    .line 783
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0122

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    .line 784
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0123

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    .line 786
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    const-string v3, "CACERT_"

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 787
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    const-string v3, "USRPKEY_"

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 789
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 790
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 791
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 792
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 793
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    const-string v3, "CACERT_"

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    const-string v3, "USRPKEY_"

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 810
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 811
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 812
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 813
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskMode:I

    .line 814
    .local v1, pt:I
    if-nez v1, :cond_a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    .line 815
    :cond_a
    const/4 v1, 0x0

    .line 816
    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 827
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #pt:I
    :cond_c
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiDialog;->setGenericPasswordVisible(Z)V

    .line 828
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mCertificateManageText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private showSecurityWPSFields()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1066
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isWpsSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c0113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 1080
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c0129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPasswordText:Landroid/widget/TextView;

    .line 1081
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c0114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    .line 1082
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1084
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c0115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mShowPassword:Landroid/widget/CheckBox;

    .line 1085
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1089
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    const v1, 0x7f0803f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 1093
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->hasSecurity()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1094
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->setGenericPasswordVisible(Z)V

    .line 1097
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    .line 1101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_6

    .line 1102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    .line 1104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    .line 1105
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c0127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeText:Landroid/widget/TextView;

    .line 1108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    .line 1109
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    .line 1110
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1111
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1114
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->updateWpsMethodVisible()V

    goto/16 :goto_0
.end method

.method private updateProxyVisible()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1435
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    .line 1462
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxySettingsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1439
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1440
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->mUpdateProxy:Z

    if-eqz v1, :cond_8

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1441
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mUpdateProxy:Z

    if-eqz v0, :cond_9

    :cond_3
    move v0, v3

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setProxyVisible(Z)V

    .line 1442
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mUpdateProxy:Z

    if-eqz v0, :cond_a

    :cond_4
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabled:Z

    .line 1443
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyHostEdit:Landroid/widget/EditText;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1444
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyPortEdit:Landroid/widget/EditText;

    const v1, 0x7f0801cb

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1445
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyExceptionsEdit:Landroid/widget/EditText;

    const v1, 0x7f0801cd

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1446
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_7

    .line 1447
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->proxyHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1448
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyHostEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->proxyHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->proxyPort:I

    if-lez v0, :cond_6

    .line 1451
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyPortEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->proxyPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1453
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->proxyExceptions:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1454
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyExceptionsEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->proxyExceptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mUpdateProxy:Z

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 1459
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    .line 1460
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->requestFocus()Z

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 1440
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 1441
    goto :goto_2

    :cond_a
    move v0, v2

    .line 1442
    goto :goto_3
.end method

.method private updateWpsMethodVisible()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1163
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isWpsSupported()Z

    move-result v0

    .line 1168
    .local v0, bVisible:Z
    if-nez v0, :cond_2

    .line 1169
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1170
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiDialog;->setWpsMethodVisible(Z)V

    goto :goto_0

    .line 1174
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMode:Ljava/lang/String;

    .line 1175
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1176
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isWpsPbcActivated()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isWpsPinActivated()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1177
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1180
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1181
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiDialog;->setWpsMethodVisible(Z)V

    .line 1182
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiDialog;->setGenericPasswordVisible(Z)V

    goto :goto_0

    .line 1184
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiDialog;->setWpsMethodVisible(Z)V

    .line 1185
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getVerboseWpsInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800af

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const-string v6, "WPS"

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->hasSecurity()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1187
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiDialog;->setGenericPasswordVisible(Z)V

    goto/16 :goto_0

    .line 1189
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiDialog;->setGenericPasswordVisible(Z)V

    goto/16 :goto_0
.end method

.method private validate()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 533
    const/4 v0, 0x0

    .line 535
    .local v0, minWEPPassWdLen:I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isWpsSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->hasSecurity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 556
    :goto_0
    return-void

    .line 541
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->netMode:I

    if-ne v1, v4, :cond_6

    const/16 v1, 0xa

    move v0, v1

    .line 543
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v1, v3, :cond_7

    :cond_2
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lt v1, v0, :cond_5

    :cond_3
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lt v1, v5, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ge v1, v5, :cond_7

    .line 552
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 541
    :cond_6
    const/4 v1, 0x5

    move v0, v1

    goto :goto_1

    .line 554
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private validateProxyFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "proxyHost"
    .parameter "proxyPort"
    .parameter "proxyExceptions"

    .prologue
    .line 1465
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1466
    const-string v2, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    .line 1467
    .local v2, hostRegexp:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1468
    .local v1, hostPattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1469
    .local v4, match:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1470
    const-string p1, ""

    .line 1471
    const v7, 0x7f08030e

    .line 1514
    .end local v1           #hostPattern:Ljava/util/regex/Pattern;
    .end local v2           #hostRegexp:Ljava/lang/String;
    .end local v4           #match:Ljava/util/regex/Matcher;
    :goto_0
    return v7

    .line 1475
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1476
    const v7, 0x7f08030f

    goto :goto_0

    .line 1479
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1480
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1481
    const v7, 0x7f080310

    goto :goto_0

    .line 1484
    :cond_2
    const/4 v5, 0x0

    .line 1486
    .local v5, port:I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1489
    :goto_1
    if-lez v5, :cond_3

    const v7, 0xffff

    if-le v5, v7, :cond_4

    .line 1490
    :cond_3
    const v7, 0x7f080311

    goto :goto_0

    .line 1493
    .end local v5           #port:I
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1494
    const-string v2, "^$|^[\\*a-zA-Z0-9]+(\\-[\\*a-zA-Z0-9]+)*(\\.[\\*a-zA-Z0-9]+(\\-[\\*a-zA-Z0-9]+)*)*$"

    .line 1495
    .restart local v2       #hostRegexp:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1496
    .restart local v1       #hostPattern:Ljava/util/regex/Pattern;
    const/4 v6, 0x0

    .line 1498
    .local v6, res:I
    const-string v7, "[;,]"

    invoke-virtual {p3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, exceptions:[Ljava/lang/String;
    const-string p3, ""

    .line 1500
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_7

    .line 1501
    aget-object v7, v0, v3

    invoke-virtual {v1, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1502
    .restart local v4       #match:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1503
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1504
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1506
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1500
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1508
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .end local v4           #match:Ljava/util/regex/Matcher;
    :cond_7
    move v7, v6

    .line 1511
    goto/16 :goto_0

    .line 1514
    .end local v0           #exceptions:[Ljava/lang/String;
    .end local v1           #hostPattern:Ljava/util/regex/Pattern;
    .end local v2           #hostRegexp:Ljava/lang/String;
    .end local v3           #i:I
    .end local v6           #res:I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1487
    .restart local v5       #port:I
    :catch_0
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public WapiCertAddNetowrkDialogResume()V
    .locals 3

    .prologue
    .line 719
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 720
    const-string v0, "WifiDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WapiCertAddNetowrkDialogResume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V

    .line 722
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 723
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 635
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 631
    return-void
.end method

.method public getAPInstance()Lcom/android/settings/wifi/AccessPoint;
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    return-object v0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 11

    .prologue
    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x22

    const-string v9, ""

    .line 193
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v5, :cond_0

    .line 194
    const/4 v5, 0x0

    .line 313
    :goto_0
    return-object v5

    .line 197
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 199
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v5, :cond_5

    .line 200
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 203
    iput-boolean v8, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 204
    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 205
    iget v5, p0, Lcom/android/settings/wifi/WifiDialog;->netMode:I

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkMode:I

    .line 206
    iget v5, p0, Lcom/android/settings/wifi/WifiDialog;->netMode:I

    if-ne v5, v8, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_adhoc_channel_number"

    invoke-static {v5, v6, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 209
    .local v0, channelNum:I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 210
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    if-lt v0, v8, :cond_1

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getNumAllowedChannels()I

    move-result v5

    if-le v0, v5, :cond_2

    .line 211
    :cond_1
    const/4 v0, 0x1

    .line 213
    :cond_2
    invoke-static {v0}, Lcom/android/settings/wifi/WifiAdhoc;->mapChannelNumToFreq(I)I

    move-result v5

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 220
    .end local v0           #channelNum:I
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_4

    .line 222
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkMode:I

    .line 223
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 226
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDialog;->updateProxyFieldsToConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 227
    iget v5, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    packed-switch v5, :pswitch_data_0

    .line 313
    const/4 v5, 0x0

    goto :goto_0

    .line 215
    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v5, v6, :cond_6

    .line 216
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 218
    :cond_6
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 229
    :pswitch_0
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v10}, Ljava/util/BitSet;->set(I)V

    move-object v5, v1

    .line 230
    goto/16 :goto_0

    .line 233
    :pswitch_1
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v10}, Ljava/util/BitSet;->set(I)V

    .line 234
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v10}, Ljava/util/BitSet;->set(I)V

    .line 235
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    .line 236
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-eqz v5, :cond_8

    .line 237
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 238
    .local v2, length:I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, password:Ljava/lang/String;
    const/16 v5, 0xa

    if-eq v2, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_7

    const/16 v5, 0x3a

    if-ne v2, v5, :cond_9

    :cond_7
    const-string v5, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 242
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v5, v10

    .end local v2           #length:I
    .end local v3           #password:Ljava/lang/String;
    :cond_8
    :goto_2
    move-object v5, v1

    .line 247
    goto/16 :goto_0

    .line 244
    .restart local v2       #length:I
    .restart local v3       #password:Ljava/lang/String;
    :cond_9
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    goto :goto_2

    .line 250
    .end local v2           #length:I
    .end local v3           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    .line 251
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-eqz v5, :cond_a

    .line 252
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .restart local v3       #password:Ljava/lang/String;
    const-string v5, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 254
    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .end local v3           #password:Ljava/lang/String;
    :cond_a
    :goto_3
    move-object v5, v1

    .line 259
    goto/16 :goto_0

    .line 256
    .restart local v3       #password:Ljava/lang/String;
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 262
    .end local v3           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 263
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 264
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 265
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    if-nez v6, :cond_d

    const-string v6, ""

    move-object v6, v9

    :goto_4
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 267
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_e

    const-string v5, ""

    move-object v5, v9

    :goto_5
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 270
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_f

    const-string v5, ""

    move-object v5, v9

    :goto_6
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 273
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_10

    const-string v5, ""

    move-object v5, v9

    :goto_7
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 276
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-nez v6, :cond_11

    const-string v6, ""

    move-object v6, v9

    :goto_8
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 278
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-nez v6, :cond_12

    const-string v6, ""

    move-object v6, v9

    :goto_9
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-eqz v5, :cond_c

    .line 281
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    :cond_c
    move-object v5, v1

    .line 283
    goto/16 :goto_0

    .line 265
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 267
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://CACERT_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 270
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://USRCERT_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 273
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://USRPKEY_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 276
    :cond_11
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_8

    .line 278
    :cond_12
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_9

    .line 287
    :pswitch_4
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 288
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 289
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->wapiPskMode:I

    .line 290
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 292
    :cond_13
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 293
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v5

    if-nez v5, :cond_14

    .line 294
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-eqz v5, :cond_14

    .line 295
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .restart local v3       #password:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->wapiPskMode:I

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .end local v3           #password:Ljava/lang/String;
    :cond_14
    move-object v5, v1

    .line 300
    goto/16 :goto_0

    .line 303
    :pswitch_5
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 304
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->getWAPIASCertFromSpinner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->getWAPIUserCertFromSpinner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 307
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 309
    :cond_15
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    move-object v5, v1

    .line 310
    goto/16 :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleWPSConnect()I
    .locals 2

    .prologue
    .line 1230
    const/4 v0, 0x0

    .line 1231
    .local v0, result:I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1232
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->connectWithWps()I

    move-result v0

    .line 1236
    :goto_0
    return v0

    .line 1235
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 560
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_2

    .line 561
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 562
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiDialog;->setWpsMethodVisible(Z)V

    .line 563
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiDialog;->setGenericPasswordVisible(Z)V

    .line 625
    .end local p1
    :goto_0
    return-void

    .line 566
    .restart local p1
    :cond_0
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiDialog;->setWpsMethodVisible(Z)V

    .line 567
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->hasSecurity()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 568
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiDialog;->setGenericPasswordVisible(Z)V

    goto :goto_0

    .line 571
    :cond_1
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiDialog;->setGenericPasswordVisible(Z)V

    goto :goto_0

    .line 575
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_5

    .line 576
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 577
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 584
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMethodCheckBox:Landroid/widget/CheckBox;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->getVerboseWpsInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0800af

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mPushButtonCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const-string v9, "WPS-PBC"

    :goto_2
    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 580
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeText:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 582
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsPinCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 584
    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const-string v9, "WPS-PIN"

    goto :goto_2

    .line 589
    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_7

    .line 590
    const/4 v3, 0x0

    .line 591
    .local v3, networkMode:I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 592
    const/4 v3, 0x1

    .line 594
    :cond_6
    iput v3, p0, Lcom/android/settings/wifi/WifiDialog;->netMode:I

    .line 595
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->handleNetworkModeChange(I)V

    goto/16 :goto_0

    .line 596
    .end local v3           #networkMode:I
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mCertificateManageButton:Landroid/widget/Button;

    if-ne p1, v4, :cond_8

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 598
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 599
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.motorola.wapicertificatemanager"

    const-string v5, "com.motorola.wapicertificatemanager.CertificateManageActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 602
    :catch_0
    move-exception v1

    .line 603
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "WifiDialog"

    const-string v5, "No proper activity can be launched to view vnd.motorola.wapi.certs"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 606
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_a

    .line 607
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 608
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiDialog;->setProxyVisible(Z)V

    .line 609
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyHostEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 610
    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabled:Z

    goto/16 :goto_0

    .line 612
    :cond_9
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiDialog;->setProxyVisible(Z)V

    .line 613
    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabled:Z

    goto/16 :goto_0

    .line 620
    :cond_a
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x90

    :goto_3
    or-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0x80

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 318
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030059

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 323
    :goto_0
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/View;->setOverScrollMode(I)V

    .line 324
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 325
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 327
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyModifiable:Z

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 329
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 330
    .local v6, resources:Landroid/content/res/Resources;
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c011c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    .line 332
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    if-eqz v11, :cond_0

    .line 333
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    :goto_1
    iput v11, p0, Lcom/android/settings/wifi/WifiDialog;->netMode:I

    .line 339
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 341
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c012b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mCertificateManageText:Landroid/widget/TextView;

    .line 342
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c013d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mCertificateManageButton:Landroid/widget/Button;

    .line 343
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mCertificateManageButton:Landroid/widget/Button;

    if-eqz v11, :cond_1

    .line 344
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mCertificateManageButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    :cond_1
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c0137

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskType:Landroid/widget/Spinner;

    .line 347
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c011c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    .line 349
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    if-eqz v11, :cond_2

    .line 350
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    :goto_2
    iput v11, p0, Lcom/android/settings/wifi/WifiDialog;->netMode:I

    .line 356
    :cond_2
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c013a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    .line 358
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    if-eqz v11, :cond_3

    .line 359
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 360
    :cond_3
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c013c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    .line 361
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v11, :cond_4

    .line 362
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 363
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->setWAPIASCertSpinnerAdapter()V

    .line 364
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->setWAPIUserCertSpinnerAdapter()V

    .line 368
    :cond_5
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c012c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxySettingsText:Landroid/widget/TextView;

    .line 369
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c012d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    .line 370
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    if-eqz v11, :cond_7

    .line 371
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c012e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyHostText:Landroid/widget/TextView;

    .line 373
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c012f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyHostEdit:Landroid/widget/EditText;

    .line 374
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c0130

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyPortText:Landroid/widget/TextView;

    .line 375
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c0131

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyPortEdit:Landroid/widget/EditText;

    .line 376
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyPortEdit:Landroid/widget/EditText;

    if-eqz v11, :cond_6

    .line 377
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyPortEdit:Landroid/widget/EditText;

    const/16 v12, 0x1002

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 379
    :cond_6
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c0132

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyExceptionsText:Landroid/widget/TextView;

    .line 380
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c0133

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyExceptionsEdit:Landroid/widget/EditText;

    .line 381
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c0134

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyExceptionsExampleText:Landroid/widget/TextView;

    .line 384
    :cond_7
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v11, :cond_e

    .line 385
    const v11, 0x7f0803de

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiDialog;->setTitle(I)V

    .line 386
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c010f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c0110

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    .line 388
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 391
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c0112

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 392
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 394
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyModifiable:Z

    .line 395
    const/4 v11, -0x1

    const v12, 0x7f0803ff

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 398
    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/wifi/AccessPoint;->isWapiSupported(Landroid/content/Context;)Z

    move-result v12

    if-ne v11, v12, :cond_d

    .line 399
    const v9, 0x7f050015

    .line 403
    .local v9, tmp:I
    :goto_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x1090008

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v11, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 406
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v11, 0x1090009

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 408
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 486
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v9           #tmp:I
    :cond_8
    :goto_4
    iget-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyModifiable:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1d

    .line 487
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->updateProxyVisible()V

    .line 502
    :goto_5
    const/4 v11, -0x2

    const v12, 0x7f080400

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 505
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 507
    const/4 v11, -0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 508
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 510
    :cond_9
    return-void

    .line 321
    .end local v2           #context:Landroid/content/Context;
    .end local v6           #resources:Landroid/content/res/Resources;
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030058

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 334
    .restart local v2       #context:Landroid/content/Context;
    .restart local v6       #resources:Landroid/content/res/Resources;
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 351
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 401
    :cond_d
    const v9, 0x7f050014

    .restart local v9       #tmp:I
    goto :goto_3

    .line 411
    .end local v9           #tmp:I
    :cond_e
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v11, v11, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c010e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 414
    .local v3, group:Landroid/view/ViewGroup;
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    .line 415
    .local v8, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v8, :cond_f

    .line 416
    const v11, 0x7f0803ea

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 420
    :cond_f
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getNetworkMode()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17

    .line 421
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 422
    const v11, 0x7f05001d

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 434
    .local v10, type:[Ljava/lang/String;
    :goto_6
    array-length v11, v10

    iget-object v12, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-gt v11, v12, :cond_10

    invoke-static {}, Lcom/android/settings/wifi/AccessPoint;->isWapiForOlympus()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 435
    :cond_10
    const v11, 0x7f0803e8

    iget-object v12, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v12, v10, v12

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurityRow:Landroid/view/View;

    .line 438
    :cond_11
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->isWpsSupported()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 439
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_12

    .line 440
    const v11, 0x7f0800a8

    const v12, 0x7f0800ae

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 445
    :cond_12
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v5

    .line 446
    .local v5, level:I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_13

    .line 447
    const v11, 0x7f05001f

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 448
    .local v7, signal:[Ljava/lang/String;
    const v11, 0x7f0803e9

    aget-object v12, v7, v5

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 451
    .end local v7           #signal:[Ljava/lang/String;
    :cond_13
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 452
    .local v4, info:Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_14

    .line 454
    const v11, 0x7f0803eb

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f080225

    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 457
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 458
    .local v1, address:I
    if-eqz v1, :cond_14

    .line 459
    const v11, 0x7f0803ec

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 463
    .end local v1           #address:I
    :cond_14
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_15

    iget-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-eqz v11, :cond_16

    .line 464
    :cond_15
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->isWpsSupported()Z

    move-result v11

    if-eqz v11, :cond_19

    .line 465
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityWPSFields()V

    .line 471
    :cond_16
    :goto_7
    iget-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-eqz v11, :cond_1a

    .line 472
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyModifiable:Z

    .line 473
    const/4 v11, -0x1

    const v12, 0x7f0803ff

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_4

    .line 424
    .end local v4           #info:Landroid/net/wifi/WifiInfo;
    .end local v5           #level:I
    .end local v10           #type:[Ljava/lang/String;
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/wifi/AccessPoint;->isWapiSupported(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 425
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 426
    const v11, 0x7f050015

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .restart local v10       #type:[Ljava/lang/String;
    goto/16 :goto_6

    .line 429
    .end local v10           #type:[Ljava/lang/String;
    :cond_18
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mNetworkModeCheckBox:Landroid/widget/CheckBox;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 430
    const v11, 0x7f050014

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .restart local v10       #type:[Ljava/lang/String;
    goto/16 :goto_6

    .line 467
    .restart local v4       #info:Landroid/net/wifi/WifiInfo;
    .restart local v5       #level:I
    :cond_19
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V

    goto :goto_7

    .line 475
    :cond_1a
    if-nez v8, :cond_1c

    const/4 v11, -0x1

    if-ne v5, v11, :cond_1b

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->networkMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1c

    .line 477
    :cond_1b
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyModifiable:Z

    .line 478
    const/4 v11, -0x1

    const v12, 0x7f0803fd

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 480
    :cond_1c
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_8

    .line 481
    const/4 v11, -0x3

    const v12, 0x7f0803fe

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_4

    .line 489
    .end local v3           #group:Landroid/view/ViewGroup;
    .end local v4           #info:Landroid/net/wifi/WifiInfo;
    .end local v5           #level:I
    .end local v8           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v10           #type:[Ljava/lang/String;
    :cond_1d
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 490
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/WifiDialog;->setProxyVisible(Z)V

    .line 491
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0c0135

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 492
    .restart local v3       #group:Landroid/view/ViewGroup;
    iget-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabled:Z

    if-nez v11, :cond_1e

    .line 493
    const v11, 0x7f0801d0

    const-string v12, " "

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    goto/16 :goto_5

    .line 495
    :cond_1e
    const v11, 0x7f0801c8

    iget-object v12, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v12, v12, Lcom/android/settings/wifi/AccessPoint;->proxyHost:Ljava/lang/String;

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 496
    const v11, 0x7f0801ca

    iget-object v12, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->proxyPort:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 497
    const v11, 0x7f0801cc

    iget-object v12, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v12, v12, Lcom/android/settings/wifi/AccessPoint;->proxyExceptions:Ljava/lang/String;

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    goto/16 :goto_5
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isWpsSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    iput p3, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 641
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityWPSFields()V

    .line 647
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 648
    return-void

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c0112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 643
    iput p3, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 644
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 727
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 515
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 516
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isWpsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->hasSecurity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->updateWpsMethodVisible()V

    .line 521
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 628
    return-void
.end method

.method public onWpsEventAvailable(Lcom/android/settings/wifi/AccessPoint;ILjava/lang/String;)V
    .locals 8
    .parameter "ap"
    .parameter "event"
    .parameter "info"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1195
    if-eq p2, v4, :cond_0

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    .line 1198
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->isWpsSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1223
    :cond_1
    :goto_0
    return-void

    .line 1202
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMode:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mWpsMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->wpsMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1203
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->updateWpsMethodVisible()V

    goto :goto_0

    .line 1206
    :cond_4
    const/16 v2, 0x6d

    if-ne p2, v2, :cond_5

    .line 1207
    if-eqz p1, :cond_1

    .line 1208
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1209
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800c2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1210
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1211
    const v2, 0x104000a

    invoke-virtual {v1, v2, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1212
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1213
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 1215
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #dialog:Landroid/app/AlertDialog$Builder;
    :cond_5
    const/16 v2, 0x6e

    if-ne p2, v2, :cond_1

    .line 1216
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mMsgDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mMsgDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mMsgDialog:Landroid/app/Dialog;

    instance-of v2, v2, Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mMsgDialog:Landroid/app/Dialog;

    instance-of v2, v2, Lcom/android/settings/wifi/WifiDialog;

    if-nez v2, :cond_1

    .line 1219
    const-string v2, "WifiDialog"

    const-string v3, "WPS EVENT: WPS_MSG_DISMISS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiDialog;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public readWpsString(I)Ljava/lang/String;
    .locals 1
    .parameter "ResId"

    .prologue
    .line 1415
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProxySettingsConfig(Z)V
    .locals 0
    .parameter "changeConfig"

    .prologue
    .line 1549
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiDialog;->mUpdateProxy:Z

    .line 1550
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->updateProxyVisible()V

    .line 1551
    return-void
.end method

.method protected setupWAPICertSpinnerAdapter()V
    .locals 0

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->setWAPIASCertSpinnerAdapter()V

    .line 838
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->setWAPIUserCertSpinnerAdapter()V

    .line 839
    return-void
.end method

.method public startWpsPbc(Lcom/android/settings/wifi/AccessPoint;)Z
    .locals 6
    .parameter "state"

    .prologue
    const-string v5, "WifiDialog"

    .line 1317
    iget-object v3, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1318
    .local v2, ssid:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1319
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1320
    const/4 v2, 0x0

    .line 1323
    :cond_0
    const-string v0, "any"

    .line 1324
    .local v0, bssid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1325
    const/4 v0, 0x0

    .line 1328
    :cond_1
    const-string v3, "WifiDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start WPS-PBC method, SSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/WifiManager;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1330
    const-string v3, "WifiDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not start WPS-PBC method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const/4 v3, 0x0

    .line 1335
    :goto_0
    return v3

    .line 1334
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/settings/wifi/AccessPoint;->setWpsPinCode(Ljava/lang/String;)V

    .line 1335
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public startWpsPin(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;
    .locals 8
    .parameter "state"

    .prologue
    const/16 v7, 0x8

    const-string v6, "WifiDialog"

    .line 1347
    iget-object v4, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1348
    .local v3, ssid:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1349
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1350
    const/4 v3, 0x0

    .line 1353
    :cond_0
    const-string v0, "any"

    .line 1354
    .local v0, bssid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1355
    const/4 v0, 0x0

    .line 1358
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getWpsPinCode()Ljava/lang/String;

    move-result-object v2

    .line 1359
    .local v2, pinCode:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v7, :cond_3

    .line 1360
    :cond_2
    const-string v4, "WifiDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start WPS-PIN with a empty or error pin code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const/4 v2, 0x0

    .line 1364
    :cond_3
    const-string v4, "WifiDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start WPS-PIN method, SSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", BSSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pinCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-virtual {v1, v3, v0, v2}, Landroid/net/wifi/WifiManager;->startWpsPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1367
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiDialog;->isWpsPinValid(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1369
    :cond_4
    const-string v4, "WifiDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not start WPS-PIN method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v4, 0x0

    .line 1375
    :goto_0
    return-object v4

    .line 1373
    :cond_5
    const-string v4, "WifiDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WPS-PIN method is started, the using pin code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-virtual {p1, v2}, Lcom/android/settings/wifi/AccessPoint;->setWpsPinCode(Ljava/lang/String;)V

    move-object v4, v2

    .line 1375
    goto :goto_0
.end method

.method public updateProxyFieldsToConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .parameter "config"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1519
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabledCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_0

    .line 1520
    iput-boolean v6, p1, Landroid/net/wifi/WifiConfiguration;->isProxyUpdated:Z

    .line 1545
    :goto_0
    return-void

    .line 1523
    :cond_0
    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->isProxyUpdated:Z

    .line 1524
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyEnabled:Z

    iput-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->proxyEnabled:Z

    .line 1526
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyHostEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1527
    .local v1, hostName:Ljava/lang/String;
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->proxyPort:I

    .line 1528
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyPortEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1529
    .local v2, port:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1531
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroid/net/wifi/WifiConfiguration;->proxyPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    :cond_1
    :goto_1
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->proxyPort:I

    if-ltz v4, :cond_2

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->proxyPort:I

    const v5, 0xffff

    if-le v4, v5, :cond_3

    .line 1536
    :cond_2
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->proxyPort:I

    .line 1538
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mProxyExceptionsEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, exceptions:Ljava/lang/String;
    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/wifi/WifiDialog;->validateProxyFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1540
    .local v3, res:I
    if-lez v3, :cond_4

    .line 1541
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1543
    :cond_4
    invoke-static {v1}, Lcom/android/settings/wifi/WifiDialog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/net/wifi/WifiConfiguration;->proxyHost:Ljava/lang/String;

    .line 1544
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDialog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/net/wifi/WifiConfiguration;->proxyExceptions:Ljava/lang/String;

    goto :goto_0

    .line 1532
    .end local v0           #exceptions:Ljava/lang/String;
    .end local v3           #res:I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

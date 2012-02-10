.class Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;
.super Landroid/app/AlertDialog;
.source "WifiApManageDevices.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApManageDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceEditDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevEntry:Landroid/widget/EditText;

.field private mDevice:Lcom/android/settings/wifi/ConnectedDevice;

.field private mMacEntry:Landroid/widget/EditText;

.field private mOKButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiApManageDevices;


# direct methods
.method protected constructor <init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    .line 341
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 342
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mContext:Landroid/content/Context;

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    .line 344
    return-void
.end method

.method protected constructor <init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    .line 347
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 348
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mContext:Landroid/content/Context;

    .line 349
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    .line 350
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 430
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 386
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 387
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #calls: Lcom/android/settings/wifi/WifiApManageDevices;->invokeServiceToUnBlackList(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/settings/wifi/WifiApManageDevices;->access$200(Lcom/android/settings/wifi/WifiApManageDevices;Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, macEntered:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v1, :cond_3

    .line 390
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300()Lcom/android/settings/ProgressCategory;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    invoke-virtual {v1, v5}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$400(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v5, v5, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, editedDevName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 400
    const-string v2, "Unknown"

    .line 402
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mContext:Landroid/content/Context;

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)V

    .line 407
    .local v0, c:Lcom/android/settings/wifi/ConnectedDevice;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300()Lcom/android/settings/ProgressCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 408
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300()Lcom/android/settings/ProgressCategory;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings/ProgressCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v3, "wifi_ap_allow_all_devices"

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$400(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    .end local v0           #c:Lcom/android/settings/wifi/ConnectedDevice;
    .end local v2           #editedDevName:Ljava/lang/String;
    .end local v4           #macEntered:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->dismiss()V

    .line 417
    :goto_1
    return-void

    .line 393
    .restart local v4       #macEntered:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$500()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f080267

    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 411
    .end local v4           #macEntered:Ljava/lang/String;
    :cond_4
    const/4 v1, -0x3

    if-ne p2, v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #calls: Lcom/android/settings/wifi/WifiApManageDevices;->invokeServiceToUnBlackList(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/settings/wifi/WifiApManageDevices;->access$200(Lcom/android/settings/wifi/WifiApManageDevices;Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300()Lcom/android/settings/ProgressCategory;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    invoke-virtual {v1, v3}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 414
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$400(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v3, v3, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mView:Landroid/view/View;

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->setView(Landroid/view/View;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$100(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080252

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 357
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$100(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08034c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v0, :cond_1

    .line 359
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$100(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080266

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$100(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->setInverseBackgroundForced(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    .line 366
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevEntry:Landroid/widget/EditText;

    .line 367
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 368
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 369
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mOKButton:Landroid/widget/Button;

    .line 370
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mMacEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v1, v1, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v1, v1, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 378
    :cond_0
    :goto_1
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    #getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$100(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08025f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 434
    return-void
.end method

.class public Lcom/android/launcher2/gadget/ClockGadgetDelegate;
.super Lcom/android/launcher2/gadget/ConfigableGadget;
.source "ClockGadgetDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/ClockGadgetDelegate$MountedChangedReceiver;
    }
.end annotation


# static fields
.field private static final EXTERNAL_ZIP_DIR:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field mActualGadget:Lcom/android/launcher2/gadget/Gadget;

.field final mClock:Lcom/android/launcher2/gadget/Clock;

.field private mEditView:Landroid/view/View;

.field private mErrorDisplay:Landroid/view/View;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRequestCode:I

.field mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gadget/clock/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->EXTERNAL_ZIP_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "a"
    .parameter "requestCode"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/ConfigableGadget;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 67
    iput-object p1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    .line 68
    new-instance v0, Lcom/android/launcher2/gadget/Clock;

    invoke-direct {v0, p1}, Lcom/android/launcher2/gadget/Clock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    .line 69
    new-instance v0, Lcom/android/launcher2/gadget/ClockGadgetDelegate$MountedChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate$MountedChangedReceiver;-><init>(Lcom/android/launcher2/gadget/ClockGadgetDelegate;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput p2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mRequestCode:I

    .line 71
    return-void
.end method

.method private adjustByAttributes(Lorg/w3c/dom/Element;Landroid/view/View;)V
    .locals 9
    .parameter "root"
    .parameter "view"

    .prologue
    const/16 v8, 0x33

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 243
    const-string v5, "clock_x"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, clockX:I
    const-string v5, "clock_y"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    .line 245
    .local v1, clockY:I
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 247
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 248
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 249
    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    const-string v5, "edit_tag_x"

    invoke-direct {p0, p1, v5, v7}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    .line 252
    .local v2, editX:I
    const-string v5, "edit_tag_y"

    invoke-direct {p0, p1, v5, v7}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    .line 253
    .local v3, editY:I
    iget-object v5, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 254
    .restart local v4       #lp:Landroid/widget/FrameLayout$LayoutParams;
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    .line 255
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 256
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 257
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 263
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    return-void

    .line 259
    :cond_0
    const/16 v5, 0x35

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 260
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 261
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private getDefaultZip()Ljava/lang/String;
    .locals 7

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 285
    .local v1, info:Lcom/android/launcher2/gadget/GadgetInfo;
    iget v0, v1, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    .line 286
    .local v0, gadgetId:I
    packed-switch v0, :pswitch_data_0

    .line 294
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "\u4e0d\u652f\u6301gadget\u5c3a\u5bf8 gadgetId = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :pswitch_0
    const-string v2, "/system/media/gadget/clock/clock_12.zip"

    .line 292
    :goto_0
    return-object v2

    .line 290
    :pswitch_1
    const-string v2, "/system/media/gadget/clock/clock_22.zip"

    goto :goto_0

    .line 292
    :pswitch_2
    const-string v2, "/system/media/gadget/clock/clock_24.zip"

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 3
    .parameter "element"
    .parameter "key"
    .parameter "dftValue"

    .prologue
    .line 267
    move v0, p3

    .line 269
    .local v0, ret:I
    :try_start_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 276
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 273
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setupViews()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x2

    .line 153
    iget-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    const v3, 0x7f03000e

    invoke-static {v2, v3, p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 154
    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    .line 155
    iget-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    const v3, 0x7f07001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020036

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 158
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, editView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x35

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    const v2, 0x7f020046

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iput-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    .line 165
    iget-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->addView(Landroid/view/View;)V

    .line 166
    return-void
.end method


# virtual methods
.method getConfig()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->loadConfig()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, config:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getDefaultZip()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getEditView()Landroid/view/View;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    return-object v0
.end method

.method protected getPrefPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "clock"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "miui"

    .line 302
    invoke-super {p0, p1}, Lcom/android/launcher2/gadget/ConfigableGadget;->onClick(Landroid/view/View;)V

    .line 303
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/gadget/GadgetInfo;

    iget v0, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    invoke-static {v0}, Lcom/android/launcher2/gadget/GadgetFactory;->getInfo(I)Lcom/android/launcher2/gadget/GadgetInfo;

    move-result-object v0

    .line 305
    iget v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    iget v2, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    invoke-static {v1, v2}, Lcom/android/launcher2/gadget/Utils;->getFilterCode(II)I

    move-result v1

    .line 307
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 308
    const-string v3, "miui"

    const-class v3, Lmiui/app/resourcebrowser/ResourceTabActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v3, "android.intent.action.PICK_RESOURCE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v3, "com.miui.android.resourcebrowser.TRACK_ID"

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v3, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    iget-object v4, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_TYPE_PARAMETER"

    const-string v4, "%s&filter=%d"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "5"

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_SET_NAME"

    iget-object v4, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v0, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    const-string v3, "clock"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v0, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    const-string v0, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    new-array v3, v10, [Ljava/lang/String;

    sget-object v4, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->EXTERNAL_ZIP_DIR:Ljava/lang/String;

    aput-object v4, v3, v7

    const-string v4, "/data/media/gadget/clock/"

    aput-object v4, v3, v8

    const-string v4, "/system/media/gadget/clock/"

    aput-object v4, v3, v9

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v0, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    sget-object v3, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->EXTERNAL_ZIP_DIR:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v0, "com.miui.android.resourcebrowser.CACHE_LIST_FOLDER"

    iget-object v3, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v0, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getConfig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v0, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_PACKAGE"

    const-string v3, "miui"

    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v0, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_CLASS"

    const-class v3, Lmiui/app/resourcebrowser/ResourceFilterListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v0, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    iget-object v3, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v0, "type"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mRequestCode:I

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 340
    :goto_0
    return-void

    .line 329
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 331
    sget-boolean v1, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v1, :cond_1

    .line 332
    const-string v1, "com.sec.android.app.clockpackage/.ClockPackage"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 337
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 335
    :cond_1
    const-string v1, "com.motorola.blur.alarmclock/.AlarmClock"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->onCreate()V

    .line 76
    iget v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 77
    invoke-direct {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->setupViews()V

    .line 78
    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v1}, Lcom/android/launcher2/gadget/Clock;->init()V

    .line 80
    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->updateActualGadget()V

    .line 84
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->onDestroy()V

    .line 92
    iget v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/Clock;->pause()V

    .line 94
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    invoke-interface {v0}, Lcom/android/launcher2/gadget/Gadget;->onDestroy()V

    .line 99
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 374
    invoke-super {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->onDetachedFromWindow()V

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 107
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/Clock;->pause()V

    .line 108
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    invoke-interface {v0}, Lcom/android/launcher2/gadget/Gadget;->onPause()V

    .line 111
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->onResume()V

    .line 116
    iget v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    invoke-interface {v0}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/Clock;->resume()V

    .line 121
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 126
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    invoke-interface {v0}, Lcom/android/launcher2/gadget/Gadget;->onStart()V

    .line 129
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 134
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/Clock;->pause()V

    .line 135
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    invoke-interface {v0}, Lcom/android/launcher2/gadget/Gadget;->onStop()V

    .line 138
    :cond_0
    return-void
.end method

.method updateActualGadget()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 175
    const/4 v7, 0x0

    .line 176
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getConfig()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, config:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/launcher2/gadget/Utils;->parseManifestInZip(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 179
    .local v5, root:Lorg/w3c/dom/Element;
    if-eqz v5, :cond_a

    .line 180
    const-string v8, "type"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, type:Ljava/lang/String;
    const-string v8, "flip"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 182
    iget-object v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    const v9, 0x7f03000f

    invoke-static {v8, v9, v10}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 187
    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 188
    instance-of v8, v7, Lcom/android/launcher2/gadget/Clock$ClockStyle;

    if-eqz v8, :cond_0

    .line 189
    move-object v0, v7

    check-cast v0, Lcom/android/launcher2/gadget/Clock$ClockStyle;

    move-object v8, v0

    invoke-interface {v8, v1}, Lcom/android/launcher2/gadget/Clock$ClockStyle;->initConfig(Ljava/lang/String;)V

    .line 195
    .end local v6           #type:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    .line 196
    .local v3, old:Lcom/android/launcher2/gadget/Gadget;
    if-eqz v3, :cond_4

    .line 197
    move-object v4, v3

    .line 198
    .local v4, oldGadget:Lcom/android/launcher2/gadget/Gadget;
    iget v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_1

    .line 199
    invoke-interface {v4}, Lcom/android/launcher2/gadget/Gadget;->onPause()V

    .line 201
    :cond_1
    iget v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 202
    invoke-interface {v4}, Lcom/android/launcher2/gadget/Gadget;->onStop()V

    .line 204
    :cond_2
    iget v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    .line 205
    invoke-interface {v4}, Lcom/android/launcher2/gadget/Gadget;->onDestroy()V

    .line 207
    :cond_3
    check-cast v3, Landroid/view/View;

    .end local v3           #old:Lcom/android/launcher2/gadget/Gadget;
    invoke-virtual {p0, v3}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->removeView(Landroid/view/View;)V

    .line 210
    .end local v4           #oldGadget:Lcom/android/launcher2/gadget/Gadget;
    :cond_4
    instance-of v8, v7, Lcom/android/launcher2/gadget/Gadget;

    if-eqz v8, :cond_b

    .line 211
    invoke-virtual {p0, v7}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->addView(Landroid/view/View;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    invoke-direct {p0, v5, v7}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->adjustByAttributes(Lorg/w3c/dom/Element;Landroid/view/View;)V

    .line 214
    iget-object v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->bringToFront()V

    .line 216
    move-object v0, v7

    check-cast v0, Lcom/android/launcher2/gadget/Gadget;

    move-object v2, v0

    .line 217
    .local v2, newGadget:Lcom/android/launcher2/gadget/Gadget;
    iget v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    .line 218
    invoke-interface {v2}, Lcom/android/launcher2/gadget/Gadget;->onCreate()V

    .line 220
    :cond_5
    iget v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_6

    .line 221
    invoke-interface {v2}, Lcom/android/launcher2/gadget/Gadget;->onStart()V

    .line 223
    :cond_6
    iget v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_7

    .line 224
    invoke-interface {v2}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    .line 227
    :cond_7
    instance-of v8, v2, Lcom/android/launcher2/gadget/Clock$ClockStyle;

    if-eqz v8, :cond_8

    .line 228
    iget-object v9, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/gadget/Clock$ClockStyle;

    move-object v8, v0

    invoke-virtual {v9, v8}, Lcom/android/launcher2/gadget/Clock;->setClockStyle(Lcom/android/launcher2/gadget/Clock$ClockStyle;)V

    .line 230
    :cond_8
    iput-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    .line 236
    .end local v2           #newGadget:Lcom/android/launcher2/gadget/Gadget;
    :goto_2
    return-void

    .line 184
    .restart local v6       #type:Ljava/lang/String;
    :cond_9
    new-instance v7, Lcom/android/launcher2/gadget/AwesomeClock;

    .end local v7           #view:Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/launcher2/gadget/AwesomeClock;-><init>(Landroid/content/Context;)V

    .restart local v7       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 192
    .end local v6           #type:Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 232
    :cond_b
    iget-object v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/gadget/Clock;->setClockStyle(Lcom/android/launcher2/gadget/Clock$ClockStyle;)V

    .line 233
    iput-object v10, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    goto :goto_2
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 142
    const-string v1, "com.miui.android.resourcebrowser.PICKED_RESOURCE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, newResource:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->saveConfig(Ljava/lang/String;)Z

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->updateActualGadget()V

    .line 145
    return-void
.end method

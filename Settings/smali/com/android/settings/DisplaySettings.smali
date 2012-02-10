.class public Lcom/android/settings/DisplaySettings;
.super Landroid/preference/PreferenceActivity;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final FONT_SIZE_PREF:Ljava/lang/String; = "font_size"

.field private static final KEY_ACCELEROMETER:Ljava/lang/String; = "accelerometer"

.field private static final KEY_ANIMATIONS:Ljava/lang/String; = "animations"

.field private static final KEY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final KEY_ERI_TEXT_BANNER:Ljava/lang/String; = "eri_text_banner"

.field private static final KEY_IN_POCKET_DETECTION:Ljava/lang/String; = "in_pocket_detection"

.field private static final KEY_NOTIFICATION_LED_CHECKBOX:Ljava/lang/String; = "notification_led_checkbox"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final TAG:Ljava/lang/String; = "DisplaySettings"


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAnimationScales:[F

.field private mAnimations:Landroid/preference/ListPreference;

.field private mBrightness:Lcom/android/settings/BrightnessPreference;

.field private mERIFeatureOnFlag:Z

.field private mEnhancedRoamingBanner:Landroid/preference/CheckBoxPreference;

.field private mFontSizePreference:Landroid/preference/ListPreference;

.field private mInPocketDetection:Landroid/preference/CheckBoxPreference;

.field private mNotificationledCheckbox:Landroid/preference/CheckBoxPreference;

.field private mWallpaper:Landroid/preference/Preference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mERIFeatureOnFlag:Z

    return-void
.end method

.method private addXtraIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter "chooser"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v10, "android.intent.extra.INITIAL_INTENTS"

    .line 548
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 549
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v8, "com.motorola.GET_OPERATOR_URL"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v2}, Lcom/android/settings/DisplaySettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v6

    .line 557
    .local v6, portalIntent:Landroid/content/Intent;
    if-eqz v6, :cond_0

    const-string v8, "portal_url"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, url:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 583
    .end local v7           #url:Ljava/lang/String;
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 562
    .restart local v7       #url:Ljava/lang/String;
    .restart local p0
    :cond_1
    new-instance v4, Landroid/content/pm/LabeledIntent;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080076

    invoke-direct {v4, v8, v9, v11}, Landroid/content/pm/LabeledIntent;-><init>(Ljava/lang/String;II)V

    .line 565
    .local v4, li:Landroid/content/pm/LabeledIntent;
    const-string v8, "com.android.browser"

    const-string v9, "com.android.browser.BrowserActivity"

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/LabeledIntent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v4, v8}, Landroid/content/pm/LabeledIntent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/LabeledIntent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 570
    const-string v8, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, [Landroid/content/Intent;

    move-object v1, v0

    .line 573
    .local v1, extraIntents:[Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 574
    const-string v8, "android.intent.extra.INITIAL_INTENTS"

    new-array v8, v12, [Landroid/content/Intent;

    aput-object v4, v8, v11

    invoke-virtual {p1, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 576
    :cond_2
    array-length v8, v1

    add-int/lit8 v8, v8, 0x1

    new-array v5, v8, [Landroid/content/Intent;

    .line 577
    .local v5, newExtraIntents:[Landroid/content/Intent;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v1

    if-ge v3, v8, :cond_3

    .line 578
    aget-object v8, v1, v3

    aput-object v8, v5, v3

    .line 577
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 580
    :cond_3
    array-length v8, v5

    sub-int/2addr v8, v12

    aput-object v4, v5, v8

    .line 581
    const-string v8, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 23
    .parameter "screenTimeoutPreference"

    .prologue
    .line 263
    const-string v19, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 265
    .local v4, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v4, :cond_2

    const/16 v19, 0x0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v19

    move-wide/from16 v7, v19

    .line 266
    .local v7, maxTimeout:J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "screen_off_timeout"

    const/16 v21, 0x7530

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 268
    .local v3, TimeoutInDB:I
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 269
    .local v5, entries:[Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    .line 270
    .local v15, values:[Ljava/lang/CharSequence;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v9, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v10, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-nez v19, :cond_4

    .line 273
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 274
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 275
    const/16 v18, 0x0

    .line 276
    .local v18, wasPartOfPreferenceList:Z
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 278
    .local v11, selectPreference:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    move-object v0, v15

    array-length v0, v0

    move/from16 v19, v0

    move v0, v6

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 279
    aget-object v19, v15, v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 280
    .local v12, timeout:I
    if-ne v12, v11, :cond_3

    .line 281
    const/16 v18, 0x1

    .line 286
    .end local v12           #timeout:I
    :cond_0
    if-nez v18, :cond_1

    .line 287
    const/16 v19, 0x7530

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "screen_off_timeout"

    const/16 v21, 0x7530

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    .end local v4           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v11           #selectPreference:I
    .end local v18           #wasPartOfPreferenceList:Z
    :cond_1
    :goto_2
    return-void

    .line 265
    .end local v3           #TimeoutInDB:I
    .end local v5           #entries:[Ljava/lang/CharSequence;
    .end local v6           #i:I
    .end local v7           #maxTimeout:J
    .end local v9           #revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v10           #revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v15           #values:[Ljava/lang/CharSequence;
    .restart local v4       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_2
    const-wide/16 v19, 0x0

    move-wide/from16 v7, v19

    goto :goto_0

    .line 278
    .restart local v3       #TimeoutInDB:I
    .restart local v5       #entries:[Ljava/lang/CharSequence;
    .restart local v6       #i:I
    .restart local v7       #maxTimeout:J
    .restart local v9       #revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v10       #revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v11       #selectPreference:I
    .restart local v12       #timeout:I
    .restart local v15       #values:[Ljava/lang/CharSequence;
    .restart local v18       #wasPartOfPreferenceList:Z
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 293
    .end local v6           #i:I
    .end local v11           #selectPreference:I
    .end local v12           #timeout:I
    .end local v18           #wasPartOfPreferenceList:Z
    :cond_4
    const/16 v16, 0x0

    .line 295
    .local v16, wasPartOfDefaultSet:Z
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    move-object v0, v15

    array-length v0, v0

    move/from16 v19, v0

    move v0, v6

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 296
    aget-object v19, v15, v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 297
    .local v12, timeout:J
    cmp-long v19, v12, v7

    if-gtz v19, :cond_6

    const-wide/16 v19, 0x0

    cmp-long v19, v12, v19

    if-lez v19, :cond_6

    .line 298
    cmp-long v19, v12, v7

    if-nez v19, :cond_5

    .line 299
    const/16 v16, 0x1

    .line 301
    :cond_5
    aget-object v19, v5, v6

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    aget-object v19, v15, v6

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 305
    .end local v12           #timeout:J
    :cond_7
    if-nez v16, :cond_8

    .line 307
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v21, 0xea60

    div-long v21, v7, v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " minutes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v19, Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #dpm:Landroid/app/admin/DevicePolicyManager;
    check-cast v4, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    .line 318
    const/16 v17, 0x0

    .line 319
    .local v17, wasPartOfList:Z
    const/4 v6, 0x0

    :goto_4
    move-object v0, v15

    array-length v0, v0

    move/from16 v19, v0

    move v0, v6

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 320
    aget-object v19, v15, v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 321
    .local v12, timeout:I
    if-ne v12, v3, :cond_d

    .line 322
    const/16 v17, 0x1

    .line 326
    .end local v12           #timeout:I
    :cond_9
    if-nez v17, :cond_a

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "screen_off_timeout"

    move-wide v0, v7

    long-to-int v0, v0

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    const v19, 0x7f08006f

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 331
    move-wide v0, v7

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 334
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 335
    .local v14, userPreference:I
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v19, v19, v7

    if-gtz v19, :cond_e

    .line 337
    const/16 v19, -0x1

    move v0, v14

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 338
    long-to-int v14, v7

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "screen_off_timeout"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move v2, v14

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    const v19, 0x7f08006f

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 344
    :cond_b
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 359
    :cond_c
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_f

    const/16 v19, 0x1

    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 319
    .end local v14           #userPreference:I
    .restart local v12       #timeout:I
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 350
    .end local v12           #timeout:I
    .restart local v14       #userPreference:I
    :cond_e
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-lez v19, :cond_c

    .line 351
    long-to-int v14, v7

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "screen_off_timeout"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move v2, v14

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    const v19, 0x7f08006f

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 356
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_5

    .line 359
    :cond_f
    const/16 v19, 0x0

    goto :goto_6
.end method

.method private updateAnimationsSummary(Ljava/lang/Object;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 430
    .local v1, summaries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 431
    .local v2, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 434
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 439
    :cond_0
    return-void

    .line 431
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateState(Z)V
    .locals 14
    .parameter "force"

    .prologue
    .line 370
    const/4 v2, 0x0

    .line 372
    .local v2, animations:I
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v10}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    :goto_0
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    if-eqz v10, :cond_1

    .line 376
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v10, v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_0

    .line 377
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    rem-int/lit8 v2, v10, 0xa

    .line 379
    :cond_0
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v10, v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_1

    .line 380
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    and-int/lit8 v10, v10, 0x7

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v2, v10

    .line 383
    :cond_1
    const/4 v7, 0x0

    .line 384
    .local v7, idx:I
    const/4 v3, 0x0

    .line 385
    .local v3, best:I
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 386
    .local v0, aents:[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v10, v0

    if-ge v6, v10, :cond_3

    .line 387
    aget-object v10, v0, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 388
    .local v9, val:I
    if-gt v9, v2, :cond_2

    if-le v9, v3, :cond_2

    .line 389
    move v3, v9

    .line 390
    move v7, v6

    .line 386
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 393
    .end local v9           #val:I
    :cond_3
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v10, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 394
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/DisplaySettings;->updateAnimationsSummary(Ljava/lang/Object;)V

    .line 398
    const/4 v7, 0x3

    .line 399
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 400
    .local v1, am:Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 401
    .local v4, config:Landroid/content/res/Configuration;
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mFontSizePreference:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 402
    .local v5, fents:[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    :goto_2
    array-length v10, v5

    if-ge v6, v10, :cond_4

    .line 403
    aget-object v10, v5, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 404
    .local v9, val:F
    iget v10, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-nez v10, :cond_6

    .line 405
    move v7, v6

    .line 411
    .end local v9           #val:F
    :cond_4
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mFontSizePreference:Landroid/preference/ListPreference;

    invoke-virtual {v10, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 415
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v5           #fents:[Ljava/lang/CharSequence;
    :goto_3
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accelerometer_rotation"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 419
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNotificationledCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_5

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "notification_led_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    move v8, v10

    .line 423
    .local v8, led_enabled:Z
    :goto_5
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNotificationledCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 426
    .end local v8           #led_enabled:Z
    :cond_5
    return-void

    .line 402
    .restart local v1       #am:Landroid/app/IActivityManager;
    .restart local v4       #config:Landroid/content/res/Configuration;
    .restart local v5       #fents:[Ljava/lang/CharSequence;
    .restart local v9       #val:F
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 409
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v5           #fents:[Ljava/lang/CharSequence;
    .end local v9           #val:F
    :catch_0
    move-exception v10

    .line 411
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mFontSizePreference:Landroid/preference/ListPreference;

    invoke-virtual {v10, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3

    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mFontSizePreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    throw v10

    .line 415
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 420
    :cond_8
    const/4 v10, 0x0

    move v8, v10

    goto :goto_5

    .line 373
    .end local v0           #aents:[Ljava/lang/CharSequence;
    .end local v3           #best:I
    .end local v6           #i:I
    .end local v7           #idx:I
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "in_pocket_detection"

    const-string v10, "eri_text_banner"

    .line 107
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 109
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 111
    const v5, 0x7f040010

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 114
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DisplaySettings;->mWallpaper:Landroid/preference/Preference;

    .line 116
    const-string v5, "animations"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    .line 117
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    const-string v5, "accelerometer"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 119
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 121
    const-string v5, "screen_timeout"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 123
    .local v4, screenTimeoutPreference:Landroid/preference/ListPreference;
    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    invoke-direct {p0, v4}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 129
    const-string v5, "font_size"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/DisplaySettings;->mFontSizePreference:Landroid/preference/ListPreference;

    .line 131
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mFontSizePreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    const-string v5, "ro.mot.eri"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, featureOn:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v9

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/DisplaySettings;->mERIFeatureOnFlag:Z

    .line 138
    iget-boolean v5, p0, Lcom/android/settings/DisplaySettings;->mERIFeatureOnFlag:Z

    if-eqz v5, :cond_4

    .line 140
    const-string v5, "eri_text_banner"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/DisplaySettings;->mEnhancedRoamingBanner:Landroid/preference/CheckBoxPreference;

    .line 141
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mEnhancedRoamingBanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "eri_text_banner"

    invoke-static {v6, v10, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v9

    :goto_1
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 150
    :goto_2
    const-string v5, "notification_led_checkbox"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/DisplaySettings;->mNotificationledCheckbox:Landroid/preference/CheckBoxPreference;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 152
    .local v2, hasNotificationLEDSetting:Z
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mNotificationledCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    .line 153
    if-ne v2, v9, :cond_6

    .line 154
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mNotificationledCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_led_enabled"

    invoke-static {v6, v7, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v9

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    :cond_0
    :goto_4
    const-string v5, "in_pocket_detection"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/DisplaySettings;->mInPocketDetection:Landroid/preference/CheckBoxPreference;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 168
    .local v1, hasInPocketSetting:Z
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mInPocketDetection:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    .line 169
    if-ne v1, v9, :cond_8

    .line 170
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mInPocketDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "in_pocket_detection"

    invoke-static {v6, v11, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    move v6, v9

    :goto_5
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 227
    :cond_1
    :goto_6
    return-void

    .end local v1           #hasInPocketSetting:Z
    .end local v2           #hasNotificationLEDSetting:Z
    :cond_2
    move v5, v8

    .line 136
    goto :goto_0

    :cond_3
    move v6, v8

    .line 141
    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "eri_text_banner"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .restart local v2       #hasNotificationLEDSetting:Z
    :cond_5
    move v6, v8

    .line 154
    goto :goto_3

    .line 159
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mNotificationledCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/DisplaySettings;->mNotificationledCheckbox:Landroid/preference/CheckBoxPreference;

    goto :goto_4

    .restart local v1       #hasInPocketSetting:Z
    :cond_7
    move v6, v8

    .line 170
    goto :goto_5

    .line 175
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mInPocketDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v9, 0x1

    const-string v10, "DisplaySettings"

    .line 495
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 496
    .local v4, key:Ljava/lang/String;
    const-string v6, "animations"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 498
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 499
    .local v5, value:I
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v6, v6

    if-lt v6, v9, :cond_0

    .line 500
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v7, 0x0

    rem-int/lit8 v8, v5, 0xa

    int-to-float v8, v8

    aput v8, v6, v7

    .line 502
    :cond_0
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v6, v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 503
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v7, 0x1

    div-int/lit8 v8, v5, 0xa

    rem-int/lit8 v8, v8, 0xa

    int-to-float v8, v8

    aput v8, v6, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 509
    :goto_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/settings/DisplaySettings;->updateAnimationsSummary(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 516
    .end local v5           #value:I
    :cond_2
    :goto_1
    const-string v6, "font_size"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 518
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 519
    .local v1, am:Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 520
    .local v2, config:Landroid/content/res/Configuration;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 522
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 530
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v2           #config:Landroid/content/res/Configuration;
    :cond_3
    :goto_2
    const-string v6, "screen_timeout"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 531
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 533
    .restart local v5       #value:I
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_off_timeout"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 540
    .end local v5           #value:I
    :cond_4
    :goto_3
    return v9

    .line 510
    .restart local p2
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 511
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v6, "DisplaySettings"

    const-string v6, "could not persist animation setting"

    invoke-static {v10, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 523
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 524
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    const-string v6, "DisplaySettings"

    const-string v6, "could not persist font size setting"

    invoke-static {v10, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 535
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local p2
    .restart local v5       #value:I
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 536
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    const-string v6, "DisplaySettings"

    const-string v6, "could not persist screen timeout setting"

    invoke-static {v10, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 525
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v5           #value:I
    .restart local p2
    :catch_3
    move-exception v6

    goto :goto_2

    .line 507
    .restart local v5       #value:I
    :catch_4
    move-exception v6

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 443
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 491
    :cond_0
    :goto_1
    return v6

    :cond_1
    move v5, v7

    .line 444
    goto :goto_0

    .line 448
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mWallpaper:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 449
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v2, pickWallpaper:Landroid/content/Intent;
    const v3, 0x7f080103

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 456
    .local v0, chooser:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_download_wallpaper"

    invoke-static {v3, v4, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 458
    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->addXtraIntent(Landroid/content/Intent;)V

    .line 464
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 469
    .end local v0           #chooser:Landroid/content/Intent;
    .end local v2           #pickWallpaper:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mEnhancedRoamingBanner:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "eri_text_banner"

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mEnhancedRoamingBanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v5, v7

    goto :goto_2

    .line 476
    :cond_6
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mNotificationledCheckbox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_8

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_led_enabled"

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mNotificationledCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_3
    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v5, v7

    goto :goto_3

    .line 483
    :cond_8
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mInPocketDetection:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "in_pocket_detection"

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mInPocketDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_4
    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 486
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.motorola.intent.action.InPocketServiceStateChanged"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    .local v1, i:Landroid/content/Intent;
    const-string v3, "state"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mInPocketDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v1           #i:Landroid/content/Intent;
    :cond_9
    move v5, v7

    .line 484
    goto :goto_4
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 366
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->updateState(Z)V

    .line 367
    return-void
.end method

.method public onStop()V
    .locals 7

    .prologue
    const-string v6, "DisplaySettings"

    .line 236
    const-string v4, "DisplaySettings"

    const-string v4, "onStop caled"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 241
    .local v0, automaticAvailable:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 246
    .local v2, oldBrightness:I
    :goto_0
    const-string v4, "brightness"

    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/BrightnessPreference;

    iput-object v4, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    .line 247
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    if-eqz v4, :cond_2

    .line 248
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    iget v1, v4, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 249
    .local v1, oldAutomatic:I
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 254
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 258
    .end local v1           #oldAutomatic:I
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    .line 259
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 260
    return-void

    .line 242
    .end local v2           #oldBrightness:I
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 243
    .local v3, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "DisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingNotFoundException! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/16 v2, 0xff

    .restart local v2       #oldBrightness:I
    goto :goto_0
.end method

.class public Lcom/android/settings/LocalePicker;
.super Landroid/app/ListActivity;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocalePicker$Loc;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field mLocales:[Lcom/android/settings/LocalePicker$Loc;

.field mSpecialLocaleCodes:[Ljava/lang/String;

.field mSpecialLocaleNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 46
    return-void
.end method

.method private getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "l"

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 162
    :goto_1
    return-object v2

    .line 156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getContentView()I
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f03001e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getContentView()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->setContentView(I)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f05002a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f05002b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LocalePicker;->mSpecialLocaleNames:[Ljava/lang/String;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v16

    .line 80
    .local v16, locales:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 82
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    .line 83
    .local v17, origSize:I
    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v18, v0

    .line 84
    .local v18, preprocess:[Lcom/android/settings/LocalePicker$Loc;
    const/4 v9, 0x0

    .line 85
    .local v9, finalSize:I
    const/4 v11, 0x0

    .local v11, i:I
    move v10, v9

    .end local v9           #finalSize:I
    .local v10, finalSize:I
    :goto_0
    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 86
    aget-object v19, v16, v11

    .line 87
    .local v19, s:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v15

    .line 88
    .local v15, len:I
    const/16 v20, 0x5

    move v0, v15

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 89
    const/16 v20, 0x0

    const/16 v21, 0x2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 90
    .local v13, language:Ljava/lang/String;
    const/16 v20, 0x3

    const/16 v21, 0x5

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, country:Ljava/lang/String;
    new-instance v12, Ljava/util/Locale;

    invoke-direct {v12, v13, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v12, l:Ljava/util/Locale;
    if-nez v10, :cond_0

    .line 97
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v20, Lcom/android/settings/LocalePicker$Loc;

    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v20, v18, v10

    .line 85
    .end local v6           #country:Ljava/lang/String;
    .end local v12           #l:Ljava/util/Locale;
    .end local v13           #language:Ljava/lang/String;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    goto :goto_0

    .line 104
    .restart local v6       #country:Ljava/lang/String;
    .restart local v12       #l:Ljava/util/Locale;
    .restart local v13       #language:Ljava/lang/String;
    :cond_0
    const/16 v20, 0x1

    sub-int v20, v10, v20

    aget-object v20, v18, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 111
    const/16 v20, 0x1

    sub-int v20, v10, v20

    aget-object v20, v18, v20

    const/16 v21, 0x1

    sub-int v21, v10, v21

    aget-object v21, v18, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/LocalePicker;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/LocalePicker$Loc;->label:Ljava/lang/String;

    .line 116
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v20, Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/settings/LocalePicker;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v20, v18, v10

    goto :goto_1

    .line 120
    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    :cond_1
    const-string v20, "zz_ZZ"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 121
    const-string v7, "Pseudo..."

    .line 128
    .local v7, displayName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v20, Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v20, v18, v10

    goto :goto_1

    .line 123
    .end local v7           #displayName:Ljava/lang/String;
    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    :cond_2
    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 133
    .end local v6           #country:Ljava/lang/String;
    .end local v7           #displayName:Ljava/lang/String;
    .end local v12           #l:Ljava/util/Locale;
    .end local v13           #language:Ljava/lang/String;
    .end local v15           #len:I
    .end local v19           #s:Ljava/lang/String;
    :cond_3
    move v0, v10

    new-array v0, v0, [Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    .line 134
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_4

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v20, v0

    aget-object v21, v18, v11

    aput-object v21, v20, v11

    .line 134
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 137
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 138
    const v14, 0x7f030020

    .line 139
    .local v14, layoutId:I
    const v8, 0x7f0c0064

    .line 140
    .local v8, fieldId:I
    new-instance v5, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v20, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v14

    move v3, v8

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 142
    .local v5, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/settings/LocalePicker$Loc;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    return-void

    .end local v5           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/settings/LocalePicker$Loc;>;"
    .end local v8           #fieldId:I
    .end local v14           #layoutId:I
    .restart local v15       #len:I
    .restart local v19       #s:Ljava/lang/String;
    :cond_5
    move v9, v10

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    goto/16 :goto_1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 175
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 177
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    aget-object v2, v3, p3

    .line 178
    .local v2, loc:Lcom/android/settings/LocalePicker$Loc;
    iget-object v3, v2, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 181
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 183
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 185
    const-string v3, "com.android.providers.settings"

    invoke-static {v3}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v2           #loc:Lcom/android/settings/LocalePicker$Loc;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->finish()V

    .line 190
    return-void

    .line 186
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 169
    return-void
.end method

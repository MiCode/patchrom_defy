.class public Lcom/android/settings/quicklaunch/QuickLaunchSettings;
.super Landroid/preference/PreferenceActivity;
.source "QuickLaunchSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;
    }
.end annotation


# static fields
.field private static final CLEAR_DIALOG_BOOKMARK_TITLE:Ljava/lang/String; = "CLEAR_DIALOG_BOOKMARK_TITLE"

.field private static final CLEAR_DIALOG_SHORTCUT:Ljava/lang/String; = "CLEAR_DIALOG_SHORTCUT"

.field private static final COLUMN_INTENT:I = 0x2

.field private static final COLUMN_SHORTCUT:I = 0x0

.field private static final COLUMN_TITLE:I = 0x1

.field private static final DEFAULT_BOOKMARK_FOLDER:Ljava/lang/String; = "@quicklaunch"

.field private static final DIALOG_CLEAR_SHORTCUT:I = 0x0

.field private static final KEY_SHORTCUT_CATEGORY:Ljava/lang/String; = "shortcut_category"

.field private static final REQUEST_PICK_BOOKMARK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QuickLaunchSettings"

.field private static final sProjection:[Ljava/lang/String; = null

.field private static final sShortcutSelection:Ljava/lang/String; = "shortcut=?"


# instance fields
.field private mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

.field private mBookmarksCursor:Landroid/database/Cursor;

.field private mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

.field private mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

.field private mClearDialogShortcut:C

.field private mShortcutGroup:Landroid/preference/PreferenceGroup;

.field private mShortcutToPreference:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/quicklaunch/ShortcutPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;

.field private msidekeyAccessibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "intent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mUiHandler:Landroid/os/Handler;

    .line 370
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/quicklaunch/QuickLaunchSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V

    return-void
.end method

.method private clearShortcut(C)V
    .locals 6
    .parameter "shortcut"

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "shortcut=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method private createPreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;
    .locals 2
    .parameter "shortcut"

    .prologue
    .line 266
    new-instance v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;-><init>(Landroid/content/Context;C)V

    .line 267
    .local v0, pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 268
    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    return-object v0
.end method

.method private getOrCreatePreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;
    .locals 4
    .parameter "shortcut"

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    .line 257
    .local v0, pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 261
    :goto_0
    return-object v1

    .line 260
    :cond_0
    const-string v1, "QuickLaunchSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown shortcut \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', creating preference anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0, p1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->createPreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;

    move-result-object v1

    goto :goto_0
.end method

.method private initShortcutPreferences()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 275
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 276
    .local v3, shortcutSeen:Landroid/util/SparseBooleanArray;
    invoke-static {v6}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 279
    .local v1, keyMap:Landroid/view/KeyCharacterMap;
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    sub-int v0, v4, v5

    .local v0, keyCode:I
    :goto_0
    if-ltz v0, :cond_4

    .line 281
    invoke-virtual {v1, v0}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 282
    .local v2, shortcut:C
    if-eqz v2, :cond_0

    invoke-virtual {v3, v2, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 286
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->msidekeyAccessibility:Z

    if-ne v4, v5, :cond_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x30

    if-eq v2, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->msidekeyAccessibility:Z

    if-eq v4, v5, :cond_0

    .line 289
    :cond_3
    invoke-virtual {v3, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 291
    invoke-direct {p0, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->createPreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;

    goto :goto_1

    .line 293
    .end local v2           #shortcut:C
    :cond_4
    return-void
.end method

.method private declared-synchronized refreshShortcuts()V
    .locals 19

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;

    move-object v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .local v3, c:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 368
    :goto_0
    monitor-exit p0

    return-void

    .line 302
    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v15

    if-nez v15, :cond_1

    .line 303
    const-string v15, "QuickLaunchSettings"

    const-string v16, "Could not requery cursor when refreshing shortcuts."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    .end local v3           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 312
    .restart local v3       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    move-object v10, v0

    .line 313
    .local v10, noLongerBookmarkedShortcuts:Landroid/util/SparseBooleanArray;
    new-instance v9, Landroid/util/SparseBooleanArray;

    invoke-direct {v9}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 314
    .local v9, newBookmarkedShortcuts:Landroid/util/SparseBooleanArray;
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 315
    const/4 v15, 0x0

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    int-to-char v15, v15

    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    .line 316
    .local v13, shortcut:C
    if-eqz v13, :cond_2

    .line 318
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getOrCreatePreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;

    move-result-object v12

    .line 319
    .local v12, pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/provider/Settings$Bookmarks;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 326
    .local v14, title:Ljava/lang/CharSequence;
    const-string v15, "intent"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 327
    .local v7, intentColumn:I
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 328
    .local v8, intentUri:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 330
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    :try_start_3
    invoke-static {v8}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 331
    .local v6, intent:Landroid/content/Intent;
    const/4 v15, 0x0

    invoke-virtual {v11, v6, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 332
    .local v5, info:Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_3

    .line 333
    invoke-virtual {v5, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v14

    .line 339
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v12, v14}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    const v15, 0x7f0805d7

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setHasBookmark(Z)V

    .line 344
    const/4 v15, 0x1

    invoke-virtual {v9, v13, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 345
    if-eqz v10, :cond_2

    .line 348
    const/4 v15, 0x0

    invoke-virtual {v10, v13, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 352
    .end local v7           #intentColumn:I
    .end local v8           #intentUri:Ljava/lang/String;
    .end local v11           #packageManager:Landroid/content/pm/PackageManager;
    .end local v12           #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    .end local v13           #shortcut:C
    .end local v14           #title:Ljava/lang/CharSequence;
    :cond_4
    if-eqz v10, :cond_6

    .line 353
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    const/16 v16, 0x1

    sub-int v4, v15, v16

    .local v4, i:I
    :goto_3
    if-ltz v4, :cond_6

    .line 354
    invoke-virtual {v10, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 356
    invoke-virtual {v10, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    int-to-char v13, v15

    .line 357
    .restart local v13       #shortcut:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    move-object v15, v0

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/quicklaunch/ShortcutPreference;

    .line 358
    .restart local v12       #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    if-eqz v12, :cond_5

    .line 359
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setHasBookmark(Z)V

    .line 353
    .end local v12           #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    .end local v13           #shortcut:C
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 365
    .end local v4           #i:I
    :cond_6
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    .line 367
    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 335
    .restart local v7       #intentColumn:I
    .restart local v8       #intentUri:Ljava/lang/String;
    .restart local v11       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v12       #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    .restart local v13       #shortcut:C
    .restart local v14       #title:Ljava/lang/CharSequence;
    :catch_0
    move-exception v15

    goto :goto_2
.end method

.method private showClearDialog(Lcom/android/settings/quicklaunch/ShortcutPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 183
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->hasBookmark()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 186
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->getShortcut()C

    move-result v0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private updateShortcut(CLandroid/content/Intent;)V
    .locals 6
    .parameter "shortcut"
    .parameter "intent"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, ""

    const-string v3, "@quicklaunch"

    const/4 v5, 0x0

    move-object v1, p2

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Bookmarks;->add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;

    .line 253
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 228
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 235
    if-nez p3, :cond_1

    .line 236
    const-string v1, "QuickLaunchSettings"

    const-string v2, "Result from bookmark picker does not have an intent."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :cond_1
    const-string v1, "com.android.settings.quicklaunch.SHORTCUT"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    .line 241
    .local v0, shortcut:C
    invoke-direct {p0, v0, p3}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->updateShortcut(CLandroid/content/Intent;)V

    goto :goto_0

    .line 244
    .end local v0           #shortcut:C
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 191
    iget-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 193
    iget-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->clearShortcut(C)V

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 196
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 197
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->addPreferencesFromResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->msidekeyAccessibility:Z

    .line 103
    const-string v0, "shortcut_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    .line 105
    new-instance v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;-><init>(Lcom/android/settings/quicklaunch/QuickLaunchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    .line 106
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->initShortcutPreferences()V

    .line 107
    sget-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 109
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 160
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0805d8

    invoke-virtual {p0, v1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805d9

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805da

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805db

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 221
    .local v0, pref:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 223
    .end local v0           #pref:Landroid/preference/Preference;
    :goto_0
    return v1

    .line 222
    .restart local v0       #pref:Landroid/preference/Preference;
    :cond_0
    check-cast v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->showClearDialog(Lcom/android/settings/quicklaunch/ShortcutPreference;)V

    .line 223
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 123
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 206
    instance-of v3, p2, Lcom/android/settings/quicklaunch/ShortcutPreference;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 214
    :goto_0
    return v3

    .line 209
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    move-object v2, v0

    .line 210
    .local v2, pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings.quicklaunch.SHORTCUT"

    invoke-virtual {v2}, Lcom/android/settings/quicklaunch/ShortcutPreference;->getShortcut()C

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v1, v5}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v5

    .line 214
    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 8
    .parameter "id"
    .parameter "dialog"

    .prologue
    const v7, 0x7f0805d9

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 168
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 170
    .local v1, alertDialog:Landroid/app/AlertDialog;
    iget-char v2, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->msidekeyAccessibility:Z

    if-ne v2, v4, :cond_0

    .line 171
    new-array v2, v6, [Ljava/lang/Object;

    const v3, 0x7f0801fb

    invoke-virtual {p0, v3}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    invoke-virtual {p0, v7, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_0
    new-array v2, v6, [Ljava/lang/Object;

    iget-char v3, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    invoke-virtual {p0, v7, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 130
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 131
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 113
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V

    .line 117
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 140
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    iget-char v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    return-void
.end method

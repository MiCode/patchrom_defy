.class public Lcom/android/settings/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 11
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 12
    .local v0, targetIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14
    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, ic_ID:I
    const/4 v3, 0x0

    .line 20
    .local v3, label_str:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 22
    .local v5, r:Landroid/content/res/Resources;
    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v6

    .line 23
    .local v6, shortcutIntent:Landroid/content/Intent;
    const/high16 v7, 0x20

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v4

    .line 26
    .local v4, listItem:Landroid/app/LauncherActivity$ListItem;
    const/4 v2, 0x0

    .line 27
    .local v2, itemName:Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 28
    iget-object v2, v4, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    .line 30
    :cond_0
    if-eqz v2, :cond_1

    const v7, 0x7f080194

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 31
    const v0, 0x7f020032

    .line 37
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-static {p0, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    const-string v7, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    const-string v7, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v8

    iget-object v8, v8, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 42
    const/4 v7, -0x1

    invoke-virtual {p0, v7, v1}, Lcom/android/settings/CreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->finish()V

    .line 44
    return-void

    .line 35
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const v0, 0x7f020033

    goto :goto_0
.end method

.class public Lcom/android/settings/KbdLayoutSetter$KbdLayoutBootService;
.super Landroid/app/Service;
.source "KbdLayoutSetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KbdLayoutSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KbdLayoutBootService"
.end annotation


# static fields
.field private static final DISABLED:Ljava/lang/String; = "disabled"

.field private static final INIT:Ljava/lang/String; = "init:"

.field private static final TAG:Ljava/lang/String; = "KbdLayoutBootService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 188
    const-string v8, "KbdLayoutBootService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received start id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/KbdLayoutSetter$KbdLayoutBootService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, "keyboard_layout_external"

    invoke-static {v0, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, layout:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v8, "disabled"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 194
    :cond_0
    const/4 v8, 0x2

    .line 221
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v5           #layout:Ljava/lang/String;
    :goto_0
    return v8

    .line 197
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v5       #layout:Ljava/lang/String;
    :cond_1
    const-string v8, "init:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 198
    const-string v8, "init:"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 199
    const-string v1, ""

    .line 201
    .local v1, description:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/KbdLayoutSetter$KbdLayoutBootService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f05004b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, layoutEntries:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/KbdLayoutSetter$KbdLayoutBootService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f05004c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, layoutValues:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_2

    .line 205
    aget-object v8, v7, v3

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 206
    aget-object v1, v6, v3

    .line 211
    :cond_2
    const-string v8, "keyboard_layout_external"

    invoke-static {v0, v8, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    new-instance v4, Lcom/android/settings/KbdLayoutSetter;

    invoke-direct {v4, p0}, Lcom/android/settings/KbdLayoutSetter;-><init>(Landroid/content/Context;)V

    .line 214
    .local v4, kls:Lcom/android/settings/KbdLayoutSetter;
    invoke-virtual {v4, v5, v1}, Lcom/android/settings/KbdLayoutSetter;->setLayout(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #description:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #kls:Lcom/android/settings/KbdLayoutSetter;
    .end local v5           #layout:Ljava/lang/String;
    .end local v6           #layoutEntries:[Ljava/lang/String;
    .end local v7           #layoutValues:[Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v8, 0x2

    goto :goto_0

    .line 204
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #description:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v5       #layout:Ljava/lang/String;
    .restart local v6       #layoutEntries:[Ljava/lang/String;
    .restart local v7       #layoutValues:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 217
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #description:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #layout:Ljava/lang/String;
    .end local v6           #layoutEntries:[Ljava/lang/String;
    .end local v7           #layoutValues:[Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 218
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "KbdLayoutBootService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

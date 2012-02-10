.class Lcom/android/settings/wifi/WifiApEnabler$2;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApEnabler;->displayStartupNotice(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;

.field final synthetic val$preference:Landroid/preference/Preference;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->val$preference:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 250
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApEnabler;->access$400(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->val$preference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->val$value:Ljava/lang/Object;

    #calls: Lcom/android/settings/wifi/WifiApEnabler;->onPreferenceChangeHandler(Landroid/preference/Preference;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 259
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 260
    return-void
.end method

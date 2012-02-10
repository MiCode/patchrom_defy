.class Lcom/android/settings/LocationSettings$1;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocationSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/settings/LocationSettings$1;->this$0:Lcom/android/settings/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 223
    iget-object v0, p0, Lcom/android/settings/LocationSettings$1;->this$0:Lcom/android/settings/LocationSettings;

    #getter for: Lcom/android/settings/LocationSettings;->mLocationPrivacyPolicy:Lcom/android/settings/SummaryListPreference;
    invoke-static {v0}, Lcom/android/settings/LocationSettings;->access$000(Lcom/android/settings/LocationSettings;)Lcom/android/settings/SummaryListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SummaryListPreference;->setValue(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/LocationSettings$1;->this$0:Lcom/android/settings/LocationSettings;

    #getter for: Lcom/android/settings/LocationSettings;->mLocationPrivacyPolicy:Lcom/android/settings/SummaryListPreference;
    invoke-static {v0}, Lcom/android/settings/LocationSettings;->access$000(Lcom/android/settings/LocationSettings;)Lcom/android/settings/SummaryListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SummaryListPreference;->dismiss()V

    .line 225
    iget-object v0, p0, Lcom/android/settings/LocationSettings$1;->this$0:Lcom/android/settings/LocationSettings;

    #calls: Lcom/android/settings/LocationSettings;->setCurrentLocationPrivacyPolicy(I)V
    invoke-static {v0, v2}, Lcom/android/settings/LocationSettings;->access$100(Lcom/android/settings/LocationSettings;I)V

    .line 226
    return-void
.end method

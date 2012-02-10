.class Lcom/android/settings/SummaryListPreference$2;
.super Ljava/lang/Object;
.source "SummaryListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SummaryListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SummaryListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SummaryListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/SummaryListPreference$2;->this$0:Lcom/android/settings/SummaryListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/settings/SummaryListPreference$2;->this$0:Lcom/android/settings/SummaryListPreference;

    invoke-virtual {v1}, Lcom/android/settings/SummaryListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, clickedValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/SummaryListPreference$2;->this$0:Lcom/android/settings/SummaryListPreference;

    invoke-virtual {v1}, Lcom/android/settings/SummaryListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/settings/SummaryListPreference$2;->this$0:Lcom/android/settings/SummaryListPreference;

    #calls: Lcom/android/settings/SummaryListPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v1, v0}, Lcom/android/settings/SummaryListPreference;->access$200(Lcom/android/settings/SummaryListPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/settings/SummaryListPreference$2;->this$0:Lcom/android/settings/SummaryListPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/SummaryListPreference;->setValue(Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SummaryListPreference$2;->this$0:Lcom/android/settings/SummaryListPreference;

    #getter for: Lcom/android/settings/SummaryListPreference;->mDismissOnChange:Z
    invoke-static {v1}, Lcom/android/settings/SummaryListPreference;->access$300(Lcom/android/settings/SummaryListPreference;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/settings/SummaryListPreference$2;->this$0:Lcom/android/settings/SummaryListPreference;

    #calls: Lcom/android/settings/SummaryListPreference;->performItemClick(Landroid/content/DialogInterface;)V
    invoke-static {v1, p1}, Lcom/android/settings/SummaryListPreference;->access$400(Lcom/android/settings/SummaryListPreference;Landroid/content/DialogInterface;)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SummaryListPreference$2;->this$0:Lcom/android/settings/SummaryListPreference;

    #calls: Lcom/android/settings/SummaryListPreference;->performItemClick(Landroid/content/DialogInterface;)V
    invoke-static {v1, p1}, Lcom/android/settings/SummaryListPreference;->access$400(Lcom/android/settings/SummaryListPreference;Landroid/content/DialogInterface;)V

    goto :goto_0
.end method

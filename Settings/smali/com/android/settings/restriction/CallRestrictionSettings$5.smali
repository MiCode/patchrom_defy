.class Lcom/android/settings/restriction/CallRestrictionSettings$5;
.super Ljava/lang/Object;
.source "CallRestrictionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/restriction/CallRestrictionSettings;->createOutgoingCallDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/restriction/CallRestrictionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/restriction/CallRestrictionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/restriction/CallRestrictionSettings$5;->this$0:Lcom/android/settings/restriction/CallRestrictionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v1, p0, Lcom/android/settings/restriction/CallRestrictionSettings$5;->this$0:Lcom/android/settings/restriction/CallRestrictionSettings;

    invoke-virtual {v1}, Lcom/android/settings/restriction/CallRestrictionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "outgoing_call_restriction"

    iget-object v2, p0, Lcom/android/settings/restriction/CallRestrictionSettings$5;->this$0:Lcom/android/settings/restriction/CallRestrictionSettings;

    #getter for: Lcom/android/settings/restriction/CallRestrictionSettings;->mOutgoingSelection:I
    invoke-static {v2}, Lcom/android/settings/restriction/CallRestrictionSettings;->access$100(Lcom/android/settings/restriction/CallRestrictionSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    iget-object v1, p0, Lcom/android/settings/restriction/CallRestrictionSettings$5;->this$0:Lcom/android/settings/restriction/CallRestrictionSettings;

    iget-object v2, p0, Lcom/android/settings/restriction/CallRestrictionSettings$5;->this$0:Lcom/android/settings/restriction/CallRestrictionSettings;

    invoke-virtual {v2}, Lcom/android/settings/restriction/CallRestrictionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incoming_call_restriction"

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/settings/restriction/CallRestrictionSettings;->mIncomingSelection:I
    invoke-static {v1, v2}, Lcom/android/settings/restriction/CallRestrictionSettings;->access$002(Lcom/android/settings/restriction/CallRestrictionSettings;I)I

    .line 146
    const-string v1, "contact_protection"

    iget-object v2, p0, Lcom/android/settings/restriction/CallRestrictionSettings$5;->this$0:Lcom/android/settings/restriction/CallRestrictionSettings;

    #getter for: Lcom/android/settings/restriction/CallRestrictionSettings;->mIncomingSelection:I
    invoke-static {v2}, Lcom/android/settings/restriction/CallRestrictionSettings;->access$000(Lcom/android/settings/restriction/CallRestrictionSettings;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/restriction/CallRestrictionSettings$5;->this$0:Lcom/android/settings/restriction/CallRestrictionSettings;

    #getter for: Lcom/android/settings/restriction/CallRestrictionSettings;->mOutgoingSelection:I
    invoke-static {v2}, Lcom/android/settings/restriction/CallRestrictionSettings;->access$100(Lcom/android/settings/restriction/CallRestrictionSettings;)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    return-void

    :cond_1
    move v2, v4

    .line 146
    goto :goto_0
.end method

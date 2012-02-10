.class Lcom/android/settings/restriction/MessageRestrictionSettings$5;
.super Ljava/lang/Object;
.source "MessageRestrictionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/restriction/MessageRestrictionSettings;->createOutgoingMessageDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/restriction/MessageRestrictionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/restriction/MessageRestrictionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/restriction/MessageRestrictionSettings$5;->this$0:Lcom/android/settings/restriction/MessageRestrictionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/settings/restriction/MessageRestrictionSettings$5;->this$0:Lcom/android/settings/restriction/MessageRestrictionSettings;

    invoke-virtual {v2}, Lcom/android/settings/restriction/MessageRestrictionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "outgoing_message_restriction"

    iget-object v3, p0, Lcom/android/settings/restriction/MessageRestrictionSettings$5;->this$0:Lcom/android/settings/restriction/MessageRestrictionSettings;

    #getter for: Lcom/android/settings/restriction/MessageRestrictionSettings;->mOutgoingSelection:I
    invoke-static {v3}, Lcom/android/settings/restriction/MessageRestrictionSettings;->access$100(Lcom/android/settings/restriction/MessageRestrictionSettings;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.restriction.OUTGOING_MESSAGING_RESTRICTION_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/restriction/MessageRestrictionSettings$5;->this$0:Lcom/android/settings/restriction/MessageRestrictionSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings/restriction/MessageRestrictionSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

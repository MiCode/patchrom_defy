.class Lcom/android/settings/restriction/MessageRestrictionSettings$4;
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
    .line 148
    iput-object p1, p0, Lcom/android/settings/restriction/MessageRestrictionSettings$4;->this$0:Lcom/android/settings/restriction/MessageRestrictionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 152
    return-void
.end method

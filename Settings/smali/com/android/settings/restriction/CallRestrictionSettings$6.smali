.class Lcom/android/settings/restriction/CallRestrictionSettings$6;
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
    .line 129
    iput-object p1, p0, Lcom/android/settings/restriction/CallRestrictionSettings$6;->this$0:Lcom/android/settings/restriction/CallRestrictionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings$6;->this$0:Lcom/android/settings/restriction/CallRestrictionSettings;

    #setter for: Lcom/android/settings/restriction/CallRestrictionSettings;->mOutgoingSelection:I
    invoke-static {v0, p2}, Lcom/android/settings/restriction/CallRestrictionSettings;->access$102(Lcom/android/settings/restriction/CallRestrictionSettings;I)I

    .line 134
    return-void
.end method

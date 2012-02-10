.class Lcom/android/settings/restriction/RestrictionSettings$3;
.super Ljava/lang/Object;
.source "RestrictionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/restriction/RestrictionSettings;->createDialupDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/restriction/RestrictionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/restriction/RestrictionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/restriction/RestrictionSettings$3;->this$0:Lcom/android/settings/restriction/RestrictionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/restriction/RestrictionSettings$3;->this$0:Lcom/android/settings/restriction/RestrictionSettings;

    #setter for: Lcom/android/settings/restriction/RestrictionSettings;->mDialupSelection:I
    invoke-static {v0, p2}, Lcom/android/settings/restriction/RestrictionSettings;->access$002(Lcom/android/settings/restriction/RestrictionSettings;I)I

    .line 93
    return-void
.end method

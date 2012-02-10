.class Lcom/android/settings/restriction/RestrictionSettings$2;
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
    .line 95
    iput-object p1, p0, Lcom/android/settings/restriction/RestrictionSettings$2;->this$0:Lcom/android/settings/restriction/RestrictionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/settings/restriction/RestrictionSettings$2;->this$0:Lcom/android/settings/restriction/RestrictionSettings;

    invoke-virtual {v1}, Lcom/android/settings/restriction/RestrictionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "dialup_modem_restriction"

    iget-object v2, p0, Lcom/android/settings/restriction/RestrictionSettings$2;->this$0:Lcom/android/settings/restriction/RestrictionSettings;

    #getter for: Lcom/android/settings/restriction/RestrictionSettings;->mDialupSelection:I
    invoke-static {v2}, Lcom/android/settings/restriction/RestrictionSettings;->access$000(Lcom/android/settings/restriction/RestrictionSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    return-void
.end method

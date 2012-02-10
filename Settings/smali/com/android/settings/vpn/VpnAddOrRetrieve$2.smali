.class Lcom/android/settings/vpn/VpnAddOrRetrieve$2;
.super Ljava/lang/Object;
.source "VpnAddOrRetrieve.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnAddOrRetrieve;->ProcessIntent(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnAddOrRetrieve;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnAddOrRetrieve;ILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve$2;->this$0:Lcom/android/settings/vpn/VpnAddOrRetrieve;

    iput p2, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve$2;->val$requestCode:I

    iput-object p3, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve$2;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve$2;->this$0:Lcom/android/settings/vpn/VpnAddOrRetrieve;

    iget v1, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve$2;->val$requestCode:I

    iget-object v2, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve$2;->val$data:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/vpn/VpnAddOrRetrieve;->ProcessIntent(ILandroid/content/Intent;)V

    .line 379
    return-void
.end method

.class Lcom/android/settings/SecuritySettings$9;
.super Ljava/lang/Thread;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1222
    const/4 v2, 0x0

    .line 1224
    .local v2, result:I
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mAuthentecMobile:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/settings/SecuritySettings;->access$400(Lcom/android/settings/SecuritySettings;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "AMApplication_Database_FactoryReset"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1225
    .local v1, factoryResetMethod:Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mAuthentecMobile:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/settings/SecuritySettings;->access$400(Lcom/android/settings/SecuritySettings;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1226
    .local v3, resultObject:Ljava/lang/Object;
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #resultObject:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1227
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->eAM_STATUS_TIMEOUT:I
    invoke-static {v4}, Lcom/android/settings/SecuritySettings;->access$800(Lcom/android/settings/SecuritySettings;)I

    move-result v4

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/settings/SecuritySettings;->access$600(Lcom/android/settings/SecuritySettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1228
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v5, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->confirmPassword:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/settings/SecuritySettings;->access$900(Lcom/android/settings/SecuritySettings;)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x6e

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    .end local v1           #factoryResetMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1231
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1232
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "SecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Lcom/android/settings/SecuritySettings$1;
.super Ljava/lang/Thread;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->onResume()V
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
    .line 686
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 689
    const/4 v1, 0x0

    .line 691
    .local v1, iResult:I
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mAuthentecMobile:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/settings/SecuritySettings;->access$400(Lcom/android/settings/SecuritySettings;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "AMApplication_LAP_Get_Map"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 692
    .local v2, lapGetMapMethod:Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mAuthentecMobile:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/settings/SecuritySettings;->access$400(Lcom/android/settings/SecuritySettings;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 693
    .local v3, resultObject:Ljava/lang/Object;
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #resultObject:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 699
    .end local v2           #lapGetMapMethod:Ljava/lang/reflect/Method;
    :goto_0
    if-lez v1, :cond_1

    .line 700
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    const/4 v5, 0x1

    #setter for: Lcom/android/settings/SecuritySettings;->mFingerprintsStored:Z
    invoke-static {v4, v5}, Lcom/android/settings/SecuritySettings;->access$502(Lcom/android/settings/SecuritySettings;Z)Z

    .line 701
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/settings/SecuritySettings;->access$600(Lcom/android/settings/SecuritySettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 702
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    new-instance v5, Lcom/android/settings/SecuritySettings$1$1;

    invoke-direct {v5, p0}, Lcom/android/settings/SecuritySettings$1$1;-><init>(Lcom/android/settings/SecuritySettings$1;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/SecuritySettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 711
    :cond_0
    :goto_1
    return-void

    .line 695
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 696
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

    .line 709
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #setter for: Lcom/android/settings/SecuritySettings;->mFingerprintsStored:Z
    invoke-static {v4, v7}, Lcom/android/settings/SecuritySettings;->access$502(Lcom/android/settings/SecuritySettings;Z)Z

    goto :goto_1
.end method

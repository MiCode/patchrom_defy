.class Lcom/android/settings/ChooseLockGeneric$1;
.super Ljava/lang/Thread;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockGeneric;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$1;->this$0:Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 137
    const/4 v2, 0x0

    .line 139
    .local v2, iResult:I
    :try_start_0
    const-string v7, "com.authentec.amjni.AuthentecMobile"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 140
    .local v4, mAuthentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 141
    .local v0, contextConstructor:Ljava/lang/reflect/Constructor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$1;->this$0:Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v9}, Lcom/android/settings/ChooseLockGeneric;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 142
    .local v5, myObject:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "AMApplication_LAP_Get_Map"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 143
    .local v3, lapGetMapMethod:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 144
    .local v6, resultObject:Ljava/lang/Object;
    check-cast v6, Ljava/lang/Integer;

    .end local v6           #resultObject:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 145
    if-lez v2, :cond_0

    .line 146
    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$1;->this$0:Lcom/android/settings/ChooseLockGeneric;

    const/4 v8, 0x1

    #setter for: Lcom/android/settings/ChooseLockGeneric;->mFingerprintsStored:Z
    invoke-static {v7, v8}, Lcom/android/settings/ChooseLockGeneric;->access$002(Lcom/android/settings/ChooseLockGeneric;Z)Z

    .line 154
    .end local v0           #contextConstructor:Ljava/lang/reflect/Constructor;
    .end local v3           #lapGetMapMethod:Ljava/lang/reflect/Method;
    .end local v4           #mAuthentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #myObject:Ljava/lang/Object;
    :goto_0
    return-void

    .line 148
    .restart local v0       #contextConstructor:Ljava/lang/reflect/Constructor;
    .restart local v3       #lapGetMapMethod:Ljava/lang/reflect/Method;
    .restart local v4       #mAuthentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v5       #myObject:Ljava/lang/Object;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$1;->this$0:Lcom/android/settings/ChooseLockGeneric;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings/ChooseLockGeneric;->mFingerprintsStored:Z
    invoke-static {v7, v8}, Lcom/android/settings/ChooseLockGeneric;->access$002(Lcom/android/settings/ChooseLockGeneric;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v0           #contextConstructor:Ljava/lang/reflect/Constructor;
    .end local v3           #lapGetMapMethod:Ljava/lang/reflect/Method;
    .end local v4           #mAuthentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #myObject:Ljava/lang/Object;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 152
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "ChooseLockGeneric"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

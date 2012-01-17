.class Lcom/android/internal/telephony/gsm/stk/SelectItemParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field loadTitleIcon:Z

.field menu:Lcom/android/internal/telephony/gsm/stk/Menu;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Menu;Z)V
    .locals 1
    .parameter "cmdDet"
    .parameter "menu"
    .parameter "loadTitleIcon"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->menu:Lcom/android/internal/telephony/gsm/stk/Menu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->loadTitleIcon:Z

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->menu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iput-boolean p3, p0, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->loadTitleIcon:Z

    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "icon"

    .prologue
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->menu:Lcom/android/internal/telephony/gsm/stk/Menu;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->loadTitleIcon:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->menu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->menu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iput-object p1, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIcon:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->menu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/Item;

    .local v1, item:Lcom/android/internal/telephony/gsm/stk/Item;
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/Item;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    iput-object p1, v1, Lcom/android/internal/telephony/gsm/stk/Item;->icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

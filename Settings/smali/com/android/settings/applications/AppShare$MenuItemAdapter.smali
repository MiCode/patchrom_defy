.class Lcom/android/settings/applications/AppShare$MenuItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuItemAdapter"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/applications/AppShare;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppShare;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/settings/applications/AppShare$MenuItemAdapter;->this$0:Lcom/android/settings/applications/AppShare;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/android/settings/applications/AppShare$MenuItemAdapter;->mList:Ljava/util/ArrayList;

    .line 169
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/applications/AppShare$MenuItemAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/applications/AppShare$MenuItemAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/applications/AppShare$MenuItemAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/applications/AppShare$MenuItemAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 188
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, holder:Lcom/android/settings/applications/AppShare$MenuItemHolder;
    if-nez p2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/android/settings/applications/AppShare$MenuItemAdapter;->this$0:Lcom/android/settings/applications/AppShare;

    #getter for: Lcom/android/settings/applications/AppShare;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/applications/AppShare;->access$000(Lcom/android/settings/applications/AppShare;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030029

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 196
    new-instance v0, Lcom/android/settings/applications/AppShare$MenuItemHolder;

    .end local v0           #holder:Lcom/android/settings/applications/AppShare$MenuItemHolder;
    invoke-direct {v0}, Lcom/android/settings/applications/AppShare$MenuItemHolder;-><init>()V

    .line 197
    .restart local v0       #holder:Lcom/android/settings/applications/AppShare$MenuItemHolder;
    const v2, 0x7f0c0084

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings/applications/AppShare$MenuItemHolder;->menuIcon:Landroid/widget/ImageView;

    .line 198
    const v2, 0x7f0c0085

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/applications/AppShare$MenuItemHolder;->menuLabel:Landroid/widget/TextView;

    .line 199
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/AppShare$MenuItemAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 205
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 206
    iget-object v2, v0, Lcom/android/settings/applications/AppShare$MenuItemHolder;->menuIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/applications/AppShare$MenuItemAdapter;->this$0:Lcom/android/settings/applications/AppShare;

    #getter for: Lcom/android/settings/applications/AppShare;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/applications/AppShare;->access$100(Lcom/android/settings/applications/AppShare;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v2, v0, Lcom/android/settings/applications/AppShare$MenuItemHolder;->menuLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/AppShare$MenuItemAdapter;->this$0:Lcom/android/settings/applications/AppShare;

    #getter for: Lcom/android/settings/applications/AppShare;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/applications/AppShare;->access$100(Lcom/android/settings/applications/AppShare;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_0
    return-object p2

    .line 201
    .end local v1           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/android/settings/applications/AppShare$MenuItemHolder;
    check-cast v0, Lcom/android/settings/applications/AppShare$MenuItemHolder;

    .restart local v0       #holder:Lcom/android/settings/applications/AppShare$MenuItemHolder;
    goto :goto_0
.end method

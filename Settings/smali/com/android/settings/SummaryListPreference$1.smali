.class Lcom/android/settings/SummaryListPreference$1;
.super Landroid/widget/ArrayAdapter;
.source "SummaryListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SummaryListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SummaryListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SummaryListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/SummaryListPreference$1;->this$0:Lcom/android/settings/SummaryListPreference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 124
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0c008c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    .local v1, summary:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/SummaryListPreference$1;->this$0:Lcom/android/settings/SummaryListPreference;

    #getter for: Lcom/android/settings/SummaryListPreference;->mEntrySummaries:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/settings/SummaryListPreference;->access$000(Lcom/android/settings/SummaryListPreference;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v3, 0x7f0c00e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 129
    .local v0, checkMark:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/SummaryListPreference$1;->this$0:Lcom/android/settings/SummaryListPreference;

    iget-object v4, p0, Lcom/android/settings/SummaryListPreference$1;->this$0:Lcom/android/settings/SummaryListPreference;

    invoke-virtual {v4}, Lcom/android/settings/SummaryListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SummaryListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 130
    invoke-static {}, Lcom/android/settings/SummaryListPreference;->access$100()[I

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 135
    :goto_0
    return-object v2

    .line 132
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0
.end method

.class public Lcom/android/settings/ProgressCategory;
.super Landroid/preference/PreferenceCategory;
.source "ProgressCategory.java"


# instance fields
.field mLastProgressBar:Landroid/widget/ProgressBar;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    .line 34
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 40
    const v3, 0x7f0c00a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, textView:Landroid/view/View;
    const v3, 0x7f0c00a6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move v2, v3

    .line 44
    .local v2, visibility:I
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    if-eq v3, v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->unbindLastProgressBar()V

    .line 51
    :cond_0
    check-cast v0, Landroid/widget/ProgressBar;

    .end local v0           #progressBar:Landroid/view/View;
    iput-object v0, p0, Lcom/android/settings/ProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    .line 53
    if-eqz v2, :cond_1

    .line 54
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 55
    iput-object v4, p0, Lcom/android/settings/ProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    .line 57
    :cond_1
    return-void

    .line 43
    .end local v2           #visibility:I
    .restart local v0       #progressBar:Landroid/view/View;
    :cond_2
    const/4 v3, 0x4

    move v2, v3

    goto :goto_0
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 66
    return-void
.end method

.method public unbindLastProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 75
    iput-object v2, p0, Lcom/android/settings/ProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    .line 77
    :cond_0
    return-void
.end method

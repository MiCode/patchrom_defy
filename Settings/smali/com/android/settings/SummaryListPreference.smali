.class public Lcom/android/settings/SummaryListPreference;
.super Landroid/preference/ListPreference;
.source "SummaryListPreference.java"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mDismissOnChange:Z

.field private mEntrySummaries:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/SummaryListPreference;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SummaryListPreference;->mDismissOnChange:Z

    .line 47
    sget-object v1, Lcom/android/settings/R$styleable;->SummaryListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SummaryListPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SummaryListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/SummaryListPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings/SummaryListPreference;->CHECKED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SummaryListPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/settings/SummaryListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/SummaryListPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/settings/SummaryListPreference;->mDismissOnChange:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/SummaryListPreference;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/SummaryListPreference;->performItemClick(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private performItemClick(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 167
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SummaryListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 168
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 169
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/SummaryListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 107
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 110
    :cond_0
    return-void
.end method

.method public getEntrySummaries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/SummaryListPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isDismissOnChange()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/settings/SummaryListPreference;->mDismissOnChange:Z

    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 163
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 117
    new-instance v0, Lcom/android/settings/SummaryListPreference$1;

    invoke-virtual {p0}, Lcom/android/settings/SummaryListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f03004c

    const v4, 0x7f0c0016

    invoke-virtual {p0}, Lcom/android/settings/SummaryListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SummaryListPreference$1;-><init>(Lcom/android/settings/SummaryListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 139
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v6, Lcom/android/settings/SummaryListPreference$2;

    invoke-direct {v6, p0}, Lcom/android/settings/SummaryListPreference$2;-><init>(Lcom/android/settings/SummaryListPreference;)V

    .line 156
    .local v6, listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p1, v0, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    return-void
.end method

.method public setDismissOnChange(Z)V
    .locals 0
    .parameter "dismissOnChange"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/settings/SummaryListPreference;->mDismissOnChange:Z

    .line 93
    return-void
.end method

.method public setEntrySummaries(I)V
    .locals 1
    .parameter "entrySummariesResId"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/SummaryListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SummaryListPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public setEntrySummaries([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entrySummaries"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/SummaryListPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    .line 64
    return-void
.end method

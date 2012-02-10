.class public Lcom/android/settings/LocationPowerupActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "LocationPowerupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocationPowerupActivity$PowerupReceiver;
    }
.end annotation


# static fields
.field private static final DLG_BASIC_LOCATION_ON:I = 0x1

.field private static final DLG_PREFERRED_LOCATION_ON:I = 0x2

.field private static final EXTRA_DIALOG_TYPE:Ljava/lang/String; = "com.android.settings.DIALOG_TYPE"

.field private static final FEATURE_LOCATION_PRIVACY_SETTING:Ljava/lang/String; = "ro.mot.settings.locprivacy"

.field private static final PREFS_BASIC_LOCATION_NEVER_SHOW:Ljava/lang/String; = "basic_never_show"

.field private static final PREFS_NAME:Ljava/lang/String; = "powerup_prefs"

.field private static final PREFS_PREFERRED_LOCATION_NEVER_SHOW:Ljava/lang/String; = "preferred_never_show"


# instance fields
.field private mDialogType:I

.field private mNeverShowView:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/settings/LocationPowerupActivity;->getDialogTypeToShow(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static getDialogTypeToShow(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 102
    const/4 v0, -0x1

    .line 103
    .local v0, dialogType:I
    const/4 v2, -0x1

    .line 105
    .local v2, privacySetting:I
    const-string v3, "powerup_prefs"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 107
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "1"

    const-string v4, "ro.mot.settings.locprivacy"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/LocationSettings;->getCurrentLocationPrivacyPolicy(Landroid/content/ContentResolver;)I

    move-result v2

    .line 111
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 133
    :cond_1
    :goto_0
    return v0

    .line 113
    :pswitch_0
    if-eqz v1, :cond_2

    const-string v3, "basic_never_show"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    :cond_2
    const/4 v0, 0x1

    .line 118
    goto :goto_0

    .line 121
    :pswitch_1
    if-eqz v1, :cond_3

    const-string v3, "preferred_never_show"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    :cond_3
    const/4 v0, 0x2

    .line 126
    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDialogOrFinish(I)V
    .locals 5
    .parameter "dialogType"

    .prologue
    .line 138
    const v3, 0x7f030021

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/android/settings/LocationPowerupActivity;->mNeverShowView:Landroid/widget/CheckedTextView;

    .line 139
    iget-object v3, p0, Lcom/android/settings/LocationPowerupActivity;->mNeverShowView:Landroid/widget/CheckedTextView;

    const v4, 0x10800c1

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 140
    iget-object v3, p0, Lcom/android/settings/LocationPowerupActivity;->mNeverShowView:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iput p1, p0, Lcom/android/settings/LocationPowerupActivity;->mDialogType:I

    .line 143
    iget-object v1, p0, Lcom/android/settings/LocationPowerupActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 144
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x1080027

    iput v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 145
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/settings/LocationPowerupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 146
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 147
    const/high16 v3, 0x104

    invoke-virtual {p0, v3}, Lcom/android/settings/LocationPowerupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 148
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 149
    iget-object v3, p0, Lcom/android/settings/LocationPowerupActivity;->mNeverShowView:Landroid/widget/CheckedTextView;

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/LocationPowerupActivity;->finish()V

    .line 171
    :goto_0
    const v3, 0x102019a

    invoke-virtual {p0, v3}, Lcom/android/settings/LocationPowerupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 172
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 174
    .local v0, l:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 175
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .end local v0           #l:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void

    .line 153
    .end local v2           #v:Landroid/view/View;
    :pswitch_0
    const v3, 0x7f08013f

    invoke-virtual {p0, v3}, Lcom/android/settings/LocationPowerupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 154
    const v3, 0x7f080141

    invoke-virtual {p0, v3}, Lcom/android/settings/LocationPowerupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/LocationPowerupActivity;->setupAlert()V

    goto :goto_0

    .line 159
    :pswitch_1
    const v3, 0x7f080142

    invoke-virtual {p0, v3}, Lcom/android/settings/LocationPowerupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 160
    const v3, 0x7f080144

    invoke-virtual {p0, v3}, Lcom/android/settings/LocationPowerupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/LocationPowerupActivity;->setupAlert()V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 84
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/LocationPowerupActivity;->mNeverShowView:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const-string v2, "powerup_prefs"

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/LocationPowerupActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget v2, p0, Lcom/android/settings/LocationPowerupActivity;->mDialogType:I

    if-ne v2, v4, :cond_2

    .line 88
    const-string v2, "basic_never_show"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    iput v5, p0, Lcom/android/settings/LocationPowerupActivity;->mDialogType:I

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/LocationPowerupActivity;->finish()V

    .line 98
    return-void

    .line 89
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    :cond_2
    iget v2, p0, Lcom/android/settings/LocationPowerupActivity;->mDialogType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 90
    const-string v2, "preferred_never_show"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/LocationPowerupActivity;->mNeverShowView:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/LocationPowerupActivity;->mNeverShowView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 81
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v0, -0x1

    .line 69
    .local v0, dialogType:I
    invoke-virtual {p0}, Lcom/android/settings/LocationPowerupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 70
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 71
    const-string v2, "com.android.settings.DIALOG_TYPE"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 74
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/LocationPowerupActivity;->showDialogOrFinish(I)V

    .line 75
    return-void
.end method

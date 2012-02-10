.class public Lcom/android/settings/restriction/CallRestrictionSettings;
.super Landroid/preference/PreferenceActivity;
.source "CallRestrictionSettings.java"


# static fields
.field private static final INCOMING_CALL_DIALOG:I = 0x1

.field private static final KEY_INCOMING_CALL_RESTRICTION:Ljava/lang/String; = "incoming_call_restriction_settings"

.field private static final KEY_OUTGOING_CALL_RESTRICTION:Ljava/lang/String; = "outgoing_call_restriction_settings"

.field private static final OUTGOING_CALL_DIALOG:I = 0x2


# instance fields
.field private mIncomingCallDialog:Landroid/app/Dialog;

.field mIncomingCallRestriction:Landroid/preference/Preference;

.field private mIncomingSelection:I

.field mOutGoingCallRestriction:Landroid/preference/Preference;

.field private mOutgoingCallDialog:Landroid/app/Dialog;

.field private mOutgoingSelection:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/restriction/CallRestrictionSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mIncomingSelection:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/restriction/CallRestrictionSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mIncomingSelection:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/restriction/CallRestrictionSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mOutgoingSelection:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/restriction/CallRestrictionSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mOutgoingSelection:I

    return p1
.end method

.method private createIncomingCallDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/restriction/CallRestrictionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_restriction"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mIncomingSelection:I

    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050041

    iget v2, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mIncomingSelection:I

    new-instance v3, Lcom/android/settings/restriction/CallRestrictionSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/restriction/CallRestrictionSettings$3;-><init>(Lcom/android/settings/restriction/CallRestrictionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08057a

    new-instance v2, Lcom/android/settings/restriction/CallRestrictionSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/restriction/CallRestrictionSettings$2;-><init>(Lcom/android/settings/restriction/CallRestrictionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08057b

    new-instance v2, Lcom/android/settings/restriction/CallRestrictionSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/restriction/CallRestrictionSettings$1;-><init>(Lcom/android/settings/restriction/CallRestrictionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mIncomingCallDialog:Landroid/app/Dialog;

    .line 119
    iget-object v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mIncomingCallDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private createOutgoingCallDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/settings/restriction/CallRestrictionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "outgoing_call_restriction"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mOutgoingSelection:I

    .line 126
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050041

    iget v2, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mOutgoingSelection:I

    new-instance v3, Lcom/android/settings/restriction/CallRestrictionSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/restriction/CallRestrictionSettings$6;-><init>(Lcom/android/settings/restriction/CallRestrictionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08057a

    new-instance v2, Lcom/android/settings/restriction/CallRestrictionSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/restriction/CallRestrictionSettings$5;-><init>(Lcom/android/settings/restriction/CallRestrictionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08057b

    new-instance v2, Lcom/android/settings/restriction/CallRestrictionSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/restriction/CallRestrictionSettings$4;-><init>(Lcom/android/settings/restriction/CallRestrictionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mOutgoingCallDialog:Landroid/app/Dialog;

    .line 158
    iget-object v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mOutgoingCallDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/CallRestrictionSettings;->addPreferencesFromResource(I)V

    .line 79
    const-string v0, "incoming_call_restriction_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/CallRestrictionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mIncomingCallRestriction:Landroid/preference/Preference;

    .line 80
    const-string v0, "outgoing_call_restriction_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/CallRestrictionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mOutGoingCallRestriction:Landroid/preference/Preference;

    .line 82
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 44
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/restriction/CallRestrictionSettings;->createIncomingCallDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/restriction/CallRestrictionSettings;->createOutgoingCallDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 55
    iget-object v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mIncomingCallRestriction:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 56
    invoke-virtual {p0, v1}, Lcom/android/settings/restriction/CallRestrictionSettings;->removeDialog(I)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/settings/restriction/CallRestrictionSettings;->showDialog(I)V

    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/restriction/CallRestrictionSettings;->mOutGoingCallRestriction:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/settings/restriction/CallRestrictionSettings;->removeDialog(I)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/settings/restriction/CallRestrictionSettings;->showDialog(I)V

    move v0, v1

    .line 65
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

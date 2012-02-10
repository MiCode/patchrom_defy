.class public Lcom/android/settings/restriction/MessageRestrictionSettings;
.super Landroid/preference/PreferenceActivity;
.source "MessageRestrictionSettings.java"


# static fields
.field private static final ACTION_INCOMING_MESSAGING_RESTRICTION_UPDATED:Ljava/lang/String; = "com.android.settings.restriction.INCOMING_MESSAGING_RESTRICTION_UPDATED"

.field private static final ACTION_OUTGOING_MESSAGING_RESTRICTION_UPDATED:Ljava/lang/String; = "com.android.settings.restriction.OUTGOING_MESSAGING_RESTRICTION_UPDATED"

.field private static final INCOMING_MESSAGE_DIALOG:I = 0x1

.field private static final KEY_INCOMING_MESSAGE_RESTRICTION:Ljava/lang/String; = "incoming_message_restriction_settings"

.field private static final KEY_MESSAGING_RESTRICTION_STATUS:Ljava/lang/String; = "com.android.settings.restriction.Value"

.field private static final KEY_OUTGOING_MESSAGE_RESTRICTION:Ljava/lang/String; = "outgoing_message_restriction_settings"

.field private static final OUTGOING_MESSAGE_DIALOG:I = 0x2


# instance fields
.field private mIncomingMessageDialog:Landroid/app/Dialog;

.field mIncomingMessageRestriction:Landroid/preference/Preference;

.field private mIncomingSelection:I

.field mOutGoingMessageRestriction:Landroid/preference/Preference;

.field private mOutgoingMessageDialog:Landroid/app/Dialog;

.field private mOutgoingSelection:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/restriction/MessageRestrictionSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mIncomingSelection:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/restriction/MessageRestrictionSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mIncomingSelection:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/restriction/MessageRestrictionSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mOutgoingSelection:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/restriction/MessageRestrictionSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mOutgoingSelection:I

    return p1
.end method

.method private createIncomingMessageDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/restriction/MessageRestrictionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_message_restriction"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mIncomingSelection:I

    .line 90
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050043

    iget v2, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mIncomingSelection:I

    new-instance v3, Lcom/android/settings/restriction/MessageRestrictionSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/restriction/MessageRestrictionSettings$3;-><init>(Lcom/android/settings/restriction/MessageRestrictionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08057a

    new-instance v2, Lcom/android/settings/restriction/MessageRestrictionSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/restriction/MessageRestrictionSettings$2;-><init>(Lcom/android/settings/restriction/MessageRestrictionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08057b

    new-instance v2, Lcom/android/settings/restriction/MessageRestrictionSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/restriction/MessageRestrictionSettings$1;-><init>(Lcom/android/settings/restriction/MessageRestrictionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mIncomingMessageDialog:Landroid/app/Dialog;

    .line 119
    iget-object v0, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mIncomingMessageDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private createOutgoingMessageDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/settings/restriction/MessageRestrictionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "outgoing_message_restriction"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mOutgoingSelection:I

    .line 126
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050043

    iget v2, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mOutgoingSelection:I

    new-instance v3, Lcom/android/settings/restriction/MessageRestrictionSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/restriction/MessageRestrictionSettings$6;-><init>(Lcom/android/settings/restriction/MessageRestrictionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08057a

    new-instance v2, Lcom/android/settings/restriction/MessageRestrictionSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/restriction/MessageRestrictionSettings$5;-><init>(Lcom/android/settings/restriction/MessageRestrictionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08057b

    new-instance v2, Lcom/android/settings/restriction/MessageRestrictionSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/restriction/MessageRestrictionSettings$4;-><init>(Lcom/android/settings/restriction/MessageRestrictionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mOutgoingMessageDialog:Landroid/app/Dialog;

    .line 155
    iget-object v0, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mOutgoingMessageDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/MessageRestrictionSettings;->addPreferencesFromResource(I)V

    .line 81
    const-string v0, "incoming_message_restriction_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/MessageRestrictionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mIncomingMessageRestriction:Landroid/preference/Preference;

    .line 82
    const-string v0, "outgoing_message_restriction_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/restriction/MessageRestrictionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mOutGoingMessageRestriction:Landroid/preference/Preference;

    .line 84
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 49
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/restriction/MessageRestrictionSettings;->createIncomingMessageDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/restriction/MessageRestrictionSettings;->createOutgoingMessageDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 42
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

    .line 59
    iget-object v0, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mIncomingMessageRestriction:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/settings/restriction/MessageRestrictionSettings;->removeDialog(I)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/android/settings/restriction/MessageRestrictionSettings;->showDialog(I)V

    move v0, v1

    .line 71
    :goto_0
    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings/restriction/MessageRestrictionSettings;->mOutGoingMessageRestriction:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/settings/restriction/MessageRestrictionSettings;->removeDialog(I)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/android/settings/restriction/MessageRestrictionSettings;->showDialog(I)V

    move v0, v1

    .line 67
    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

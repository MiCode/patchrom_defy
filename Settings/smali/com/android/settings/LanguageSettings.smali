.class public Lcom/android/settings/LanguageSettings;
.super Landroid/preference/PreferenceActivity;
.source "LanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LanguageSettings$Loc;
    }
.end annotation


# static fields
.field private static final DEBUG_LOCALE_CHANGE:Z = false

.field private static final EXTERNAL_KEYBOARD_CATEGORY_KEY:Ljava/lang/String; = "external_keyboard_category"

.field private static final EXTERNAL_KEYBOARD_DISABLED:Ljava/lang/String; = "disabled"

.field private static final EXTERNAL_KEYBOARD_KEY:Ljava/lang/String; = "external_keyboard_layout"

.field private static final KEY_HARDKEYBOARD_CATEGORY:Ljava/lang/String; = "hardkeyboard_category"

.field private static final KEY_KEYBOARD_SETTINGS_CATEGORY:Ljava/lang/String; = "keyboard_settings_category"

.field private static final LOCALE_CHOICES_KEY:Ljava/lang/String; = "locale_choices"

.field private static final LOG_LOCALE_CHANGE:Z = true

.field private static final TAG:Ljava/lang/String; = "LanguageSettings"


# instance fields
.field private mCheckboxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalKbdLayout_Entries:[Ljava/lang/String;

.field private mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

.field private mExternalKbdLayout_Values:[Ljava/lang/String;

.field private mHaveHardKeyboard:Z

.field private mInputMethodProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageChoices_ListPreference:Landroid/preference/ListPreference;

.field private mLastInputMethodId:Ljava/lang/String;

.field private mLastTickedInputMethodId:Ljava/lang/String;

.field private mLocaleChoices_FilteredLocale_Codes:[Ljava/lang/String;

.field private mLocaleChoices_FilteredLocale_Labels:[Ljava/lang/String;

.field private mLocaleChoices_FilteredLocale_Loc:[Lcom/android/settings/LanguageSettings$Loc;

.field private mLocaleChoices_PreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mPrefInputmethod:Landroid/preference/Preference;

.field private mReceiverInputMethod:Landroid/content/BroadcastReceiver;

.field private mSpecialLocale_Codes:[Ljava/lang/String;

.field private mSpecialLocale_Names:[Ljava/lang/String;

.field final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mUpdateThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 124
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->mUpdateThreadHandler:Landroid/os/Handler;

    .line 398
    new-instance v0, Lcom/android/settings/LanguageSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/LanguageSettings$2;-><init>(Lcom/android/settings/LanguageSettings;)V

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->mReceiverInputMethod:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LanguageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/settings/LanguageSettings;->updatePrefInputMethod()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/LanguageSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/LanguageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/settings/LanguageSettings;->updateInputMethodList()V

    return-void
.end method

.method private displayExternalKeyboardAlertDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 1071
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/LanguageSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/LanguageSettings$6;-><init>(Lcom/android/settings/LanguageSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1083
    .local v0, d:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1084
    return-void
.end method

.method public static getInputMethodIdFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "key"

    .prologue
    .line 184
    return-object p0
.end method

.method private initializeListPreferences_ExternalKeyboard()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const-string v12, "external_keyboard_category"

    .line 996
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "keyboard_layout_external"

    invoke-static {v8, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1001
    .local v4, externalLayoutString:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v8, "disabled"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1004
    :cond_0
    const-string v8, "external_keyboard_category"

    invoke-virtual {p0, v8}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1005
    .local v3, extKbdGrp:Landroid/preference/Preference;
    if-eqz v3, :cond_1

    .line 1006
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1008
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    .line 1068
    .end local v3           #extKbdGrp:Landroid/preference/Preference;
    .end local v4           #externalLayoutString:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1012
    .restart local v4       #externalLayoutString:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "external_keyboard_layout"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    .line 1015
    iget-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    if-eqz v8, :cond_2

    .line 1019
    iget-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1021
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f05004b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, entries:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f05004c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1026
    .local v7, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1027
    .local v0, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v8, v7

    if-ge v5, v8, :cond_5

    .line 1028
    aget-object v8, v7, v5

    invoke-static {v8}, Lcom/android/settings/KbdLayoutSetter;->isValidKcm(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1029
    const/4 v8, 0x0

    aput-object v8, v7, v5

    .line 1027
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1032
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1036
    :cond_5
    new-array v8, v0, [Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_Entries:[Ljava/lang/String;

    .line 1037
    new-array v8, v0, [Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_Values:[Ljava/lang/String;

    .line 1038
    const/4 v6, 0x0

    .line 1039
    .local v6, j:I
    const/4 v5, 0x0

    :goto_3
    array-length v8, v7

    if-ge v5, v8, :cond_7

    .line 1040
    aget-object v8, v7, v5

    if-eqz v8, :cond_6

    .line 1041
    iget-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_Entries:[Ljava/lang/String;

    aget-object v9, v1, v5

    aput-object v9, v8, v6

    .line 1042
    iget-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_Values:[Ljava/lang/String;

    aget-object v9, v7, v5

    aput-object v9, v8, v6

    .line 1043
    add-int/lit8 v6, v6, 0x1

    .line 1039
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1047
    :cond_7
    iget-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_Entries:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_Values:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1050
    const/4 v5, 0x0

    :goto_4
    iget-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_Values:[Ljava/lang/String;

    array-length v8, v8

    if-ge v5, v8, :cond_2

    .line 1051
    iget-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_Values:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1052
    iget-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_Entries:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1053
    iget-object v8, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_Values:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1058
    .end local v0           #count:I
    .end local v1           #entries:[Ljava/lang/String;
    .end local v4           #externalLayoutString:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #values:[Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 1060
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "LanguageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const-string v8, "external_keyboard_category"

    invoke-virtual {p0, v12}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1063
    .restart local v3       #extKbdGrp:Landroid/preference/Preference;
    if-eqz v3, :cond_8

    .line 1064
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1066
    :cond_8
    iput-object v11, p0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    goto/16 :goto_0

    .line 1050
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #extKbdGrp:Landroid/preference/Preference;
    .restart local v0       #count:I
    .restart local v1       #entries:[Ljava/lang/String;
    .restart local v4       #externalLayoutString:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #values:[Ljava/lang/String;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method private internal_filterSpecialLocaleNames(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "inLocale"

    .prologue
    .line 840
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, varLocaleCode:Ljava/lang/String;
    const-string v2, "zz_ZZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 845
    const-string v2, "Pseudo..."

    .line 852
    :goto_0
    return-object v2

    .line 847
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/LanguageSettings;->mSpecialLocale_Codes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 848
    iget-object v2, p0, Lcom/android/settings/LanguageSettings;->mSpecialLocale_Codes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 849
    iget-object v2, p0, Lcom/android/settings/LanguageSettings;->mSpecialLocale_Names:[Ljava/lang/String;

    aget-object v2, v2, v0

    goto :goto_0

    .line 847
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 852
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private internal_getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .parameter "inLocale"

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/android/settings/LanguageSettings;->internal_filterSpecialLocaleNames(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, returnValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 860
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/LanguageSettings;->internal_toInitialCap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private internal_getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .parameter "inLocale"

    .prologue
    .line 866
    invoke-direct {p0, p1}, Lcom/android/settings/LanguageSettings;->internal_filterSpecialLocaleNames(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, returnValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 870
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/LanguageSettings;->internal_toInitialCap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private internal_initializeListPreference_LocaleChoices()V
    .locals 22

    .prologue
    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLocaleChoices_PreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_PreferenceScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    const-string v20, "locale_choices"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLanguageChoices_ListPreference:Landroid/preference/ListPreference;

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLanguageChoices_ListPreference:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f05002a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mSpecialLocale_Codes:[Ljava/lang/String;

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f05002b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mSpecialLocale_Names:[Ljava/lang/String;

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v17

    .line 527
    .local v17, varOriginalLocaleStringsArray:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    .line 529
    .local v18, varOriginalLocaleStringsArray_Size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move v0, v3

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 530
    const/4 v14, 0x0

    .line 531
    .local v14, varLocale:Ljava/util/Locale;
    aget-object v15, v17, v3

    .line 532
    .local v15, varLocaleCode:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 534
    new-instance v14, Ljava/util/Locale;

    .end local v14           #varLocale:Ljava/util/Locale;
    invoke-direct {v14, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 542
    .restart local v14       #varLocale:Ljava/util/Locale;
    :cond_0
    :goto_1
    if-eqz v14, :cond_1

    .line 545
    invoke-virtual {v14}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    .line 546
    aget-object v19, v17, v3

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 561
    aput-object v15, v17, v3

    .line 529
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 536
    :cond_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 538
    const/16 v19, 0x0

    const/16 v20, 0x2

    move-object v0, v15

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 539
    .local v13, varLanguageCode:Ljava/lang/String;
    const/16 v19, 0x3

    const/16 v20, 0x5

    move-object v0, v15

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, varCountryCode:Ljava/lang/String;
    new-instance v14, Ljava/util/Locale;

    .end local v14           #varLocale:Ljava/util/Locale;
    invoke-direct {v14, v13, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v14       #varLocale:Ljava/util/Locale;
    goto :goto_1

    .line 565
    .end local v4           #varCountryCode:Ljava/lang/String;
    .end local v13           #varLanguageCode:Ljava/lang/String;
    .end local v14           #varLocale:Ljava/util/Locale;
    .end local v15           #varLocaleCode:Ljava/lang/String;
    :cond_3
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 589
    const/4 v8, 0x0

    .line 591
    .local v8, varFilteredArray_Size:I
    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/settings/LanguageSettings$Loc;

    move-object v7, v0

    .line 592
    .local v7, varFilteredArray_Loc:[Lcom/android/settings/LanguageSettings$Loc;
    const/4 v3, 0x0

    move v9, v8

    .end local v8           #varFilteredArray_Size:I
    .local v9, varFilteredArray_Size:I
    :goto_2
    move v0, v3

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 609
    aget-object v15, v17, v3

    .line 610
    .restart local v15       #varLocaleCode:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .line 622
    .local v16, varLocaleCode_Length:I
    const/16 v19, 0x5

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 623
    const/16 v19, 0x0

    const/16 v20, 0x2

    move-object v0, v15

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 624
    .restart local v13       #varLanguageCode:Ljava/lang/String;
    const/16 v19, 0x3

    const/16 v20, 0x5

    move-object v0, v15

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 628
    .restart local v4       #varCountryCode:Ljava/lang/String;
    new-instance v14, Ljava/util/Locale;

    invoke-direct {v14, v13, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    .restart local v14       #varLocale:Ljava/util/Locale;
    invoke-virtual {v14}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    .line 630
    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    .line 631
    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 644
    if-nez v9, :cond_4

    .line 655
    add-int/lit8 v8, v9, 0x1

    .end local v9           #varFilteredArray_Size:I
    .restart local v8       #varFilteredArray_Size:I
    new-instance v19, Lcom/android/settings/LanguageSettings$Loc;

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->internal_getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LanguageSettings$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v19, v7, v9

    .line 592
    .end local v4           #varCountryCode:Ljava/lang/String;
    .end local v13           #varLanguageCode:Ljava/lang/String;
    .end local v14           #varLocale:Ljava/util/Locale;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v9, v8

    .end local v8           #varFilteredArray_Size:I
    .restart local v9       #varFilteredArray_Size:I
    goto :goto_2

    .line 664
    .restart local v4       #varCountryCode:Ljava/lang/String;
    .restart local v13       #varLanguageCode:Ljava/lang/String;
    .restart local v14       #varLocale:Ljava/util/Locale;
    :cond_4
    const/16 v19, 0x1

    sub-int v19, v9, v19

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/LanguageSettings$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 666
    const/16 v19, 0x1

    sub-int v19, v9, v19

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/LanguageSettings$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 683
    const/16 v19, 0x1

    sub-int v19, v9, v19

    aget-object v19, v7, v19

    const/16 v20, 0x1

    sub-int v20, v9, v20

    aget-object v20, v7, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/LanguageSettings$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->internal_getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/LanguageSettings$Loc;->label:Ljava/lang/String;

    .line 696
    add-int/lit8 v8, v9, 0x1

    .end local v9           #varFilteredArray_Size:I
    .restart local v8       #varFilteredArray_Size:I
    new-instance v19, Lcom/android/settings/LanguageSettings$Loc;

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->internal_getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LanguageSettings$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v19, v7, v9

    goto :goto_3

    .line 710
    .end local v8           #varFilteredArray_Size:I
    .restart local v9       #varFilteredArray_Size:I
    :cond_5
    add-int/lit8 v8, v9, 0x1

    .end local v9           #varFilteredArray_Size:I
    .restart local v8       #varFilteredArray_Size:I
    new-instance v19, Lcom/android/settings/LanguageSettings$Loc;

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->internal_getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LanguageSettings$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v19, v7, v9

    goto/16 :goto_3

    .line 749
    .end local v4           #varCountryCode:Ljava/lang/String;
    .end local v8           #varFilteredArray_Size:I
    .end local v13           #varLanguageCode:Ljava/lang/String;
    .end local v14           #varLocale:Ljava/util/Locale;
    .end local v15           #varLocaleCode:Ljava/lang/String;
    .end local v16           #varLocaleCode_Length:I
    .restart local v9       #varFilteredArray_Size:I
    :cond_6
    move v0, v9

    new-array v0, v0, [Lcom/android/settings/LanguageSettings$Loc;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Loc:[Lcom/android/settings/LanguageSettings$Loc;

    .line 750
    move v0, v9

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Codes:[Ljava/lang/String;

    .line 751
    move v0, v9

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Labels:[Ljava/lang/String;

    .line 753
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v9, :cond_7

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Loc:[Lcom/android/settings/LanguageSettings$Loc;

    move-object/from16 v19, v0

    aget-object v20, v7, v3

    aput-object v20, v19, v3

    .line 753
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 756
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Loc:[Lcom/android/settings/LanguageSettings$Loc;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 758
    const/4 v10, 0x0

    .line 759
    .local v10, varInitialLocale:Ljava/util/Locale;
    const/4 v12, 0x0

    .line 760
    .local v12, varInitialLocaleString:Ljava/lang/String;
    const/4 v11, -0x1

    .line 762
    .local v11, varInitialLocaleIndex:I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 763
    .local v5, varCurrentActivityManagerDefault:Landroid/app/IActivityManager;
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 764
    .local v6, varCurrentConfig:Landroid/content/res/Configuration;
    iget-object v10, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 765
    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 783
    .end local v5           #varCurrentActivityManagerDefault:Landroid/app/IActivityManager;
    .end local v6           #varCurrentConfig:Landroid/content/res/Configuration;
    :goto_5
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v9, :cond_9

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Codes:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Loc:[Lcom/android/settings/LanguageSettings$Loc;

    move-object/from16 v20, v0

    aget-object v20, v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/LanguageSettings$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v3

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Labels:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Loc:[Lcom/android/settings/LanguageSettings$Loc;

    move-object/from16 v20, v0

    aget-object v20, v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/LanguageSettings$Loc;->label:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v19, v3

    .line 797
    if-eqz v12, :cond_8

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Codes:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 801
    move v11, v3

    .line 783
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 806
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLanguageChoices_ListPreference:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Labels:[Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLanguageChoices_ListPreference:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Codes:[Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 808
    const/16 v19, -0x1

    move v0, v11

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 811
    const-string v19, "LanguageSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "internal_initializeListPreference_LocaleChoices: Show current locale in \"Language settings\" menu & child radiobutton list: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Codes:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v11

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Labels:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v11

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\"."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLanguageChoices_ListPreference:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Labels:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLanguageChoices_ListPreference:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Codes:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 830
    :cond_a
    return-void

    .line 766
    :catch_0
    move-exception v19

    goto/16 :goto_5

    .end local v10           #varInitialLocale:Ljava/util/Locale;
    .end local v11           #varInitialLocaleIndex:I
    .end local v12           #varInitialLocaleString:Ljava/lang/String;
    .restart local v15       #varLocaleCode:Ljava/lang/String;
    .restart local v16       #varLocaleCode_Length:I
    :cond_b
    move v8, v9

    .end local v9           #varFilteredArray_Size:I
    .restart local v8       #varFilteredArray_Size:I
    goto/16 :goto_3
.end method

.method private static internal_toInitialCap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "inString"

    .prologue
    .line 833
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 836
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .parameter "property"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCreateIMM()V
    .locals 19

    .prologue
    .line 217
    const-string v15, "input_method"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 219
    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "default_input_method"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 225
    const-string v15, "select_inputmethod"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mPrefInputmethod:Landroid/preference/Preference;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mPrefInputmethod:Landroid/preference/Preference;

    move-object v15, v0

    if-eqz v15, :cond_0

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mPrefInputmethod:Landroid/preference/Preference;

    move-object v15, v0

    const v16, 0x10402ff

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setTitle(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mPrefInputmethod:Landroid/preference/Preference;

    move-object v15, v0

    new-instance v16, Lcom/android/settings/LanguageSettings$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings$1;-><init>(Lcom/android/settings/LanguageSettings;)V

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->updatePrefInputMethod()V

    .line 240
    :cond_0
    const-string v15, "keyboard_settings_category"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 243
    .local v7, keyboardSettingsCategory:Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v15, v0

    if-nez v15, :cond_4

    const/4 v15, 0x0

    move v3, v15

    .line 245
    .local v3, N:I
    :goto_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 247
    .local v11, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, prefKey:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 250
    .local v8, label:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v14

    .line 253
    .local v14, systemIME:Z
    const/4 v15, 0x1

    if-le v3, v15, :cond_1

    if-nez v14, :cond_1

    .line 254
    new-instance v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 255
    .local v4, chkbxPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mCheckboxes:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v4           #chkbxPref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 263
    new-instance v10, Landroid/preference/PreferenceScreen;

    const/4 v15, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 264
    .local v10, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v12

    .line 265
    .local v12, settingsActivity:Ljava/lang/String;
    const-string v15, "/"

    invoke-virtual {v12, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_2

    .line 266
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 268
    :cond_2
    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v10, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 270
    const/4 v15, 0x1

    if-ne v3, v15, :cond_5

    .line 271
    const v15, 0x7f0805e1

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    :goto_2
    invoke-virtual {v7, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 245
    .end local v10           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v12           #settingsActivity:Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 243
    .end local v3           #N:I
    .end local v5           #i:I
    .end local v8           #label:Ljava/lang/CharSequence;
    .end local v9           #prefKey:Ljava/lang/String;
    .end local v11           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v14           #systemIME:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move v3, v15

    goto/16 :goto_0

    .line 273
    .restart local v3       #N:I
    .restart local v5       #i:I
    .restart local v8       #label:Ljava/lang/CharSequence;
    .restart local v9       #prefKey:Ljava/lang/String;
    .restart local v10       #prefScreen:Landroid/preference/PreferenceScreen;
    .restart local v11       #property:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v12       #settingsActivity:Ljava/lang/String;
    .restart local v14       #systemIME:Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0805e0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 275
    .local v13, settingsLabel:Ljava/lang/CharSequence;
    invoke-virtual {v10, v13}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 280
    .end local v8           #label:Ljava/lang/CharSequence;
    .end local v9           #prefKey:Ljava/lang/String;
    .end local v10           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v11           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v12           #settingsActivity:Ljava/lang/String;
    .end local v13           #settingsLabel:Ljava/lang/CharSequence;
    .end local v14           #systemIME:Z
    :cond_6
    return-void
.end method

.method private updateInputMethodList()V
    .locals 15

    .prologue
    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v12, 0x100

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 319
    .local v1, builder:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v12, 0x100

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 325
    .local v2, disabledSysImes:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "disabled_system_input_methods"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, prevDisabledSysImes:Ljava/lang/String;
    if-nez v8, :cond_0

    const-string v8, ""

    .line 329
    :cond_0
    const/4 v3, -0x1

    .line 330
    .local v3, firstEnabled:I
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    .line 331
    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_b

    .line 332
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 333
    .local v9, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, id:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 335
    .local v7, pref:Landroid/preference/CheckBoxPreference;
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 336
    .local v4, hasIt:Z
    invoke-direct {p0, v9}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v10

    .line 338
    .local v10, systemIme:Z
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_9

    const/4 v12, 0x0

    move v11, v12

    .line 339
    .local v11, systemImeDisabled:Z
    :goto_1
    const/4 v12, 0x1

    if-eq v0, v12, :cond_2

    if-eqz v10, :cond_1

    if-eqz v11, :cond_2

    :cond_1
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 342
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_3

    const/16 v12, 0x3a

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    if-gez v3, :cond_4

    .line 345
    move v3, v5

    .line 353
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-nez v12, :cond_5

    if-nez v10, :cond_6

    :cond_5
    if-eqz v11, :cond_8

    if-eqz v10, :cond_8

    .line 356
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_7

    const-string v12, ":"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 338
    .end local v11           #systemImeDisabled:Z
    :cond_9
    const/4 v12, 0x1

    move v11, v12

    goto :goto_1

    .line 347
    .restart local v11       #systemImeDisabled:Z
    :cond_a
    if-eqz v4, :cond_4

    .line 348
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    iput-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    goto :goto_2

    .line 362
    .end local v4           #hasIt:Z
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #pref:Landroid/preference/CheckBoxPreference;
    .end local v9           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v10           #systemIme:Z
    .end local v11           #systemImeDisabled:Z
    :cond_b
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    if-eqz v12, :cond_c

    const-string v12, ""

    iget-object v13, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 363
    :cond_c
    if-ltz v3, :cond_e

    .line 364
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #N:I
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 370
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "enabled_input_methods"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "disabled_system_input_methods"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "default_input_method"

    iget-object v14, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    if-eqz v14, :cond_f

    iget-object v14, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    :goto_4
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 378
    invoke-direct {p0}, Lcom/android/settings/LanguageSettings;->updatePrefInputMethod()V

    .line 379
    return-void

    .line 366
    .restart local v0       #N:I
    :cond_e
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    goto :goto_3

    .line 374
    .end local v0           #N:I
    :cond_f
    const-string v14, ""

    goto :goto_4
.end method

.method private updatePrefInputMethod()V
    .locals 7

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 386
    iget-object v5, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 387
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 388
    iget-object v5, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 389
    .local v4, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 391
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/LanguageSettings;->mPrefInputmethod:Landroid/preference/Preference;

    if-eqz v5, :cond_1

    .line 393
    iget-object v5, p0, Lcom/android/settings/LanguageSettings;->mPrefInputmethod:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 397
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #label:Ljava/lang/CharSequence;
    .end local v4           #property:Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    return-void

    .line 387
    .restart local v2       #id:Ljava/lang/String;
    .restart local v3       #label:Ljava/lang/CharSequence;
    .restart local v4       #property:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    const v1, 0x7f040016

    invoke-virtual {p0, v1}, Lcom/android/settings/LanguageSettings;->addPreferencesFromResource(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 194
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "hardkeyboard_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LanguageSettings;->mCheckboxes:Ljava/util/List;

    .line 201
    invoke-direct {p0}, Lcom/android/settings/LanguageSettings;->onCreateIMM()V

    .line 203
    invoke-direct {p0}, Lcom/android/settings/LanguageSettings;->internal_initializeListPreference_LocaleChoices()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/LanguageSettings;->initializeListPreferences_ExternalKeyboard()V

    .line 208
    iget-object v1, p0, Lcom/android/settings/LanguageSettings;->mReceiverInputMethod:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/LanguageSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    return-void

    .line 198
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 410
    iget-object v0, p0, Lcom/android/settings/LanguageSettings;->mReceiverInputMethod:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/LanguageSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 411
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 314
    invoke-direct {p0}, Lcom/android/settings/LanguageSettings;->updateInputMethodList()V

    .line 315
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 19
    .parameter "inPreference"
    .parameter "inObjValue"

    .prologue
    .line 876
    const/4 v8, 0x0

    .line 884
    .local v8, returnValue:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLanguageChoices_ListPreference:Landroid/preference/ListPreference;

    move-object v15, v0

    move-object/from16 v0, p1

    move-object v1, v15

    if-ne v0, v1, :cond_3

    .line 887
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    .line 888
    .local v12, varCurrentActivityManagerDefault:Landroid/app/IActivityManager;
    invoke-interface {v12}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 889
    .local v13, varCurrentConfig:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 901
    .local v14, varSelectedLocaleCode:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, position:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Loc:[Lcom/android/settings/LanguageSettings$Loc;

    move-object v15, v0

    array-length v15, v15

    if-ge v7, v15, :cond_0

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Codes:[Ljava/lang/String;

    move-object v15, v0

    aget-object v15, v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLocaleChoices_FilteredLocale_Loc:[Lcom/android/settings/LanguageSettings$Loc;

    move-object v15, v0

    aget-object v11, v15, v7

    .line 913
    .local v11, varChosenLocale_Loc:Lcom/android/settings/LanguageSettings$Loc;
    iget-object v15, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v11

    iget-object v0, v0, Lcom/android/settings/LanguageSettings$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 917
    const-string v15, "LanguageSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onPreferenceChange_LocaleChoices: New locale is different from \""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v13

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\"; save new locale=\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v11

    iget-object v0, v0, Lcom/android/settings/LanguageSettings$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v11

    iget-object v0, v0, Lcom/android/settings/LanguageSettings$Loc;->label:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\"."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v15, v11, Lcom/android/settings/LanguageSettings$Loc;->locale:Ljava/util/Locale;

    iput-object v15, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 930
    const/4 v15, 0x1

    iput-boolean v15, v13, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mUpdateThreadHandler:Landroid/os/Handler;

    move-object v15, v0

    new-instance v16, Lcom/android/settings/LanguageSettings$5;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/LanguageSettings$5;-><init>(Lcom/android/settings/LanguageSettings;Landroid/app/IActivityManager;Landroid/content/res/Configuration;)V

    const-wide/16 v17, 0x5a

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 940
    const-string v15, "com.android.providers.settings"

    invoke-static {v15}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 952
    :goto_1
    const/4 v8, 0x1

    .line 988
    .end local v7           #position:I
    .end local v11           #varChosenLocale_Loc:Lcom/android/settings/LanguageSettings$Loc;
    .end local v12           #varCurrentActivityManagerDefault:Landroid/app/IActivityManager;
    .end local v13           #varCurrentConfig:Landroid/content/res/Configuration;
    .end local v14           #varSelectedLocaleCode:Ljava/lang/String;
    :cond_0
    :goto_2
    return v8

    .line 944
    .restart local v7       #position:I
    .restart local v11       #varChosenLocale_Loc:Lcom/android/settings/LanguageSettings$Loc;
    .restart local v12       #varCurrentActivityManagerDefault:Landroid/app/IActivityManager;
    .restart local v13       #varCurrentConfig:Landroid/content/res/Configuration;
    .restart local v14       #varSelectedLocaleCode:Ljava/lang/String;
    :cond_1
    const-string v15, "LanguageSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onPreferenceChange_LocaleChoices: New Locale is same as existing; Ignore selection=\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\" and close dialog."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 956
    .end local v7           #position:I
    .end local v11           #varChosenLocale_Loc:Lcom/android/settings/LanguageSettings$Loc;
    .end local v12           #varCurrentActivityManagerDefault:Landroid/app/IActivityManager;
    .end local v13           #varCurrentConfig:Landroid/content/res/Configuration;
    .end local v14           #varSelectedLocaleCode:Ljava/lang/String;
    :catch_0
    move-exception v15

    goto :goto_2

    .line 901
    .restart local v7       #position:I
    .restart local v12       #varCurrentActivityManagerDefault:Landroid/app/IActivityManager;
    .restart local v13       #varCurrentConfig:Landroid/content/res/Configuration;
    .restart local v14       #varSelectedLocaleCode:Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 960
    .end local v7           #position:I
    .end local v12           #varCurrentActivityManagerDefault:Landroid/app/IActivityManager;
    .end local v13           #varCurrentConfig:Landroid/content/res/Configuration;
    .end local v14           #varSelectedLocaleCode:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    move-object v15, v0

    move-object/from16 v0, p1

    move-object v1, v15

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    move-object v15, v0

    if-eqz v15, :cond_0

    .line 962
    const-string v9, ""

    .line 963
    .local v9, selectedLayoutDescription:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 965
    .local v10, selectedLayoutValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    move-object v15, v0

    invoke-virtual {v15, v10}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 966
    .local v5, index:I
    const/4 v15, -0x1

    if-eq v15, v5, :cond_4

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_Entries:[Ljava/lang/String;

    move-object v15, v0

    aget-object v9, v15, v5

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mExternalKbdLayout_ListPreference:Landroid/preference/ListPreference;

    move-object v15, v0

    invoke-virtual {v15, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 972
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string v15, "com.motorola.ext_kb_CHANGED"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 973
    .local v4, broadcast:Landroid/content/Intent;
    const-string v15, "value"

    invoke-virtual {v4, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 977
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "keyboard_layout_external"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 981
    new-instance v6, Lcom/android/settings/KbdLayoutSetter;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/KbdLayoutSetter;-><init>(Landroid/content/Context;)V

    .line 982
    .local v6, kls:Lcom/android/settings/KbdLayoutSetter;
    invoke-virtual {v6, v10, v9}, Lcom/android/settings/KbdLayoutSetter;->setLayout(Ljava/lang/String;Ljava/lang/String;)Z

    .line 984
    const v15, 0x7f0801ad

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->displayExternalKeyboardAlertDialog(Ljava/lang/String;)V

    .line 985
    const/4 v8, 0x1

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 21
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 416
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 417
    const/4 v15, 0x0

    .line 495
    :goto_0
    return v15

    .line 420
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    move v15, v0

    if-eqz v15, :cond_7

    .line 421
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v6, v0

    .line 422
    .local v6, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/LanguageSettings;->getInputMethodIdFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 423
    .local v9, id:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 424
    const/4 v13, 0x0

    .line 425
    .local v13, selImi:Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    .line 426
    .local v4, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 428
    .local v10, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 429
    move-object v13, v10

    .line 430
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 432
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 433
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v15

    goto :goto_0

    .line 426
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 437
    .end local v10           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 438
    if-nez v13, :cond_3

    .line 439
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v15

    goto :goto_0

    .line 441
    :cond_3
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x1040014

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x1080027

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f0805c5

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LanguageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x104000a

    new-instance v17, Lcom/android/settings/LanguageSettings$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/LanguageSettings$4;-><init>(Lcom/android/settings/LanguageSettings;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/high16 v16, 0x104

    new-instance v17, Lcom/android/settings/LanguageSettings$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings$3;-><init>(Lcom/android/settings/LanguageSettings;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 464
    .local v7, d:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 495
    .end local v4           #N:I
    .end local v6           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v7           #d:Landroid/app/AlertDialog;
    .end local v8           #i:I
    .end local v9           #id:Ljava/lang/String;
    .end local v13           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    :goto_2
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v15

    goto/16 :goto_0

    .line 466
    .restart local v6       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v9       #id:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 467
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 469
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->updateInputMethodList()V

    goto :goto_2

    .line 471
    .end local v6           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v9           #id:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/preference/PreferenceScreen;

    move v15, v0

    if-eqz v15, :cond_4

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v15

    if-nez v15, :cond_4

    .line 473
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/PreferenceScreen;

    move-object v12, v0

    .line 474
    .local v12, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 476
    .local v5, activityName:Ljava/lang/String;
    if-nez v5, :cond_8

    .line 478
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 481
    :cond_8
    const/4 v15, 0x0

    const-string v16, "."

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 483
    .local v11, packageName:Ljava/lang/String;
    const-string v15, "/"

    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 484
    .local v14, slash:I
    if-lez v14, :cond_9

    .line 485
    const/4 v15, 0x0

    invoke-virtual {v5, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 486
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 488
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_4

    .line 489
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v8, i:Landroid/content/Intent;
    invoke-virtual {v8, v11, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 284
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 286
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 287
    .local v1, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_input_methods"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, enabledStr:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 290
    iget-object v6, p0, Lcom/android/settings/LanguageSettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 291
    .local v6, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v6, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 292
    :goto_0
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 293
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    .end local v6           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 299
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 300
    iget-object v7, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, id:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 303
    .local v5, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_1

    .line 304
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 299
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 307
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #pref:Landroid/preference/CheckBoxPreference;
    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 308
    return-void
.end method

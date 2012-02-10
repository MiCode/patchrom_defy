.class public Lcom/android/settings/SecurityLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "SecurityLockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CONFIRM_PATTERN_REQUEST_CODE:I = 0x37

.field private static final CONFIRM_PIN_REQUEST_CODE:I = 0x3c

.field private static final KEY_CHANGE_CODE:Ljava/lang/String; = "changecode"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_LOCK_TIMER:Ljava/lang/String; = "lock_timer"

.field private static final KEY_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "tactilefeedback"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field public static final LOCK_WHEN_DISPLAY_OFF:I = -0x1

.field private static final SET_PATTERN_REQUEST_CODE:I = 0x50

.field private static final SET_PIN_REQUEST_CODE:I = 0x46

.field private static final TAG:Ljava/lang/String; = "SecuritySettings"


# instance fields
.field private changePattern:Landroid/content/Intent;

.field private changePin:Landroid/content/Intent;

.field private confirmPattern:Landroid/content/Intent;

.field private confirmPin:Landroid/content/Intent;

.field private mChangeLockCode:Landroid/preference/Preference;

.field private mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

.field private mLockTimerPreference:Landroid/preference/ListPreference;

.field private mLockType:Landroid/preference/ListPreference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-string v2, "com.android.settings"

    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v1, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecurityLockSettings;->confirmPattern:Landroid/content/Intent;

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v1, "com.android.settings.ConfirmPinLock"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecurityLockSettings;->confirmPin:Landroid/content/Intent;

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v1, "com.android.settings.ChooseLockPatternTutorial"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecurityLockSettings;->changePattern:Landroid/content/Intent;

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v1, "com.android.settings.ChoosePinLock"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecurityLockSettings;->changePin:Landroid/content/Intent;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 20

    .prologue
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecurityLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 107
    .local v12, root:Landroid/preference/PreferenceScreen;
    new-instance v5, Landroid/preference/PreferenceCategory;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 108
    .local v5, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const v17, 0x7f080145

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 109
    invoke-virtual {v12, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 111
    new-instance v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f050047

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f050048

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/internal/widget/LockPinUtils;->isPatternEnabled()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 121
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08003c

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08003c

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08003d

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const-string v18, "lockenabled"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/internal/widget/LockPinUtils;->isActiveSyncPolicyEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecurityLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "activesync_policy_lock_pin_min_chars"

    const/16 v19, -0x1

    invoke-static/range {v17 .. v19}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-lez v17, :cond_4

    const/16 v17, 0x1

    move/from16 v6, v17

    .line 129
    .local v6, isActiveSyncMinPinCharsHonored:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    if-nez v6, :cond_5

    const/16 v18, 0x1

    :goto_2
    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecurityLockSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const v18, 0x7f08005c

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const-string v18, "changecode"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 139
    new-instance v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f050049

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f05004a

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08003a

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08003a

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const-string v18, "lock_timer"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecurityLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_timer"

    sget v19, Lcom/motorola/internal/widget/LockPinUtils;->FALLBACK_LOCK_TIMER_VALUE:I

    invoke-static/range {v17 .. v19}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 150
    .local v9, lockTimer:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecurityLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_timer_max"

    const v19, 0x124f80

    invoke-static/range {v17 .. v19}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 153
    .local v10, lockTimerLimit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 154
    .local v2, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v14

    .line 155
    .local v14, values:[Ljava/lang/CharSequence;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v7, limitedEntries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v8, limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-lez v10, :cond_8

    .line 159
    const/16 v16, 0x0

    .line 161
    .local v16, wasPartOfDefaultSet:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    move-object v0, v14

    array-length v0, v0

    move/from16 v17, v0

    move v0, v4

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 162
    aget-object v17, v14, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 163
    .local v13, v:I
    if-gt v13, v10, :cond_1

    .line 164
    if-ne v13, v10, :cond_0

    .line 165
    const/16 v16, 0x1

    .line 167
    :cond_0
    aget-object v17, v14, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    aget-object v17, v2, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 116
    .end local v2           #entries:[Ljava/lang/CharSequence;
    .end local v4           #i:I
    .end local v6           #isActiveSyncMinPinCharsHonored:Z
    .end local v7           #limitedEntries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #lockTimer:I
    .end local v10           #lockTimerLimit:I
    .end local v13           #v:I
    .end local v14           #values:[Ljava/lang/CharSequence;
    .end local v16           #wasPartOfDefaultSet:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/internal/widget/LockPinUtils;->isPinEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    .line 119
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    .line 127
    :cond_4
    const/16 v17, 0x0

    move/from16 v6, v17

    goto/16 :goto_1

    .line 129
    .restart local v6       #isActiveSyncMinPinCharsHonored:Z
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 171
    .restart local v2       #entries:[Ljava/lang/CharSequence;
    .restart local v4       #i:I
    .restart local v7       #limitedEntries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #lockTimer:I
    .restart local v10       #lockTimerLimit:I
    .restart local v14       #values:[Ljava/lang/CharSequence;
    .restart local v16       #wasPartOfDefaultSet:Z
    :cond_6
    if-nez v16, :cond_7

    .line 172
    new-instance v17, Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0xea60

    div-int v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " minutes"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v17, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v3, v0

    .line 183
    .local v3, es:[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v15, v0

    .line 184
    .local v15, vs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-interface {v7, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entries:[Ljava/lang/CharSequence;
    check-cast v2, [Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-interface {v8, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 187
    .end local v3           #es:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v15           #vs:[Ljava/lang/String;
    .end local v16           #wasPartOfDefaultSet:Z
    :cond_8
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, lt:Ljava/lang/String;
    if-lt v9, v10, :cond_9

    .line 189
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 191
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 196
    new-instance v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecurityLockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const-string v18, "visiblepattern"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08053f

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 202
    new-instance v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecurityLockSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const-string v18, "tactilefeedback"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f080540

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecurityLockSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    return-object v12
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 275
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v4, 0x50

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v5, "SecuritySettings"

    .line 341
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 343
    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    .line 345
    const/16 v0, 0x37

    if-ne p1, v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v1}, Lcom/motorola/internal/widget/LockPinUtils;->setPatternEnabled(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v3}, Lcom/motorola/internal/widget/LockPinUtils;->saveLockPattern(Ljava/util/List;)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const/16 v0, 0x38

    if-ne p1, v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v2}, Lcom/motorola/internal/widget/LockPinUtils;->setPatternEnabled(Z)V

    goto :goto_0

    .line 352
    :cond_2
    const/16 v0, 0x39

    if-ne p1, v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v1}, Lcom/motorola/internal/widget/LockPinUtils;->setPatternEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v3}, Lcom/motorola/internal/widget/LockPinUtils;->saveLockPattern(Ljava/util/List;)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->changePin:Landroid/content/Intent;

    const/16 v1, 0x46

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SecurityLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 358
    :cond_3
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_4

    .line 359
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v1}, Lcom/motorola/internal/widget/LockPinUtils;->setPinEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v3}, Lcom/motorola/internal/widget/LockPinUtils;->saveLockPin(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_4
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_5

    .line 363
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v1}, Lcom/motorola/internal/widget/LockPinUtils;->setPinEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v3}, Lcom/motorola/internal/widget/LockPinUtils;->saveLockPin(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->changePattern:Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/SecurityLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 366
    :cond_5
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_6

    .line 367
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v2}, Lcom/motorola/internal/widget/LockPinUtils;->setPinEnabled(Z)V

    goto :goto_0

    .line 371
    :cond_6
    if-ne p1, v4, :cond_7

    .line 372
    const-string v0, "SecuritySettings"

    const-string v0, "onActivityResult:SET_PATTERN_REQUEST_CODE"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v2}, Lcom/motorola/internal/widget/LockPinUtils;->setPatternEnabled(Z)V

    goto :goto_0

    .line 376
    :cond_7
    const/16 v0, 0x46

    if-ne p1, v0, :cond_0

    .line 377
    const-string v0, "SecuritySettings"

    const-string v0, "onActivityResult:SET_PIN_REQUEST_CODE"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v2}, Lcom/motorola/internal/widget/LockPinUtils;->setPinEnabled(Z)V

    goto/16 :goto_0

    .line 382
    :cond_8
    if-ne p1, v4, :cond_0

    .line 383
    const-string v0, "SecuritySettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult:resultcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0}, Lcom/motorola/internal/widget/LockPinUtils;->isPatternEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v0, v2}, Lcom/motorola/internal/widget/LockPinUtils;->setPatternEnabled(Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/android/settings/SecurityLockSettings;->addPreferencesFromResource(I)V

    .line 97
    new-instance v0, Lcom/motorola/internal/widget/LockPinUtils;

    invoke-direct {v0, p0}, Lcom/motorola/internal/widget/LockPinUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    .line 99
    invoke-direct {p0}, Lcom/android/settings/SecurityLockSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 100
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 287
    const-string v9, "lockenabled"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 288
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 290
    .local v8, value:I
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v9}, Lcom/motorola/internal/widget/LockPinUtils;->isPatternEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 291
    iget-object v9, p0, Lcom/android/settings/SecurityLockSettings;->confirmPattern:Landroid/content/Intent;

    add-int/lit8 v10, v8, 0x37

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SecurityLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 299
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecurityLockSettings;->onResume()V

    .line 335
    .end local v8           #value:I
    :cond_1
    :goto_1
    const/4 v9, 0x1

    :goto_2
    return v9

    .line 292
    .restart local v8       #value:I
    :cond_2
    iget-object v9, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v9}, Lcom/motorola/internal/widget/LockPinUtils;->isPinEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 293
    iget-object v9, p0, Lcom/android/settings/SecurityLockSettings;->confirmPin:Landroid/content/Intent;

    add-int/lit8 v10, v8, 0x3c

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SecurityLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 301
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v9, "SecuritySettings"

    const-string v10, "could not persist lock type setting"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 294
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 295
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/SecurityLockSettings;->changePattern:Landroid/content/Intent;

    const/16 v10, 0x50

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SecurityLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 296
    :cond_4
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 297
    iget-object v9, p0, Lcom/android/settings/SecurityLockSettings;->changePin:Landroid/content/Intent;

    const/16 v10, 0x46

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SecurityLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 303
    .end local v8           #value:I
    .restart local p2
    :cond_5
    const-string v9, "lock_timer"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/SecurityLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 305
    .local v1, cr:Landroid/content/ContentResolver;
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 307
    .restart local v8       #value:I
    const-string v9, "lock_timer_max"

    const v10, 0x124f80

    invoke-static {v1, v9, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 309
    .local v6, itEnforcedMaxMilisec:I
    move v5, v6

    .line 310
    .local v5, itEnforcedMax:I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_6

    .line 311
    const v9, 0xea60

    div-int/2addr v5, v9

    .line 314
    :cond_6
    if-le v8, v6, :cond_7

    .line 316
    const v9, 0x7f08003b

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SecurityLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 319
    .local v7, message:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 320
    const/4 v9, 0x0

    goto :goto_2

    .line 323
    .end local v7           #message:Ljava/lang/String;
    :cond_7
    :try_start_2
    const-string v9, "lock_timer"

    invoke-static {v1, v9, v8}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 329
    :goto_3
    iget-object v9, p0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v9, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 330
    .local v4, idx:I
    iget-object v9, p0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 331
    .local v3, entries:[Ljava/lang/CharSequence;
    if-ltz v4, :cond_1

    array-length v9, v3

    if-lez v9, :cond_1

    .line 332
    iget-object v9, p0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 324
    .end local v3           #entries:[Ljava/lang/CharSequence;
    .end local v4           #idx:I
    .restart local p2
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 325
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const-string v9, "SecuritySettings"

    const-string v10, "could not persist lock timer setting"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 256
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, key:Ljava/lang/String;
    const-string v1, "visiblepattern"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-direct {p0, p2}, Lcom/android/settings/SecurityLockSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/internal/widget/LockPinUtils;->setVisiblePatternEnabled(Z)V

    .line 271
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 261
    :cond_1
    const-string v1, "tactilefeedback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-direct {p0, p2}, Lcom/android/settings/SecurityLockSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/internal/widget/LockPinUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_0

    .line 263
    :cond_2
    const-string v1, "changecode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v1}, Lcom/motorola/internal/widget/LockPinUtils;->isPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    iget-object v1, p0, Lcom/android/settings/SecurityLockSettings;->changePattern:Landroid/content/Intent;

    const/16 v2, 0x50

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SecurityLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 266
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v1}, Lcom/motorola/internal/widget/LockPinUtils;->isPinEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/settings/SecurityLockSettings;->changePin:Landroid/content/Intent;

    const/16 v2, 0x46

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SecurityLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const v7, 0x7f080057

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, " "

    .line 212
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 215
    const v2, 0x7f080059

    invoke-virtual {p0, v2}, Lcom/android/settings/SecurityLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, typeOfLock:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 217
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    const v3, 0x7f080058

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 219
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v2}, Lcom/motorola/internal/widget/LockPinUtils;->isPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 221
    const v2, 0x7f08005a

    invoke-virtual {p0, v2}, Lcom/android/settings/SecurityLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/settings/SecurityLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    :goto_0
    const v2, 0x7f08005c

    invoke-virtual {p0, v2}, Lcom/android/settings/SecurityLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, changeLockTitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v2}, Lcom/motorola/internal/widget/LockPinUtils;->isPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    const v2, 0x7f08005d

    invoke-virtual {p0, v2}, Lcom/android/settings/SecurityLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mChangeLockCode:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v3}, Lcom/motorola/internal/widget/LockPinUtils;->isPatternEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v3}, Lcom/motorola/internal/widget/LockPinUtils;->isPinEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    move v3, v6

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 241
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/SecurityLockSettings;->mLockTimerPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v3}, Lcom/motorola/internal/widget/LockPinUtils;->isPatternEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 245
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v3}, Lcom/motorola/internal/widget/LockPinUtils;->isVisiblePatternEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 248
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v3}, Lcom/motorola/internal/widget/LockPinUtils;->isPatternEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 249
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v3}, Lcom/motorola/internal/widget/LockPinUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    return-void

    .line 223
    .end local v0           #changeLockTitle:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v2}, Lcom/motorola/internal/widget/LockPinUtils;->isPinEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 225
    const v2, 0x7f08005b

    invoke-virtual {p0, v2}, Lcom/android/settings/SecurityLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mLockType:Landroid/preference/ListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/settings/SecurityLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 233
    .restart local v0       #changeLockTitle:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SecurityLockSettings;->mLockPinUtils:Lcom/motorola/internal/widget/LockPinUtils;

    invoke-virtual {v2}, Lcom/motorola/internal/widget/LockPinUtils;->isPinEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    const v2, 0x7f08005e

    invoke-virtual {p0, v2}, Lcom/android/settings/SecurityLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    move v3, v5

    .line 237
    goto/16 :goto_2
.end method

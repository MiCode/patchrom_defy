.class public Lcom/android/settings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ApnPreference"

.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;

.field static pref_index:I


# instance fields
.field private mEditable:Z

.field private mLockStatus:Z

.field private mNeedLockDefaultApn:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/ApnPreference;->pref_index:I

    .line 74
    sput-object v1, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 75
    sput-object v1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mLockStatus:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mNeedLockDefaultApn:Z

    .line 71
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mLockStatus:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mNeedLockDefaultApn:Z

    .line 63
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mLockStatus:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mNeedLockDefaultApn:Z

    .line 54
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 55
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 174
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->setLayoutResource(I)V

    .line 175
    return-void
.end method


# virtual methods
.method public getDefaultApnLock()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mNeedLockDefaultApn:Z

    return v0
.end method

.method public getLockIcon()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mLockStatus:Z

    return v0
.end method

.method public getSelectable()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 84
    invoke-super/range {p0 .. p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 86
    .local v9, view:Landroid/view/View;
    const v11, 0x1010003

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 87
    .local v10, widget:Landroid/view/View;
    if-eqz v10, :cond_1

    instance-of v11, v10, Landroid/widget/RadioButton;

    if-eqz v11, :cond_1

    .line 88
    move-object v0, v10

    check-cast v0, Landroid/widget/RadioButton;

    move-object v7, v0

    .line 89
    .local v7, rb:Landroid/widget/RadioButton;
    iget-boolean v11, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v11, :cond_5

    .line 90
    invoke-virtual {v7, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 93
    .local v4, isChecked:Z
    if-eqz v4, :cond_0

    .line 94
    sput-object v7, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 98
    :cond_0
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 99
    invoke-virtual {v7, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 100
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 108
    .end local v4           #isChecked:Z
    .end local v7           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    iget-boolean v11, p0, Lcom/android/settings/ApnPreference;->mNeedLockDefaultApn:Z

    if-eqz v11, :cond_2

    .line 110
    const v11, 0x1010001

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, image:Landroid/view/View;
    instance-of v11, v1, Landroid/widget/ImageView;

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    if-nez v11, :cond_2

    .line 112
    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    .line 113
    .local v3, imgV:Landroid/widget/ImageView;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    .end local v1           #image:Landroid/view/View;
    .end local v3           #imgV:Landroid/widget/ImageView;
    :cond_2
    const v11, 0x1010002

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 119
    .local v8, textLayout:Landroid/view/View;
    if-eqz v8, :cond_3

    instance-of v11, v8, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_3

    .line 120
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_3
    sget-object v11, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v11

    sget v12, Lcom/android/settings/ApnPreference;->pref_index:I

    if-gt v11, v12, :cond_6

    .line 148
    :cond_4
    :goto_1
    return-object v9

    .line 102
    .end local v8           #textLayout:Landroid/view/View;
    .restart local v7       #rb:Landroid/widget/RadioButton;
    :cond_5
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 127
    .end local v7           #rb:Landroid/widget/RadioButton;
    .restart local v8       #textLayout:Landroid/view/View;
    :cond_6
    sget-object v11, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    sget v12, Lcom/android/settings/ApnPreference;->pref_index:I

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/ApnPreference;

    .line 128
    .local v6, preference:Lcom/android/settings/ApnPreference;
    invoke-virtual {v6}, Lcom/android/settings/ApnPreference;->getDefaultApnLock()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 130
    const/high16 v11, 0x101

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, imageView:Landroid/view/View;
    if-eqz v2, :cond_4

    instance-of v11, v2, Landroid/widget/ImageView;

    if-eqz v11, :cond_4

    .line 132
    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object v5, v0

    .line 134
    .local v5, lock:Landroid/widget/ImageView;
    invoke-virtual {v6}, Lcom/android/settings/ApnPreference;->getLockIcon()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 135
    const v11, 0x7f020037

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    :goto_2
    sget v11, Lcom/android/settings/ApnPreference;->pref_index:I

    sget-object v12, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v12}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ge v11, v12, :cond_8

    .line 140
    sget v11, Lcom/android/settings/ApnPreference;->pref_index:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/android/settings/ApnPreference;->pref_index:I

    goto :goto_1

    .line 137
    :cond_7
    const v11, 0x7f020070

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 143
    :cond_8
    const/4 v11, 0x0

    sput v11, Lcom/android/settings/ApnPreference;->pref_index:I

    goto :goto_1
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 186
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 191
    :cond_0
    if-eqz p2, :cond_2

    .line 192
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 193
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 195
    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_2
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 200
    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    const v3, 0x1010002

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 207
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 209
    .local v1, pos:I
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 210
    .local v2, url:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 213
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #pos:I
    .end local v2           #url:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setDefaultApnLock(Z)V
    .locals 0
    .parameter "enableApnLock"

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mNeedLockDefaultApn:Z

    .line 165
    return-void
.end method

.method public setEditable(Z)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 225
    return-void
.end method

.method public setLockIcon(Z)V
    .locals 0
    .parameter "enableLock"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mLockStatus:Z

    .line 155
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 217
    return-void
.end method

.class public Lcom/android/systemui/statusbar/BatteryStatus;
.super Lcom/android/systemui/statusbar/StatusBarIconView;
.source "BatteryStatus.java"


# static fields
.field private static mBatteryStyle:I

.field static sIconUnit:I


# instance fields
.field private mAnimation:Landroid/graphics/drawable/LevelListDrawable;

.field private mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

.field private mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x26

    sput v0, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "slot"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BatteryStatus;->updateBatterySettings()V

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/BatteryStatus$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BatteryStatus$1;-><init>(Lcom/android/systemui/statusbar/BatteryStatus;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/BatteryStatus;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BatteryStatus;->updateBatterySettings()V

    return-void
.end method

.method private extractDrawable(I)Ljava/util/ArrayList;
    .locals 17
    .parameter "resId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v15, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryStatus;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 162
    .local v14, res:Landroid/content/res/Resources;
    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 163
    .local v2, bm:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 179
    :goto_0
    return-object v15

    .line 167
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget v5, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    div-int v16, v4, v5

    .line 168
    .local v16, rowCount:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget v5, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    div-int v10, v4, v5

    .line 169
    .local v10, columnCount:I
    sget v4, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    sget v5, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    mul-int/2addr v4, v5

    new-array v3, v4, [I

    .line 170
    .local v3, pixels:[I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 171
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2
    if-ge v13, v10, :cond_1

    .line 172
    const/4 v4, 0x0

    sget v5, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    sget v6, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    mul-int/2addr v6, v13

    sget v7, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    mul-int/2addr v7, v11

    sget v8, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    sget v9, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 173
    const/4 v4, 0x0

    sget v5, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    sget v6, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    sget v7, Lcom/android/systemui/statusbar/BatteryStatus;->sIconUnit:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 174
    .local v12, icon:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v14, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 170
    .end local v12           #icon:Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 177
    .end local v13           #j:I
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private generateAnimation(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 11
    .parameter "resId"

    .prologue
    .line 133
    new-instance v7, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 135
    .local v7, result:Landroid/graphics/drawable/LevelListDrawable;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BatteryStatus;->extractDrawable(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 136
    .local v3, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 137
    .local v1, count:I
    if-lez v1, :cond_1

    .line 139
    const v8, 0x3ecccccd

    .line 140
    .local v8, sum:F
    const/high16 v9, 0x42c8

    int-to-float v10, v1

    div-float v2, v9, v10

    .line 141
    .local v2, delta:F
    const/16 v9, 0x1388

    div-int v4, v9, v1

    .line 142
    .local v4, duration:I
    const/4 v5, 0x0

    .end local p0
    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 143
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 144
    .local v0, animation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    add-int/lit16 v9, v4, 0x1f4

    invoke-virtual {v0, p0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 145
    add-int/lit8 v6, v5, 0x1

    .local v6, j:I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 146
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 148
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 149
    float-to-int v9, v8

    add-float v10, v8, v2

    float-to-int v10, v10

    invoke-virtual {v7, v9, v10, v0}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 150
    add-float/2addr v8, v2

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 154
    .end local v0           #animation:Landroid/graphics/drawable/AnimationDrawable;
    .end local v2           #delta:F
    .end local v4           #duration:I
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v8           #sum:F
    :cond_1
    return-object v7
.end method

.method private generateIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 8
    .parameter "resId"

    .prologue
    .line 115
    new-instance v4, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 117
    .local v4, result:Landroid/graphics/drawable/LevelListDrawable;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BatteryStatus;->extractDrawable(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 118
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    .local v0, count:I
    if-lez v0, :cond_0

    .line 121
    const v5, 0x3ecccccd

    .line 122
    .local v5, sum:F
    const/high16 v6, 0x42c8

    int-to-float v7, v0

    div-float v1, v6, v7

    .line 123
    .local v1, delta:F
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 124
    float-to-int v6, v5

    add-float v7, v5, v1

    float-to-int v7, v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6, v7, p0}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 125
    add-float/2addr v5, v1

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v1           #delta:F
    .end local v3           #i:I
    .end local v5           #sum:F
    :cond_0
    return-object v4
.end method

.method private final updateBatterySettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_indicator_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/BatteryStatus;->mBatteryStyle:I

    .line 188
    iput-object v3, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 189
    iput-object v3, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mAnimation:Landroid/graphics/drawable/LevelListDrawable;

    .line 190
    new-instance v0, Lcom/android/systemui/statusbar/BatteryStatus$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BatteryStatus$2;-><init>(Lcom/android/systemui/statusbar/BatteryStatus;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BatteryStatus;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method


# virtual methods
.method protected getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "icon"

    .prologue
    const/4 v3, 0x0

    .line 86
    sget v1, Lcom/android/systemui/statusbar/BatteryStatus;->mBatteryStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move-object v1, v3

    .line 111
    :goto_0
    return-object v1

    .line 90
    :cond_0
    iget v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mEnableAlternative:Z

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/AlternativeIcons;->get(Ljava/lang/Integer;Z)I

    move-result v0

    .line 91
    .local v0, iconId:I
    sparse-switch v0, :sswitch_data_0

    move-object v1, v3

    .line 111
    goto :goto_0

    .line 93
    :sswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 96
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mAnimation:Landroid/graphics/drawable/LevelListDrawable;

    if-nez v1, :cond_1

    .line 97
    const v1, 0x7f050001

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/BatteryStatus;->generateAnimation(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mAnimation:Landroid/graphics/drawable/LevelListDrawable;

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mAnimation:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_0

    .line 102
    :sswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    if-nez v1, :cond_2

    .line 103
    sget v1, Lcom/android/systemui/statusbar/BatteryStatus;->mBatteryStyle:I

    if-nez v1, :cond_3

    const/high16 v1, 0x7f05

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/BatteryStatus;->generateIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_0

    .line 103
    :cond_3
    const v1, 0x7f050002

    goto :goto_1

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x1080296 -> :sswitch_2
        0x10802ac -> :sswitch_1
        0x10802b3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->onAttachedToWindow()V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_indicator_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->onDetachedFromWindow()V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 70
    return-void
.end method

.method protected setIcon(Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 77
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BatteryStatus;->setImageLevel(I)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BatteryStatus;->getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BatteryStatus;->mHideForAlternative:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryStatus;->updateVisibility()V

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BatteryStatus;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BatteryStatus;->setImageLevel(I)V

    .line 83
    return-void

    .line 79
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateNumber(Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 74
    return-void
.end method

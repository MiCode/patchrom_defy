.class public Lcom/android/systemui/statusbar/StatusBarPolicy;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;
    }
.end annotation


# static fields
.field private static final sDataNetType_1x:[[I

.field private static final sDataNetType_3g:[[I

.field private static final sDataNetType_e:[[I

.field private static final sDataNetType_g:[[I

.field private static final sDataNetType_h:[[I

.field private static final sRoamingIndicatorImages_cdma:[I

.field private static final sSignalImages:[[I

.field private static final sSignalImages_r:[[I

.field private static final sWifiSignalImages:[[I

.field private static final sWimaxSignalImages:[[I


# instance fields
.field private mAlwaysUseCdmaRssi:Z

.field private mBatteryFirst:Z

.field private mBatteryLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryPlugged:Z

.field private mBatteryShowLowOnEndCall:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryView:Landroid/view/View;

.field private mBatteryViewSequence:I

.field private mBluetoothA2dpConnected:Z

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mBluetoothPbapState:I

.field private final mContext:Landroid/content/Context;

.field mDataActivity:I

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiConnected:Z

.field private mIsWimaxEnabled:Z

.field private mLastWifiSignalLevel:I

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneSignalIconId:I

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrivacyModeEnabled:Z

.field private final mService:Landroid/app/StatusBarManager;

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolumeVisible:Z

.field private mWimaxExtraState:I

.field private mWimaxSignal:I

.field private mWimaxState:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 117
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages:[[I

    .line 129
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_r:[[I

    .line 141
    const/16 v0, 0xf0

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 400
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_g:[[I

    .line 410
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_3g:[[I

    .line 420
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_e:[[I

    .line 431
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_h:[[I

    .line 444
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_1x:[[I

    .line 484
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    .line 501
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWimaxSignalImages:[[I

    return-void

    .line 117
    nop

    :array_0
    .array-data 0x4
        0x8ft 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x91t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 129
    :array_2
    .array-data 0x4
        0x78t 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x7at 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
    .end array-data

    .line 141
    :array_4
    .array-data 0x4
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 400
    :array_5
    .array-data 0x4
        0x2at 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x32t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
    .end array-data

    .line 410
    :array_7
    .array-data 0x4
        0x25t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x2ft 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 420
    :array_9
    .array-data 0x4
        0x28t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x31t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 431
    :array_b
    .array-data 0x4
        0x2ct 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x33t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 444
    :array_d
    .array-data 0x4
        0x24t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x2et 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
    .end array-data

    .line 484
    :array_f
    .array-data 0x4
        0xa6t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xact 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0xa8t 0x0t 0x2t 0x7ft
        0xabt 0x0t 0x2t 0x7ft
        0xaet 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
    .end array-data

    .line 501
    :array_11
    .array-data 0x4
        0x65t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_12
    .array-data 0x4
        0x66t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "bluetooth"

    const-string v10, "alarm_clock"

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v4, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;

    invoke-direct {v4, p0, v9}, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;Lcom/android/systemui/statusbar/StatusBarPolicy$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 100
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryFirst:Z

    .line 107
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 398
    sget-object v4, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_g:[[I

    aget-object v4, v4, v7

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    .line 457
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 458
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneState:I

    .line 459
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:I

    .line 460
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataActivity:I

    .line 497
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 498
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    .line 514
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    .line 515
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    .line 516
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxState:I

    .line 517
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxExtraState:I

    .line 520
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    .line 526
    new-instance v4, Lcom/android/systemui/statusbar/StatusBarPolicy$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 898
    new-instance v4, Lcom/android/systemui/statusbar/StatusBarPolicy$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 958
    new-instance v4, Lcom/android/systemui/statusbar/StatusBarPolicy$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 591
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    .line 592
    const-string v4, "statusbar"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 593
    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 594
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 597
    const-string v4, "storage"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 598
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v5, Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {v5, p1}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 602
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "battery"

    const v6, 0x402037a

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 605
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 606
    const v4, 0x7f0200a0

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 607
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "phone_signal"

    iget v6, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 608
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x40a0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mAlwaysUseCdmaRssi:Z

    .line 612
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x1e1

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 621
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "privacy_mode"

    const v6, 0x7f020077

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 622
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "privacy_mode_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v8, v4, :cond_1

    move v4, v8

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPrivacyModeEnabled:Z

    .line 624
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "privacy_mode"

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPrivacyModeEnabled:Z

    invoke-virtual {v4, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 627
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "data_connection"

    const v6, 0x7f02002a

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 628
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "data_connection"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 631
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "wifi"

    sget-object v6, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v6, v6, v7

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 632
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "wifi"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 637
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x40a0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 639
    .local v3, isWimaxEnabled:Z
    if-eqz v3, :cond_0

    .line 640
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "wimax"

    const v6, 0x7f02006d

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 641
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "wimax"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 645
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "tty"

    const v6, 0x7f0200a2

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 646
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "tty"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 649
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "cdma_eri"

    const v6, 0x7f02008b

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 650
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "cdma_eri"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 653
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    const v5, 0x7f020020

    invoke-virtual {v4, v11, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 654
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 655
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 656
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 660
    :goto_1
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    .line 661
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothHeadsetState:I

    .line 662
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothPbapState:I

    .line 663
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v4, v11, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 666
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "gps"

    const v6, 0x7f020071

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 667
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "gps"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 670
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "alarm_clock"

    const v5, 0x7f02001d

    invoke-virtual {v4, v10, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 671
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "alarm_clock"

    invoke-virtual {v4, v10, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 674
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "sync_active"

    const v6, 0x402035b

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 675
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "sync_failing"

    const v6, 0x402035c

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 676
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "sync_active"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 677
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "sync_failing"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 680
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "volume"

    const v6, 0x7f020087

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 681
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "volume"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 682
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateVolume()V

    .line 684
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 687
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string v4, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    const-string v4, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    const-string v4, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    const-string v4, "android.intent.action.PRIVACY_MODE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v4, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v4, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    const-string v4, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    const-string v4, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v4, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v4, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    const-string v4, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    const-string v4, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    const-string v4, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    const-string v4, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    const-string v4, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    const-string v4, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v2, v9, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 719
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_2
    return-void

    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #isWimaxEnabled:Z
    :cond_1
    move v4, v7

    .line 622
    goto/16 :goto_0

    .line 658
    .restart local v0       #adapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v3       #isWimaxEnabled:Z
    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    goto/16 :goto_1

    .line 721
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 722
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHspaDataDistinguishable:Z

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updatePrivacyMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateHeadset(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/StatusBarPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryViewSequence:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->closeLastBatteryView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->onBatteryOkay(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateVolume()V

    return-void
.end method

.method private closeLastBatteryView()V
    .locals 2

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 915
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 918
    :cond_0
    return-void
.end method

.method private getCdmaLevel()I
    .locals 5

    .prologue
    .line 1106
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1107
    .local v0, cdmaDbm:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1108
    .local v1, cdmaEcio:I
    const/4 v2, 0x0

    .line 1109
    .local v2, levelDbm:I
    const/4 v3, 0x0

    .line 1111
    .local v3, levelEcio:I
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 1118
    :goto_0
    const/16 v4, -0x5a

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 1124
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 1112
    :cond_0
    const/16 v4, -0x55

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 1113
    :cond_1
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1114
    :cond_2
    const/16 v4, -0x64

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 1115
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1119
    :cond_4
    const/16 v4, -0x6e

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 1120
    :cond_5
    const/16 v4, -0x82

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 1121
    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 1122
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 1124
    goto :goto_2
.end method

.method private getEvdoLevel()I
    .locals 5

    .prologue
    .line 1128
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1129
    .local v0, evdoDbm:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1130
    .local v1, evdoSnr:I
    const/4 v2, 0x0

    .line 1131
    .local v2, levelEvdoDbm:I
    const/4 v3, 0x0

    .line 1133
    .local v3, levelEvdoSnr:I
    const/16 v4, -0x41

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 1139
    :goto_0
    const/4 v4, 0x7

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 1145
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 1134
    :cond_0
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 1135
    :cond_1
    const/16 v4, -0x5a

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1136
    :cond_2
    const/16 v4, -0x69

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 1137
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1140
    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 1141
    :cond_5
    const/4 v4, 0x3

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 1142
    :cond_6
    const/4 v4, 0x1

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 1143
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 1145
    goto :goto_2
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1042
    :pswitch_0
    const/4 v0, 0x1

    .line 1045
    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1040
    goto :goto_0

    :cond_0
    move v0, v1

    .line 1045
    goto :goto_0

    .line 1037
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->showLowBatteryWarning()V

    .line 795
    return-void
.end method

.method private onBatteryOkay(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 803
    :cond_0
    return-void
.end method

.method private showLowBatteryWarning()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 817
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->closeLastBatteryView()V

    .line 820
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0007

    new-array v10, v13, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevel:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 823
    .local v4, levelText:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 824
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 858
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v8, "power_sounds_enabled"

    invoke-static {v1, v8, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v13, :cond_0

    .line 861
    const-string v8, "low_battery_sound"

    invoke-static {v1, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 863
    .local v6, soundPath:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 864
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 865
    .local v7, soundUri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 866
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    .line 867
    .local v5, sfx:Landroid/media/Ringtone;
    if-eqz v5, :cond_0

    .line 868
    invoke-virtual {v5, v13}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 869
    invoke-virtual {v5}, Landroid/media/Ringtone;->play()V

    .line 874
    .end local v5           #sfx:Landroid/media/Ringtone;
    .end local v6           #soundPath:Ljava/lang/String;
    .end local v7           #soundUri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 826
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 827
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 828
    const v8, 0x7f0a0005

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 829
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 830
    const v8, 0x7f020013

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 831
    const v8, 0x104000a

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 833
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 834
    .local v3, intent:Landroid/content/Intent;
    const/high16 v8, 0x5880

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 838
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 839
    const v8, 0x7f0a0008

    new-instance v9, Lcom/android/systemui/statusbar/StatusBarPolicy$2;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/StatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 850
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 851
    .local v2, d:Landroid/app/AlertDialog;
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 852
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 853
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 854
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 727
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 728
    .local v0, alarmSet:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 729
    return-void
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "level"

    .line 740
    const-string v4, "icon-small"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 741
    .local v0, id:I
    const-string v4, "level"

    invoke-virtual {p1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 743
    .local v1, level:I
    const/16 v4, 0x64

    if-ge v1, v4, :cond_0

    const/4 v4, 0x5

    const-string v5, "status"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 746
    :cond_0
    const v0, 0x1080296

    .line 749
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "battery"

    invoke-virtual {v4, v5, v0, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 751
    const-string v4, "plugged"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v3, v7

    .line 752
    .local v3, plugged:Z
    :goto_0
    const-string v4, "level"

    const/4 v4, -0x1

    invoke-virtual {p1, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 761
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryPlugged:Z

    .line 763
    .local v2, oldPlugged:Z
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryPlugged:Z

    .line 764
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevel:I

    .line 766
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryFirst:Z

    if-eqz v4, :cond_2

    .line 767
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryFirst:Z

    .line 779
    :cond_2
    return-void

    .end local v2           #oldPlugged:Z
    .end local v3           #plugged:Z
    :cond_3
    move v3, v6

    .line 751
    goto :goto_0
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "bluetooth"

    .line 1280
    const v0, 0x7f020020

    .line 1281
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1282
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1283
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1284
    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 1302
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothHeadsetState:I

    if-eq v1, v5, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothPbapState:I

    if-ne v1, v5, :cond_1

    .line 1304
    :cond_0
    const v0, 0x7f020022

    .line 1307
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v6, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1308
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v0, v6, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1309
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 1284
    goto :goto_0

    .line 1285
    :cond_4
    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1286
    const-string v1, "android.bluetooth.headset.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothHeadsetState:I

    goto :goto_1

    .line 1288
    :cond_5
    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1289
    new-instance v1, Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 1290
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1291
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1293
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1295
    :cond_7
    const-string v2, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1296
    const-string v1, "android.bluetooth.pbap.intent.PBAP_STATE"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothPbapState:I

    goto :goto_1
.end method

.method private final updateCallState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 877
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneState:I

    .line 883
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneState:I

    if-nez v0, :cond_2

    .line 884
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    if-eqz v0, :cond_1

    .line 885
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryPlugged:Z

    if-nez v0, :cond_0

    .line 886
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->showLowBatteryWarning()V

    .line 888
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 896
    :cond_1
    :goto_0
    return-void

    .line 891
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    goto :goto_0
.end method

.method private final updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "StatusBarPolicy"

    const-string v4, "cdma_eri"

    .line 1432
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1478
    :goto_0
    return-void

    .line 1437
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1438
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1442
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 1443
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    .line 1444
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    .line 1446
    if-ne v1, v7, :cond_2

    .line 1447
    const-string v0, "StatusBarPolicy"

    const-string v0, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1451
    :cond_2
    if-ne v2, v7, :cond_3

    .line 1452
    const-string v0, "StatusBarPolicy"

    const-string v0, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1456
    :cond_3
    if-ne v1, v6, :cond_4

    .line 1458
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1462
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 1477
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v1, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 1464
    :pswitch_0
    array-length v2, v0

    if-lt v1, v2, :cond_5

    .line 1465
    const-string v0, "StatusBarPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown iconIndex "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipping ERI icon update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1468
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "cdma_eri"

    aget v0, v0, v1

    invoke-virtual {v2, v4, v0, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1469
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1472
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    const v1, 0x7f02008c

    invoke-virtual {v0, v4, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v6, "wifi"

    .line 921
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    move-object v0, v3

    check-cast v0, Landroid/net/NetworkInfo;

    move-object v2, v0

    .line 923
    .local v2, info:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 956
    :goto_0
    return-void

    .line 925
    :sswitch_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataNetType(I)V

    .line 926
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataIcon()V

    .line 927
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_0

    .line 930
    :sswitch_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 931
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    .line 933
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v3, v4, :cond_0

    .line 934
    sget-object v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v3, v4

    aget v1, v3, v5

    .line 938
    .local v1, iconId:I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wifi"

    invoke-virtual {v3, v6, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 940
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wifi"

    invoke-virtual {v3, v6, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 950
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_0

    .line 936
    .end local v1           #iconId:I
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v1, v3, v4

    .restart local v1       #iconId:I
    goto :goto_1

    .line 942
    .end local v1           #iconId:I
    :cond_1
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 943
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    .line 944
    sget-object v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v3, v3, v5

    aget v1, v3, v5

    .line 946
    .restart local v1       #iconId:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wifi"

    invoke-virtual {v3, v6, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 948
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wifi"

    invoke-virtual {v3, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_2

    .line 953
    .end local v1           #iconId:I
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V

    goto :goto_0

    .line 923
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method private final updateDataIcon()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v5, "data_connection"

    .line 1199
    .line 1201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1203
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    .line 1204
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:I

    if-ne v0, v2, :cond_2

    .line 1205
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_0

    .line 1216
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    .line 1219
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    .line 1251
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1253
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1259
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconVisible:Z

    if-eq v1, v0, :cond_1

    .line 1260
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1261
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconVisible:Z

    .line 1263
    :cond_1
    return-void

    .line 1207
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_0

    .line 1210
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_0

    .line 1213
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1221
    goto :goto_1

    .line 1224
    :cond_3
    const v0, 0x7f020075

    .line 1225
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    goto :goto_1

    .line 1229
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:I

    if-ne v0, v2, :cond_5

    .line 1230
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    .line 1242
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    .line 1245
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    goto :goto_1

    .line 1232
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_3

    .line 1235
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_3

    .line 1238
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_3

    :cond_5
    move v0, v3

    .line 1247
    goto :goto_1

    .line 1254
    :catch_0
    move-exception v3

    .line 1256
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1230
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 2
    .parameter "net"

    .prologue
    .line 1149
    packed-switch p1, :pswitch_data_0

    .line 1178
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    .line 1181
    :goto_0
    return-void

    .line 1151
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_e:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1154
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1159
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_0

    .line 1160
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_h:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1162
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1167
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1170
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1175
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1149
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "gps"

    .line 1387
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1388
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1390
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x402037c

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1393
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1402
    :goto_0
    return-void

    .line 1394
    :cond_0
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x7f020071

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateHeadset(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "headset"

    .line 1423
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "headset"

    const-string v1, "microphone"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const v1, 0x402037d

    :goto_0
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1428
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "headset"

    const-string v1, "state"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1429
    return-void

    .line 1423
    :cond_0
    const v1, 0x7f020074

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1428
    goto :goto_1
.end method

.method private final updatePrivacyMode(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v4, "privacy_mode"

    .line 1184
    const-string v1, "privacy_mode_enabled"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1187
    .local v0, isPrivacyEnabled:Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPrivacyModeEnabled:Z

    if-eq v1, v0, :cond_0

    .line 1188
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPrivacyModeEnabled:Z

    .line 1189
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPrivacyModeEnabled:Z

    if-eqz v1, :cond_1

    .line 1190
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "privacy_mode"

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "privacy_mode"

    invoke-virtual {v1, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "phone_signal"

    .line 1050
    const/4 v1, -0x1

    .line 1054
    .local v1, iconLevel:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1056
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1058
    const v3, 0x7f02009e

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 1062
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "phone_signal"

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v3, v6, v4, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1103
    :goto_1
    return-void

    .line 1060
    :cond_1
    const v3, 0x7f0200a0

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    goto :goto_0

    .line 1066
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isCdma()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1067
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1073
    .local v0, asu:I
    const/4 v3, 0x2

    if-le v0, v3, :cond_3

    const/16 v3, 0x63

    if-ne v0, v3, :cond_4

    :cond_3
    const/4 v1, 0x0

    .line 1080
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1081
    sget-object v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_r:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v2, v3, v4

    .line 1101
    .end local v0           #asu:I
    .local v2, iconList:[I
    :goto_3
    aget v3, v2, v1

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 1102
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "phone_signal"

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v3, v6, v4, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 1074
    .end local v2           #iconList:[I
    .restart local v0       #asu:I
    :cond_4
    const/16 v3, 0xc

    if-lt v0, v3, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    .line 1075
    :cond_5
    const/16 v3, 0x8

    if-lt v0, v3, :cond_6

    const/4 v1, 0x3

    goto :goto_2

    .line 1076
    :cond_6
    const/4 v3, 0x5

    if-lt v0, v3, :cond_7

    const/4 v1, 0x2

    goto :goto_2

    .line 1077
    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    .line 1083
    :cond_8
    sget-object v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v2, v3, v4

    .restart local v2       #iconList:[I
    goto :goto_3

    .line 1086
    .end local v0           #asu:I
    .end local v2           #iconList:[I
    :cond_9
    sget-object v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v2, v3, v4

    .line 1091
    .restart local v2       #iconList:[I
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneState:I

    if-nez v3, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isEvdo()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mAlwaysUseCdmaRssi:Z

    if-nez v3, :cond_a

    .line 1093
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getEvdoLevel()I

    move-result v1

    goto :goto_3

    .line 1098
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getCdmaLevel()I

    move-result v1

    goto :goto_3
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 997
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 998
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 999
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1018
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataIcon()V

    .line 1019
    return-void

    .line 1001
    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1002
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1004
    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1005
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1007
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1009
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1010
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1013
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1016
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 732
    const-string v2, "active"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 733
    .local v0, isActive:Z
    const-string v2, "failing"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 734
    .local v1, isFailing:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "sync_active"

    invoke-virtual {v2, v3, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 737
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v3, "tty"

    .line 1405
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1406
    const-string v0, "ttyEnabled"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1410
    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const v1, 0x7f0200a2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1420
    :goto_0
    return-void

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    invoke-virtual {v0, v3, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateVolume()V
    .locals 5

    .prologue
    const-string v4, "volume"

    .line 1266
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1267
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f020089

    .line 1270
    :goto_0
    if-eqz v0, :cond_0

    .line 1271
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "volume"

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v1, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1273
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mVolumeVisible:Z

    if-eq v0, v1, :cond_1

    .line 1274
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "volume"

    invoke-virtual {v1, v4, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1275
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mVolumeVisible:Z

    .line 1277
    :cond_1
    return-void

    .line 1267
    :cond_2
    const v1, 0x7f020087

    goto :goto_0
.end method

.method private final updateWiMAX(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f02006d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "wimax"

    .line 1347
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1350
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1351
    const-string v0, "wimax_status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1353
    packed-switch v0, :pswitch_data_0

    .line 1361
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    invoke-virtual {v0, v5, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1371
    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxState:I

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    move v0, v4

    .line 1383
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wimax"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1384
    :cond_1
    return-void

    .line 1355
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    .line 1358
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    .line 1362
    :cond_2
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1363
    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    goto :goto_1

    .line 1364
    :cond_3
    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    const-string v0, "WimaxState"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxState:I

    .line 1367
    const-string v0, "WimaxStateDetail"

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxExtraState:I

    goto :goto_1

    :pswitch_4
    move v0, v4

    .line 1374
    goto :goto_2

    .line 1376
    :pswitch_5
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxExtraState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 1377
    const v0, 0x7f02006e

    goto :goto_2

    .line 1379
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWimaxSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    aget v0, v0, v1

    goto :goto_2

    .line 1353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1371
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v4, "wifi"

    .line 1312
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1313
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1315
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1318
    :goto_0
    if-nez v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1344
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 1315
    goto :goto_0

    .line 1323
    :cond_2
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1324
    const-string v0, "connected"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1326
    if-nez v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1329
    :cond_3
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    const-string v0, "newRssi"

    const/16 v1, -0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1332
    sget-object v1, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v1, v1, v3

    array-length v1, v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 1334
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-eq v0, v1, :cond_0

    .line 1335
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1336
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v1, :cond_4

    .line 1337
    sget-object v1, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    aget v0, v1, v0

    .line 1341
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v4, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 1339
    :cond_4
    const v0, 0x7f0200a4

    goto :goto_2
.end method

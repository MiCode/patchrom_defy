.class public Landroid/content/Intent;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$FilterComparison;,
        Landroid/content/Intent$ShortcutIconResource;
    }
.end annotation


# static fields
.field public static final ACTION_AIRPLANE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field public static final ACTION_ALARM_CHANGED:Ljava/lang/String; = "android.intent.action.ALARM_CHANGED"

.field public static final ACTION_ALL_APPS:Ljava/lang/String; = "android.intent.action.ALL_APPS"

.field public static final ACTION_ANSWER:Ljava/lang/String; = "android.intent.action.ANSWER"

.field public static final ACTION_APP_ERROR:Ljava/lang/String; = "android.intent.action.APP_ERROR"

.field public static final ACTION_ATTACH_DATA:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final ACTION_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_CHANGED"

.field public static final ACTION_BATTERY_LOW:Ljava/lang/String; = "android.intent.action.BATTERY_LOW"

.field public static final ACTION_BATTERY_OKAY:Ljava/lang/String; = "android.intent.action.BATTERY_OKAY"

.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_BUG_REPORT:Ljava/lang/String; = "android.intent.action.BUG_REPORT"

.field public static final ACTION_CALL:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final ACTION_CALL_BUTTON:Ljava/lang/String; = "android.intent.action.CALL_BUTTON"

.field public static final ACTION_CALL_EMERGENCY:Ljava/lang/String; = "android.intent.action.CALL_EMERGENCY"

.field public static final ACTION_CALL_PRIVILEGED:Ljava/lang/String; = "android.intent.action.CALL_PRIVILEGED"

.field public static final ACTION_CAMERA_BUTTON:Ljava/lang/String; = "android.intent.action.CAMERA_BUTTON"

.field public static final ACTION_CHOOSER:Ljava/lang/String; = "android.intent.action.CHOOSER"

.field public static final ACTION_CLOSE_SYSTEM_DIALOGS:Ljava/lang/String; = "android.intent.action.CLOSE_SYSTEM_DIALOGS"

.field public static final ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final ACTION_CREATE_SHORTCUT:Ljava/lang/String; = "android.intent.action.CREATE_SHORTCUT"

.field public static final ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field public static final ACTION_DEFAULT:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_DELETE:Ljava/lang/String; = "android.intent.action.DELETE"

.field public static final ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_FULL"

.field public static final ACTION_DEVICE_STORAGE_LOW:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_LOW"

.field public static final ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_NOT_FULL"

.field public static final ACTION_DEVICE_STORAGE_OK:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_OK"

.field public static final ACTION_DIAL:Ljava/lang/String; = "android.intent.action.DIAL"

.field public static final ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field public static final ACTION_EDIT:Ljava/lang/String; = "android.intent.action.EDIT"

.field public static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final ACTION_FACTORY_TEST:Ljava/lang/String; = "android.intent.action.FACTORY_TEST"

.field public static final ACTION_GET_CONTENT:Ljava/lang/String; = "android.intent.action.GET_CONTENT"

.field public static final ACTION_GTALK_SERVICE_CONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_CONNECTED"

.field public static final ACTION_GTALK_SERVICE_DISCONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_DISCONNECTED"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_INPUT_METHOD_CHANGED:Ljava/lang/String; = "android.intent.action.INPUT_METHOD_CHANGED"

.field public static final ACTION_INSERT:Ljava/lang/String; = "android.intent.action.INSERT"

.field public static final ACTION_INSERT_OR_EDIT:Ljava/lang/String; = "android.intent.action.INSERT_OR_EDIT"

.field public static final ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final ACTION_MANAGE_PACKAGE_STORAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PACKAGE_STORAGE"

.field public static final ACTION_MEDIA_BAD_REMOVAL:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field public static final ACTION_MEDIA_BUTTON:Ljava/lang/String; = "android.intent.action.MEDIA_BUTTON"

.field public static final ACTION_MEDIA_CHECKING:Ljava/lang/String; = "android.intent.action.MEDIA_CHECKING"

.field public static final ACTION_MEDIA_EJECT:Ljava/lang/String; = "android.intent.action.MEDIA_EJECT"

.field public static final ACTION_MEDIA_MOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_MOUNTED"

.field public static final ACTION_MEDIA_NOFS:Ljava/lang/String; = "android.intent.action.MEDIA_NOFS"

.field public static final ACTION_MEDIA_REMOVED:Ljava/lang/String; = "android.intent.action.MEDIA_REMOVED"

.field public static final ACTION_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field public static final ACTION_MEDIA_SCANNER_SCAN_FILE:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

.field public static final ACTION_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_STARTED"

.field public static final ACTION_MEDIA_SHARED:Ljava/lang/String; = "android.intent.action.MEDIA_SHARED"

.field public static final ACTION_MEDIA_UNMOUNTABLE:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTABLE"

.field public static final ACTION_MEDIA_UNMOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTED"

.field public static final ACTION_MEDIA_UNSHARED:Ljava/lang/String; = "android.intent.action.MEDIA_UNSHARED"

.field public static final ACTION_NEW_OUTGOING_CALL:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"

.field public static final ACTION_PACKAGE_ADDED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGE_CHANGED"

.field public static final ACTION_PACKAGE_DATA_CLEARED:Ljava/lang/String; = "android.intent.action.PACKAGE_DATA_CLEARED"

.field public static final ACTION_PACKAGE_INSTALL:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL"

.field public static final ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final ACTION_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final ACTION_PACKAGE_RESTARTED:Ljava/lang/String; = "android.intent.action.PACKAGE_RESTARTED"

.field public static final ACTION_PICK:Ljava/lang/String; = "android.intent.action.PICK"

.field public static final ACTION_PICK_ACTIVITY:Ljava/lang/String; = "android.intent.action.PICK_ACTIVITY"

.field public static final ACTION_POWER_CONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field public static final ACTION_POWER_DISCONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field public static final ACTION_POWER_USAGE_SUMMARY:Ljava/lang/String; = "android.intent.action.POWER_USAGE_SUMMARY"

.field public static final ACTION_PRE_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.PRE_BOOT_COMPLETED"

.field public static final ACTION_PROVIDER_CHANGED:Ljava/lang/String; = "android.intent.action.PROVIDER_CHANGED"

.field public static final ACTION_QUERY_PACKAGE_RESTART:Ljava/lang/String; = "android.intent.action.QUERY_PACKAGE_RESTART"

.field public static final ACTION_REBOOT:Ljava/lang/String; = "android.intent.action.REBOOT"

.field public static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final ACTION_REQUEST_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_REQUEST_SHUTDOWN"

.field public static final ACTION_RUN:Ljava/lang/String; = "android.intent.action.RUN"

.field public static final ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field public static final ACTION_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field public static final ACTION_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field public static final ACTION_SEARCH_LONG_PRESS:Ljava/lang/String; = "android.intent.action.SEARCH_LONG_PRESS"

.field public static final ACTION_SEND:Ljava/lang/String; = "android.intent.action.SEND"

.field public static final ACTION_SENDTO:Ljava/lang/String; = "android.intent.action.SENDTO"

.field public static final ACTION_SEND_MULTIPLE:Ljava/lang/String; = "android.intent.action.SEND_MULTIPLE"

.field public static final ACTION_SET_WALLPAPER:Ljava/lang/String; = "android.intent.action.SET_WALLPAPER"

.field public static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final ACTION_SYNC:Ljava/lang/String; = "android.intent.action.SYNC"

.field public static final ACTION_SYNC_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SYNC_STATE_CHANGED"

.field public static final ACTION_SYSTEM_TUTORIAL:Ljava/lang/String; = "android.intent.action.SYSTEM_TUTORIAL"

.field public static final ACTION_TIMEZONE_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"

.field public static final ACTION_TIME_CHANGED:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field public static final ACTION_TIME_TICK:Ljava/lang/String; = "android.intent.action.TIME_TICK"

.field public static final ACTION_UID_REMOVED:Ljava/lang/String; = "android.intent.action.UID_REMOVED"

.field public static final ACTION_UMS_CONNECTED:Ljava/lang/String; = "android.intent.action.UMS_CONNECTED"

.field public static final ACTION_UMS_DISCONNECTED:Ljava/lang/String; = "android.intent.action.UMS_DISCONNECTED"

.field public static final ACTION_UPGRADE_SETUP:Ljava/lang/String; = "android.intent.action.UPGRADE_SETUP"

.field public static final ACTION_USER_PRESENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field public static final ACTION_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_VOICE_COMMAND:Ljava/lang/String; = "android.intent.action.VOICE_COMMAND"

.field public static final ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.WALLPAPER_CHANGED"

.field public static final ACTION_WEB_SEARCH:Ljava/lang/String; = "android.intent.action.WEB_SEARCH"

.field public static final CATEGORY_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.ALTERNATIVE"

.field public static final CATEGORY_BROWSABLE:Ljava/lang/String; = "android.intent.category.BROWSABLE"

.field public static final CATEGORY_CAR_DOCK:Ljava/lang/String; = "android.intent.category.CAR_DOCK"

.field public static final CATEGORY_CAR_MODE:Ljava/lang/String; = "android.intent.category.CAR_MODE"

.field public static final CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final CATEGORY_DESK_DOCK:Ljava/lang/String; = "android.intent.category.DESK_DOCK"

.field public static final CATEGORY_DEVELOPMENT_PREFERENCE:Ljava/lang/String; = "android.intent.category.DEVELOPMENT_PREFERENCE"

.field public static final CATEGORY_EMBED:Ljava/lang/String; = "android.intent.category.EMBED"

.field public static final CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST:Ljava/lang/String; = "android.intent.category.FRAMEWORK_INSTRUMENTATION_TEST"

.field public static final CATEGORY_HOME:Ljava/lang/String; = "android.intent.category.HOME"

.field public static final CATEGORY_INFO:Ljava/lang/String; = "android.intent.category.INFO"

.field public static final CATEGORY_LAUNCHER:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field public static final CATEGORY_MONKEY:Ljava/lang/String; = "android.intent.category.MONKEY"

.field public static final CATEGORY_OPENABLE:Ljava/lang/String; = "android.intent.category.OPENABLE"

.field public static final CATEGORY_PREFERENCE:Ljava/lang/String; = "android.intent.category.PREFERENCE"

.field public static final CATEGORY_SAMPLE_CODE:Ljava/lang/String; = "android.intent.category.SAMPLE_CODE"

.field public static final CATEGORY_SELECTED_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.SELECTED_ALTERNATIVE"

.field public static final CATEGORY_TAB:Ljava/lang/String; = "android.intent.category.TAB"

.field public static final CATEGORY_TEST:Ljava/lang/String; = "android.intent.category.TEST"

.field public static final CATEGORY_UNIT_TEST:Ljava/lang/String; = "android.intent.category.UNIT_TEST"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ALARM_COUNT:Ljava/lang/String; = "android.intent.extra.ALARM_COUNT"

.field public static final EXTRA_BCC:Ljava/lang/String; = "android.intent.extra.BCC"

.field public static final EXTRA_BUG_REPORT:Ljava/lang/String; = "android.intent.extra.BUG_REPORT"

.field public static final EXTRA_CC:Ljava/lang/String; = "android.intent.extra.CC"

.field public static final EXTRA_CHANGED_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.changed_component_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CHANGED_COMPONENT_NAME_LIST:Ljava/lang/String; = "android.intent.extra.changed_component_name_list"

.field public static final EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final EXTRA_CLIENT_INTENT:Ljava/lang/String; = "android.intent.extra.client_intent"

.field public static final EXTRA_CLIENT_LABEL:Ljava/lang/String; = "android.intent.extra.client_label"

.field public static final EXTRA_DATA_REMOVED:Ljava/lang/String; = "android.intent.extra.DATA_REMOVED"

.field public static final EXTRA_DOCK_STATE:Ljava/lang/String; = "android.intent.extra.DOCK_STATE"

.field public static final EXTRA_DOCK_STATE_CAR:I = 0x2

.field public static final EXTRA_DOCK_STATE_DESK:I = 0x1

.field public static final EXTRA_DOCK_STATE_HD:I = 0x4

.field public static final EXTRA_DOCK_STATE_MOBILE:I = 0x3

.field public static final EXTRA_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final EXTRA_DONT_KILL_APP:Ljava/lang/String; = "android.intent.extra.DONT_KILL_APP"

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "android.intent.extra.EMAIL"

.field public static final EXTRA_INITIAL_INTENTS:Ljava/lang/String; = "android.intent.extra.INITIAL_INTENTS"

.field public static final EXTRA_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.INSTALLER_PACKAGE_NAME"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "android.intent.extra.INTENT"

.field public static final EXTRA_KEY_CONFIRM:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final EXTRA_KEY_EVENT:Ljava/lang/String; = "android.intent.extra.KEY_EVENT"

.field public static final EXTRA_PACKAGES:Ljava/lang/String; = "android.intent.extra.PACKAGES"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "android.intent.extra.PHONE_NUMBER"

.field public static final EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field public static final EXTRA_REPLACING:Ljava/lang/String; = "android.intent.extra.REPLACING"

.field public static final EXTRA_SHORTCUT_ICON:Ljava/lang/String; = "android.intent.extra.shortcut.ICON"

.field public static final EXTRA_SHORTCUT_ICON_RESOURCE:Ljava/lang/String; = "android.intent.extra.shortcut.ICON_RESOURCE"

.field public static final EXTRA_SHORTCUT_INTENT:Ljava/lang/String; = "android.intent.extra.shortcut.INTENT"

.field public static final EXTRA_SHORTCUT_NAME:Ljava/lang/String; = "android.intent.extra.shortcut.NAME"

.field public static final EXTRA_STREAM:Ljava/lang/String; = "android.intent.extra.STREAM"

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "android.intent.extra.SUBJECT"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.intent.extra.TEMPLATE"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.intent.extra.TEXT"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.intent.extra.TITLE"

.field public static final EXTRA_UID:Ljava/lang/String; = "android.intent.extra.UID"

.field public static final FILL_IN_ACTION:I = 0x1

.field public static final FILL_IN_CATEGORIES:I = 0x4

.field public static final FILL_IN_COMPONENT:I = 0x8

.field public static final FILL_IN_DATA:I = 0x2

.field public static final FILL_IN_PACKAGE:I = 0x10

.field public static final FILL_IN_SOURCE_BOUNDS:I = 0x20

.field public static final FLAG_ACTIVITY_BROUGHT_TO_FRONT:I = 0x400000

.field public static final FLAG_ACTIVITY_CLEAR_TOP:I = 0x4000000

.field public static final FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET:I = 0x80000

.field public static final FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS:I = 0x800000

.field public static final FLAG_ACTIVITY_FORWARD_RESULT:I = 0x2000000

.field public static final FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY:I = 0x100000

.field public static final FLAG_ACTIVITY_MULTIPLE_TASK:I = 0x8000000

.field public static final FLAG_ACTIVITY_NEW_TASK:I = 0x10000000

.field public static final FLAG_ACTIVITY_NO_ANIMATION:I = 0x10000

.field public static final FLAG_ACTIVITY_NO_HISTORY:I = 0x40000000

.field public static final FLAG_ACTIVITY_NO_USER_ACTION:I = 0x40000

.field public static final FLAG_ACTIVITY_PREVIOUS_IS_TOP:I = 0x1000000

.field public static final FLAG_ACTIVITY_REORDER_TO_FRONT:I = 0x20000

.field public static final FLAG_ACTIVITY_RESET_TASK_IF_NEEDED:I = 0x200000

.field public static final FLAG_ACTIVITY_SINGLE_TOP:I = 0x20000000

.field public static final FLAG_DEBUG_LOG_RESOLUTION:I = 0x8

.field public static final FLAG_FROM_BACKGROUND:I = 0x4

.field public static final FLAG_GRANT_READ_URI_PERMISSION:I = 0x1

.field public static final FLAG_GRANT_WRITE_URI_PERMISSION:I = 0x2

.field public static final FLAG_RECEIVER_BOOT_UPGRADE:I = 0x8000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY:I = 0x40000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I = 0x10000000

.field public static final FLAG_RECEIVER_REPLACE_PENDING:I = 0x20000000

.field public static final IMMUTABLE_FLAGS:I = 0x3

.field public static final METADATA_DOCK_HOME:Ljava/lang/String; = "android.dock_home"

.field public static final METADATA_SETUP_VERSION:Ljava/lang/String; = "android.SETUP_VERSION"

.field public static final URI_INTENT_SCHEME:I = 0x1


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCategories:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mComponent:Landroid/content/ComponentName;

.field private mData:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mPackage:Ljava/lang/String;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/content/Intent$1;

    invoke-direct {v0}, Landroid/content/Intent$1;-><init>()V

    sput-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .parameter "packageContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .parameter "o"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget v0, p1, Landroid/content/Intent;->mFlags:I

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    iget-object v0, p1, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_1
    iget-object v0, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    :cond_2
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Z)V
    .locals 2
    .parameter "o"
    .parameter "all"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "action"
    .parameter "uri"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .parameter "action"
    .parameter "uri"
    .parameter "packageContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p4, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .parameter "target"
    .parameter "title"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentOld(Ljava/lang/String;)Landroid/content/Intent;
    .locals 10
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, i:I
    if-ltz v1, :cond_14

    const/4 v0, 0x0

    .local v0, action:Ljava/lang/String;
    move v4, v1

    .local v4, intentFragmentStart:I
    const/4 v2, 0x0

    .local v2, isIntentFragment:Z
    add-int/lit8 v1, v1, 0x1

    const-string v3, "action("

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-virtual {p0, v1, v3, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    add-int/lit8 v0, v1, 0x7

    .end local v1           #i:I
    .local v0, i:I
    const/16 v1, 0x29

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .local v1, j:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .local v1, i:I
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const-string v0, "categories("

    .end local v0           #action:Ljava/lang/String;
    const/4 v5, 0x0

    const/16 v6, 0xb

    invoke-virtual {p0, v1, v0, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v2, 0x1

    add-int/lit8 v0, v1, 0xb

    .end local v1           #i:I
    .local v0, i:I
    const/16 v1, 0x29

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .local v1, j:I
    :goto_0
    if-ge v0, v1, :cond_3

    const/16 v5, 0x21

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .local v5, sep:I
    if-gez v5, :cond_1

    move v5, v1

    :cond_1
    if-ge v0, v5, :cond_2

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0           #i:I
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    add-int/lit8 v0, v5, 0x1

    .restart local v0       #i:I
    goto :goto_0

    .end local v5           #sep:I
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v2

    .end local v2           #isIntentFragment:Z
    .local v1, isIntentFragment:Z
    :goto_1
    const-string v2, "type("

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {p0, v0, v2, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x5

    const/16 v2, 0x29

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, j:I
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0           #i:I
    iput-object v0, v3, Landroid/content/Intent;->mType:Ljava/lang/String;

    add-int/lit8 v0, v2, 0x1

    .end local v2           #j:I
    .restart local v0       #i:I
    :cond_4
    const-string v2, "launchFlags("

    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-virtual {p0, v0, v2, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0xc

    const/16 v2, 0x29

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .restart local v2       #j:I
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0           #i:I
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Landroid/content/Intent;->mFlags:I

    add-int/lit8 v0, v2, 0x1

    .end local v2           #j:I
    .restart local v0       #i:I
    :cond_5
    const-string v2, "component("

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-virtual {p0, v0, v2, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0xa

    const/16 v2, 0x29

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .restart local v2       #j:I
    const/16 v5, 0x21

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .local v6, sep:I
    if-ltz v6, :cond_6

    if-ge v6, v2, :cond_6

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, pkg:Ljava/lang/String;
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v0           #i:I
    move-result-object v0

    .local v0, cls:Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    .end local v6           #sep:I
    invoke-direct {v6, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v3, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .end local v0           #cls:Ljava/lang/String;
    .end local v5           #pkg:Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v2, 0x1

    .end local v2           #j:I
    .local v0, i:I
    :cond_7
    const-string v2, "extras("

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-virtual {p0, v0, v2, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v5, 0x1

    .end local v1           #isIntentFragment:Z
    .local v5, isIntentFragment:Z
    add-int/lit8 v0, v0, 0x7

    const/16 v1, 0x29

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .local v1, closeParen:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    new-instance v1, Ljava/net/URISyntaxException;

    .end local v1           #closeParen:I
    const-string v2, "EXTRA missing trailing \')\'"

    invoke-direct {v1, p0, v2, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .local v0, ch:C
    .restart local v1       #closeParen:I
    .local v2, i:I
    :cond_8
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    :cond_9
    if-ge v0, v1, :cond_15

    const/16 v2, 0x3d

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, j:I
    add-int/lit8 v6, v0, 0x1

    if-le v2, v6, :cond_a

    if-lt v0, v1, :cond_b

    :cond_a
    new-instance v1, Ljava/net/URISyntaxException;

    .end local v1           #closeParen:I
    const-string v2, "EXTRA missing \'=\'"

    .end local v2           #j:I
    invoke-direct {v1, p0, v2, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .restart local v1       #closeParen:I
    .restart local v2       #j:I
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .local v7, type:C
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, key:Ljava/lang/String;
    add-int/lit8 v0, v2, 0x1

    const/16 v2, 0x21

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    .end local v2           #j:I
    move-result v2

    .restart local v2       #j:I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_c

    if-lt v2, v1, :cond_d

    :cond_c
    move v2, v1

    :cond_d
    if-lt v0, v2, :cond_e

    new-instance v1, Ljava/net/URISyntaxException;

    .end local v1           #closeParen:I
    const-string v2, "EXTRA missing \'!\'"

    .end local v2           #j:I
    invoke-direct {v1, p0, v2, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .restart local v1       #closeParen:I
    .restart local v2       #j:I
    :cond_e
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    move v2, v2

    .local v2, i:I
    iget-object v8, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v8, :cond_f

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_f
    sparse-switch v7, :sswitch_data_0

    :try_start_0
    new-instance v0, Ljava/net/URISyntaxException;

    .end local v0           #value:Ljava/lang/String;
    const-string v1, "EXTRA has unknown type"

    .end local v1           #closeParen:I
    invoke-direct {v0, p0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #type:C
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/net/URISyntaxException;

    .end local v0           #e:Ljava/lang/NumberFormatException;
    const-string v1, "EXTRA value can\'t be parsed"

    invoke-direct {v0, p0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .local v0, value:Ljava/lang/String;
    .restart local v1       #closeParen:I
    .restart local v7       #type:C
    :sswitch_0
    :try_start_1
    iget-object v7, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .end local v7           #type:C
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #value:Ljava/lang/String;
    invoke-virtual {v7, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, ch:C
    const/16 v6, 0x29

    if-ne v0, v6, :cond_12

    .end local v6           #key:Ljava/lang/String;
    move v1, v5

    .end local v5           #isIntentFragment:Z
    .local v1, isIntentFragment:Z
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    :cond_10
    :goto_3
    if-eqz v1, :cond_13

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v1           #isIntentFragment:Z
    move-result-object p0

    .end local p0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v3, Landroid/content/Intent;->mData:Landroid/net/Uri;

    :goto_4
    iget-object p0, v3, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-nez p0, :cond_11

    const-string p0, "android.intent.action.VIEW"

    iput-object p0, v3, Landroid/content/Intent;->mAction:Ljava/lang/String;

    :cond_11
    move p0, v0

    .end local v0           #i:I
    .local p0, i:I
    move-object v0, v3

    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #intentFragmentStart:I
    .local v0, intent:Landroid/content/Intent;
    :goto_5
    return-object v0

    .local v0, value:Ljava/lang/String;
    .local v1, closeParen:I
    .restart local v2       #i:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #intentFragmentStart:I
    .restart local v5       #isIntentFragment:Z
    .restart local v6       #key:Ljava/lang/String;
    .restart local v7       #type:C
    .local p0, uri:Ljava/lang/String;
    :sswitch_1
    :try_start_2
    iget-object v7, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .end local v7           #type:C
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #value:Ljava/lang/String;
    invoke-virtual {v7, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .restart local v0       #value:Ljava/lang/String;
    .restart local v7       #type:C
    :sswitch_2
    iget-object v7, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .end local v7           #type:C
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    .end local v0           #value:Ljava/lang/String;
    invoke-virtual {v7, v6, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_2

    .restart local v0       #value:Ljava/lang/String;
    .restart local v7       #type:C
    :sswitch_3
    iget-object v7, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .end local v7           #type:C
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #value:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v7, v6, v0}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_2

    .restart local v0       #value:Ljava/lang/String;
    .restart local v7       #type:C
    :sswitch_4
    iget-object v7, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .end local v7           #type:C
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .restart local v7       #type:C
    :sswitch_5
    iget-object v7, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .end local v7           #type:C
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .end local v0           #value:Ljava/lang/String;
    invoke-virtual {v7, v6, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_2

    .restart local v0       #value:Ljava/lang/String;
    .restart local v7       #type:C
    :sswitch_6
    iget-object v7, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .end local v7           #type:C
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0           #value:Ljava/lang/String;
    invoke-virtual {v7, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .restart local v0       #value:Ljava/lang/String;
    .restart local v7       #type:C
    :sswitch_7
    iget-object v7, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .end local v7           #type:C
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .restart local v7       #type:C
    :sswitch_8
    iget-object v7, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .end local v7           #type:C
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    .end local v0           #value:Ljava/lang/String;
    invoke-virtual {v7, v6, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .end local v6           #key:Ljava/lang/String;
    .local v0, ch:C
    :cond_12
    const/16 v6, 0x21

    if-eq v0, v6, :cond_8

    new-instance v0, Ljava/net/URISyntaxException;

    .end local v0           #ch:C
    const-string v1, "EXTRA missing \'!\'"

    .end local v1           #closeParen:I
    invoke-direct {v0, p0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .end local v2           #i:I
    .end local v5           #isIntentFragment:Z
    .local v0, i:I
    .local v1, isIntentFragment:Z
    :cond_13
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .end local p0           #uri:Ljava/lang/String;
    iput-object p0, v3, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto :goto_4

    .end local v0           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #intentFragmentStart:I
    .local v1, i:I
    .restart local p0       #uri:Ljava/lang/String;
    :cond_14
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .end local p0           #uri:Ljava/lang/String;
    invoke-direct {v0, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, intent:Landroid/content/Intent;
    move p0, v1

    .end local v1           #i:I
    .local p0, i:I
    goto :goto_5

    .local v0, i:I
    .local v1, closeParen:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #intentFragmentStart:I
    .restart local v5       #isIntentFragment:Z
    .local p0, uri:Ljava/lang/String;
    :cond_15
    move v1, v5

    .end local v5           #isIntentFragment:Z
    .local v1, isIntentFragment:Z
    goto/16 :goto_3

    .end local v0           #i:I
    .local v1, i:I
    .local v2, isIntentFragment:Z
    :cond_16
    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    move v1, v2

    .end local v2           #isIntentFragment:Z
    .local v1, isIntentFragment:Z
    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x53 -> :sswitch_0
        0x62 -> :sswitch_2
        0x63 -> :sswitch_3
        0x64 -> :sswitch_4
        0x66 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6c -> :sswitch_7
        0x73 -> :sswitch_8
    .end sparse-switch
.end method

.method public static parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    .locals 5
    .parameter "resources"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intent:Landroid/content/Intent;
    sget-object v0, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .local v3, sa:Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, data:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .end local v0           #data:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, packageName:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, className:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .end local v0           #className:Ljava/lang/String;
    .local v2, outerDepth:I
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_8

    :cond_2
    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, nodeName:Ljava/lang/String;
    const-string v4, "category"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v0, Lcom/android/internal/R$styleable;->IntentCategory:[I

    .end local v0           #nodeName:Ljava/lang/String;
    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, cat:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v0, v3

    .end local v3           #sa:Landroid/content/res/TypedArray;
    .local v0, sa:Landroid/content/res/TypedArray;
    :goto_2
    move-object v3, v0

    .end local v0           #sa:Landroid/content/res/TypedArray;
    .restart local v3       #sa:Landroid/content/res/TypedArray;
    goto :goto_1

    .local v0, data:Ljava/lang/String;
    .local v2, mimeType:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .local v0, nodeName:Ljava/lang/String;
    .local v2, outerDepth:I
    :cond_5
    const-string v4, "extra"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #nodeName:Ljava/lang/String;
    if-eqz v0, :cond_7

    iget-object v0, v1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_6
    const-string v0, "extra"

    iget-object v4, v1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, p2, v4}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v0, v3

    .end local v3           #sa:Landroid/content/res/TypedArray;
    .local v0, sa:Landroid/content/res/TypedArray;
    goto :goto_2

    .end local v0           #sa:Landroid/content/res/TypedArray;
    .restart local v3       #sa:Landroid/content/res/TypedArray;
    :cond_7
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v0, v3

    .end local v3           #sa:Landroid/content/res/TypedArray;
    .restart local v0       #sa:Landroid/content/res/TypedArray;
    goto :goto_2

    .local v0, type:I
    .restart local v3       #sa:Landroid/content/res/TypedArray;
    :cond_8
    return-object v1
.end method

.method public static parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 13
    .parameter "uri"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const-string v10, "intent:"

    const-string v10, "#Intent;"

    const-string v10, "android.intent.action.VIEW"

    const/4 v4, 0x0

    .local v4, i:I
    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_0

    :try_start_0
    const-string v10, "intent:"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .local v5, intent:Landroid/content/Intent;
    :try_start_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v5

    .end local v5           #intent:Landroid/content/Intent;
    :goto_0
    return-object v10

    .restart local v5       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v10

    move-object v2, v10

    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v10, Ljava/net/URISyntaxException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v10

    move-object v2, v10

    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v10, Ljava/net/URISyntaxException;

    const-string v11, "illegal Intent URI format"

    invoke-direct {v10, p0, v11, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v10

    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    :try_start_3
    const-string v10, "#"

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const-string v10, "#Intent;"

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {p0}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    goto :goto_0

    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v5       #intent:Landroid/content/Intent;
    if-ltz v4, :cond_3

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    .local v1, data:Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    .local v7, scheme:Ljava/lang/String;
    const-string v10, "#Intent;"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    :goto_2
    const-string v10, "end"

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_16

    const/16 v10, 0x3d

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .local v3, eq:I
    const/16 v10, 0x3b

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .local v8, semi:I
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, value:Ljava/lang/String;
    const-string v10, "action="

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4

    iput-object v9, v5, Landroid/content/Intent;->mAction:Ljava/lang/String;

    :goto_3
    add-int/lit8 v4, v8, 0x1

    goto :goto_2

    .end local v1           #data:Ljava/lang/String;
    .end local v3           #eq:I
    .end local v7           #scheme:Ljava/lang/String;
    .end local v8           #semi:I
    .end local v9           #value:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    move-object v1, v10

    goto :goto_1

    .restart local v1       #data:Ljava/lang/String;
    .restart local v3       #eq:I
    .restart local v7       #scheme:Ljava/lang/String;
    .restart local v8       #semi:I
    .restart local v9       #value:Ljava/lang/String;
    :cond_4
    const-string v10, "category="

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_5
    const-string v10, "type="

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_6

    iput-object v9, v5, Landroid/content/Intent;->mType:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const-string v10, "launchFlags="

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v5, Landroid/content/Intent;->mFlags:I

    goto :goto_3

    :cond_7
    const-string v10, "package="

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8

    iput-object v9, v5, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const-string v10, "component="

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, v5, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    goto :goto_3

    :cond_9
    const-string v10, "scheme="

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object v7, v9

    goto :goto_3

    :cond_a
    const-string v10, "sourceBounds="

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {v9}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v10

    iput-object v10, v5, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto :goto_3

    :cond_b
    add-int/lit8 v10, v4, 0x2

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, key:Ljava/lang/String;
    iget-object v10, v5, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v10, :cond_c

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v5, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_c
    iget-object v0, v5, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .local v0, b:Landroid/os/Bundle;
    const-string v10, "S."

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    const-string v10, "B."

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_e
    const-string v10, "b."

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-static {v9}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v10

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_3

    :cond_f
    const-string v10, "c."

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_3

    :cond_10
    const-string v10, "d."

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v0, v6, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_3

    :cond_11
    const-string v10, "f."

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_3

    :cond_12
    const-string v10, "i."

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_13
    const-string v10, "l."

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v6, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_3

    :cond_14
    const-string v10, "s."

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-static {v9}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v10

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_3

    :cond_15
    new-instance v10, Ljava/net/URISyntaxException;

    const-string v11, "unknown EXTRA type"

    invoke-direct {v10, p0, v11, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v10

    .end local v0           #b:Landroid/os/Bundle;
    .end local v3           #eq:I
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #semi:I
    .end local v9           #value:Ljava/lang/String;
    :cond_16
    if-eqz v1, :cond_18

    const-string v10, "intent:"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v10, 0x7

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_17

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v10

    if-lez v10, :cond_18

    :try_start_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v5, Landroid/content/Intent;->mData:Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_18
    move-object v10, v5

    goto/16 :goto_0

    :catch_2
    move-exception v10

    move-object v2, v10

    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_5
    new-instance v10, Ljava/net/URISyntaxException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "category"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFlags(I)Landroid/content/Intent;
    .locals 1
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public cloneFilter()Landroid/content/Intent;
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;Z)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fillIn(Landroid/content/Intent;I)I
    .locals 5
    .parameter "other"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    .local v0, changes:I
    iget-object v3, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v3, :cond_0

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v3, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v3, :cond_2

    iget-object v3, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v3, :cond_4

    :cond_3
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v3, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x2

    :cond_5
    iget-object v3, p1, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eqz v3, :cond_6

    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_8

    :cond_6
    iget-object v3, p1, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eqz v3, :cond_7

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p1, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    :cond_7
    or-int/lit8 v0, v0, 0x4

    :cond_8
    iget-object v3, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_9

    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_a

    :cond_9
    iget-object v3, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x10

    :cond_a
    iget-object v3, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_b

    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_b

    iget-object v3, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    or-int/lit8 v0, v0, 0x8

    :cond_b
    iget v3, p0, Landroid/content/Intent;->mFlags:I

    iget v4, p1, Landroid/content/Intent;->mFlags:I

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/Intent;->mFlags:I

    iget-object v3, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_c

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_d

    :cond_c
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    or-int/lit8 v0, v0, 0x20

    :cond_d
    iget-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v3, :cond_f

    iget-object v3, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v3, :cond_e

    new-instance v3, Landroid/os/Bundle;

    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_e
    :goto_0
    return v0

    :cond_f
    iget-object v3, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v3, :cond_e

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .local v2, newb:Landroid/os/Bundle;
    iget-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iput-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #newb:Landroid/os/Bundle;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "Intent"

    const-string v4, "Failure filling in extras"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public filterEquals(Landroid/content/Intent;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v1, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v1, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    goto/16 :goto_0

    :cond_9
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    goto/16 :goto_0

    :cond_b
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    iget-object v1, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public filterHashCode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, code:I
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getBooleanArrayExtra(Ljava/lang/String;)[Z
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    goto :goto_0
.end method

.method public getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getByteArrayExtra(Ljava/lang/String;)[B
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getByteExtra(Ljava/lang/String;B)B
    .locals 1
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    return-object v0
.end method

.method public getCharArrayExtra(Ljava/lang/String;)[C
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    goto :goto_0
.end method

.method public getCharExtra(Ljava/lang/String;C)C
    .locals 1
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    goto :goto_0
.end method

.method public getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDoubleArrayExtra(Ljava/lang/String;)[D
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0
.end method

.method public getDoubleExtra(Ljava/lang/String;D)D
    .locals 2
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move-wide v0, p2

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "name"
    .parameter "defaultValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p2

    .local v0, result:Ljava/lang/Object;
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .local v1, result2:Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v0, v1

    .end local v1           #result2:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    return v0
.end method

.method public getFloatArrayExtra(Ljava/lang/String;)[F
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    goto :goto_0
.end method

.method public getFloatExtra(Ljava/lang/String;F)F
    .locals 1
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntArrayExtra(Ljava/lang/String;)[I
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 1
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getLongArrayExtra(Ljava/lang/String;)[J
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_0
.end method

.method public getLongExtra(Ljava/lang/String;J)J
    .locals 2
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move-wide v0, p2

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0
.end method

.method public getShortArrayExtra(Ljava/lang/String;)[S
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    goto :goto_0
.end method

.method public getShortExtra(Ljava/lang/String;S)S
    .locals 1
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    goto :goto_0
.end method

.method public getSourceBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1
    .parameter "category"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFileDescriptors()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;C)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;S)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[C)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[D)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[J)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[S)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public putExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter "src"

    .prologue
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "extras"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/Intent;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, N:I
    if-lez v0, :cond_1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public removeCategory(Ljava/lang/String;)V
    .locals 1
    .parameter "category"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter "src"

    .prologue
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "extras"

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .locals 4
    .parameter "pm"

    .prologue
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    :goto_0
    return-object v1

    :cond_0
    const/high16 v1, 0x1

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .parameter "pm"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/high16 v2, 0x1

    or-int/2addr v2, p2

    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .parameter "resolver"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const-string v0, "content"

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .parameter "resolver"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAction(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0
    .parameter "action"

    .prologue
    iput-object p1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .parameter "packageContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "packageContext"
    .parameter "className"

    .prologue
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 0
    .parameter "component"

    .prologue
    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setData(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .parameter "data"

    .prologue
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0
    .parameter "data"
    .parameter "type"

    .prologue
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "loader"

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public setFlags(I)Landroid/content/Intent;
    .locals 0
    .parameter "flags"

    .prologue
    iput p1, p0, Landroid/content/Intent;->mFlags:I

    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0
    .parameter "packageName"

    .prologue
    iput-object p1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setSourceBounds(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public toShortString(ZZ)Ljava/lang/String;
    .locals 2
    .parameter "comp"
    .parameter "extras"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZ)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;ZZ)V
    .locals 7
    .parameter "b"
    .parameter "comp"
    .parameter "extras"

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x1

    .local v1, first:Z
    iget-object v4, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "act="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_0
    iget-object v4, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eqz v4, :cond_4

    if-nez v1, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x0

    const-string v4, "cat=["

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, didone:Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v0, 0x1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v4, "]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0           #didone:Z
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v4, :cond_6

    if-nez v1, :cond_5

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v1, 0x0

    const-string v4, "dat="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .local v3, scheme:Ljava/lang/String;
    if-eqz v3, :cond_15

    const-string v4, "tel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "tel:xxx-xxx-xxxx"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v3           #scheme:Ljava/lang/String;
    :cond_6
    :goto_1
    iget-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v4, :cond_8

    if-nez v1, :cond_7

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    const/4 v1, 0x0

    const-string v4, "typ="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v4, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v4, :cond_a

    if-nez v1, :cond_9

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    const/4 v1, 0x0

    const-string v4, "flg=0x"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_c

    if-nez v1, :cond_b

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    const/4 v1, 0x0

    const-string v4, "pkg="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz p2, :cond_e

    iget-object v4, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_e

    if-nez v1, :cond_d

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    const/4 v1, 0x0

    const-string v4, "cmp="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_10

    if-nez v1, :cond_f

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    const/4 v1, 0x0

    const-string v4, "bnds="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    if-eqz p3, :cond_12

    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_12

    if-nez v1, :cond_11

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    const/4 v1, 0x0

    const-string v4, "(has extras)"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    return-void

    .restart local v3       #scheme:Ljava/lang/String;
    :cond_13
    const-string v4, "smsto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "smsto:xxx-xxx-xxxx"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_14
    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_15
    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, b:Ljava/lang/StringBuilder;
    const-string v1, "Intent { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v2, v2}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZ)V

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toURI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri(I)Ljava/lang/String;
    .locals 14
    .parameter "flags"

    .prologue
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v9, uri:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, scheme:Ljava/lang/String;
    iget-object v11, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v11, :cond_8

    iget-object v11, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, data:Ljava/lang/String;
    and-int/lit8 v11, p1, 0x1

    if-eqz v11, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, c:C
    const/16 v11, 0x61

    if-lt v1, v11, :cond_0

    const/16 v11, 0x7a

    if-le v1, v11, :cond_2

    :cond_0
    const/16 v11, 0x41

    if-lt v1, v11, :cond_1

    const/16 v11, 0x5a

    if-le v1, v11, :cond_2

    :cond_1
    const/16 v11, 0x2e

    if-eq v1, v11, :cond_2

    const/16 v11, 0x2d

    if-ne v1, v11, :cond_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/16 v11, 0x3a

    if-ne v1, v11, :cond_4

    if-lez v5, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v11, "intent:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .end local v0           #N:I
    .end local v1           #c:C
    .end local v5           #i:I
    :cond_4
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v3           #data:Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v11, "#Intent;"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_6

    const-string v11, "scheme="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3b

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v11, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v11, :cond_7

    const-string v11, "action="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3b

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v11, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eqz v11, :cond_9

    iget-object v11, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, category:Ljava/lang/String;
    const-string v11, "category="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3b

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v2           #category:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_8
    and-int/lit8 v11, p1, 0x1

    if-eqz v11, :cond_5

    const-string v11, "intent:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    iget-object v11, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v11, :cond_a

    const-string v11, "type="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    const-string v13, "/"

    invoke-static {v12, v13}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3b

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    iget v11, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v11, :cond_b

    const-string v11, "launchFlags=0x"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3b

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v11, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v11, :cond_c

    const-string v11, "package="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3b

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v11, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v11, :cond_d

    const-string v11, "component="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/"

    invoke-static {v12, v13}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3b

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v11, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v11, :cond_e

    const-string v11, "sourceBounds="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3b

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v11, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v11, :cond_19

    iget-object v11, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_f
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, key:Ljava/lang/String;
    iget-object v11, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .local v10, value:Ljava/lang/Object;
    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_10

    const/16 v11, 0x53

    move v4, v11

    .local v4, entryType:C
    :goto_4
    if-eqz v4, :cond_f

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v11, 0x2e

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3d

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3b

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .end local v4           #entryType:C
    :cond_10
    instance-of v11, v10, Ljava/lang/Boolean;

    if-eqz v11, :cond_11

    const/16 v11, 0x42

    move v4, v11

    goto :goto_4

    :cond_11
    instance-of v11, v10, Ljava/lang/Byte;

    if-eqz v11, :cond_12

    const/16 v11, 0x62

    move v4, v11

    goto :goto_4

    :cond_12
    instance-of v11, v10, Ljava/lang/Character;

    if-eqz v11, :cond_13

    const/16 v11, 0x63

    move v4, v11

    goto :goto_4

    :cond_13
    instance-of v11, v10, Ljava/lang/Double;

    if-eqz v11, :cond_14

    const/16 v11, 0x64

    move v4, v11

    goto :goto_4

    :cond_14
    instance-of v11, v10, Ljava/lang/Float;

    if-eqz v11, :cond_15

    const/16 v11, 0x66

    move v4, v11

    goto :goto_4

    :cond_15
    instance-of v11, v10, Ljava/lang/Integer;

    if-eqz v11, :cond_16

    const/16 v11, 0x69

    move v4, v11

    goto :goto_4

    :cond_16
    instance-of v11, v10, Ljava/lang/Long;

    if-eqz v11, :cond_17

    const/16 v11, 0x6c

    move v4, v11

    goto :goto_4

    :cond_17
    instance-of v11, v10, Ljava/lang/Short;

    if-eqz v11, :cond_18

    const/16 v11, 0x73

    move v4, v11

    goto :goto_4

    :cond_18
    const/4 v11, 0x0

    move v4, v11

    goto :goto_4

    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #key:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/Object;
    :cond_19
    const-string v11, "end"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v2, p0, Landroid/content/Intent;->mFlags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/Intent;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, category:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #category:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

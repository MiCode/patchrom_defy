.class public Lcom/android/providers/telephony/SmsProvider;
.super Landroid/content/ContentProvider;
.source "SmsProvider.java"


# static fields
.field private static final CONTACT_QUERY_PROJECTION:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ICC_COLUMNS:[Ljava/lang/String; = null

.field private static final ICC_URI:Landroid/net/Uri; = null

.field private static final NOTIFICATION_URI:Landroid/net/Uri; = null

.field private static final ONE:Ljava/lang/Integer; = null

.field private static final PERSON_ID_COLUMN:I = 0x0

.field private static final SMS_ALL:I = 0x0

.field private static final SMS_ALL_ICC:I = 0x16

.field private static final SMS_ALL_ID:I = 0x1

.field private static final SMS_ATTACHMENT:I = 0x10

.field private static final SMS_ATTACHMENT_ID:I = 0x11

.field private static final SMS_CONVERSATIONS:I = 0xa

.field private static final SMS_CONVERSATIONS_ID:I = 0xb

.field private static final SMS_DRAFT:I = 0x6

.field private static final SMS_DRAFT_ID:I = 0x7

.field private static final SMS_FAILED:I = 0x18

.field private static final SMS_FAILED_ID:I = 0x19

.field private static final SMS_ICC:I = 0x17

.field private static final SMS_INBOX:I = 0x2

.field private static final SMS_INBOX_ID:I = 0x3

.field private static final SMS_NEW_THREAD_ID:I = 0x12

.field private static final SMS_OUTBOX:I = 0x8

.field private static final SMS_OUTBOX_ID:I = 0x9

.field private static final SMS_QUERY_THREAD_ID:I = 0x13

.field private static final SMS_QUEUED:I = 0x1a

.field private static final SMS_RAW_MESSAGE:I = 0xf

.field private static final SMS_RETRY_PENDING:I = 0x1c

.field private static final SMS_RETRY_PENDING_ID:I = 0x1d

.field private static final SMS_SENT:I = 0x4

.field private static final SMS_SENT_ID:I = 0x5

.field private static final SMS_STATUS_ID:I = 0x14

.field private static final SMS_STATUS_PENDING:I = 0x15

.field private static final SMS_UNDELIVERED:I = 0x1b

.field private static final TABLE_MESSAGE_PENDING:Ljava/lang/String; = "message_pending"

.field private static final TABLE_RAW:Ljava/lang/String; = "raw"

.field static final TABLE_SMS:Ljava/lang/String; = "sms"

.field private static final TABLE_SR_PENDING:Ljava/lang/String; = "sr_pending"

.field private static final TABLE_WORDS:Ljava/lang/String; = "words"

.field private static final TAG:Ljava/lang/String; = "SmsProvider"

.field private static final VND_ANDROID_DIR_SMS:Ljava/lang/String; = "vnd.android.cursor.dir/sms"

.field private static final VND_ANDROID_SMS:Ljava/lang/String; = "vnd.android.cursor.item/sms"

.field private static final VND_ANDROID_SMSCHAT:Ljava/lang/String; = "vnd.android.cursor.item/sms-chat"

.field private static final sConversationProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIDProjection:[Ljava/lang/String;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "sms"

    .line 68
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    .line 69
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    .line 83
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->CONTACT_QUERY_PROJECTION:[Ljava/lang/String;

    .line 88
    const-string v0, "1"

    const-string v1, "debug.mot.extwmlog"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    .line 96
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "service_center_address"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "message_class"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "index_on_icc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_status_report"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "stack_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    .line 1138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    .line 1140
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sIDProjection:[Ljava/lang/String;

    .line 1175
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 1179
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1180
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "#"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1181
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "inbox"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1182
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "inbox/#"

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1183
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sent"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1184
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sent/#"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1185
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "draft"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1186
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "draft/#"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1187
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "outbox"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1188
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "outbox/#"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1189
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "undelivered"

    const/16 v2, 0x1b

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1190
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "failed"

    const/16 v2, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1191
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "failed/#"

    const/16 v2, 0x19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1192
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "queued"

    const/16 v2, 0x1a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1193
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "conversations"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1194
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "conversations/*"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1195
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "raw"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1196
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "attachments"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1197
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "attachments/#"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1198
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "threadID"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1199
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "threadID/*"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1200
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "status/#"

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1201
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sr_pending"

    const/16 v2, 0x15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1204
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "message_pending"

    const/16 v2, 0x1c

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1205
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "message_pending/#"

    const/16 v2, 0x1d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1208
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "icc"

    const/16 v2, 0x16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1209
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "icc/#"

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1211
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sim"

    const/16 v2, 0x16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1212
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sim/#"

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1214
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "snippet"

    const-string v2, "sms.body AS snippet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "thread_id"

    const-string v2, "sms.thread_id AS thread_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "msg_count"

    const-string v2, "groups.msg_count AS msg_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "delta"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
    .locals 2
    .parameter "qb"
    .parameter "type"

    .prologue
    .line 401
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 403
    if-eqz p2, :cond_0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 406
    :cond_0
    return-void
.end method

.method private constructQueryForUndelivered(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 1
    .parameter "qb"

    .prologue
    .line 409
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 411
    const-string v0, "(type=4 OR type=5 OR type=6)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 414
    return-void
.end method

.method private convertIccToSms(Landroid/telephony/SmsMessage;)Ljava/util/ArrayList;
    .locals 5
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsMessage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v0, result:Ljava/util/ArrayList;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 315
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isStatusReportMessage()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    return-object v0

    .line 319
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayRecipientAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private deleteMessageFromIcc(Ljava/lang/String;)I
    .locals 7
    .parameter "messageIndexString"

    .prologue
    const/4 v6, 0x0

    .line 968
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 971
    .local v2, smsManager:Landroid/telephony/SmsManager;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 978
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 980
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 981
    return v3

    .line 971
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 974
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 975
    .local v1, exception:Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad SMS ICC ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    .end local v1           #exception:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 980
    .restart local v0       #cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 981
    throw v3
.end method

.method private getAllMessagesFromIcc()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 382
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 383
    .local v5, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v5}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v3

    .line 384
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v4, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 387
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SmsMessage;

    .line 388
    .local v2, message:Landroid/telephony/SmsMessage;
    if-eqz v2, :cond_0

    .line 389
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/SmsProvider;->convertIccToSms(Landroid/telephony/SmsMessage;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v2           #message:Landroid/telephony/SmsMessage;
    :cond_1
    new-instance v6, Lcom/android/common/ArrayListCursor;

    sget-object v7, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Lcom/android/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, v6}, Lcom/android/providers/telephony/SmsProvider;->withIccNotificationUri(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method private getSingleMessageFromIcc(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "messageIndexString"

    .prologue
    .line 359
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 360
    .local v2, messageIndex:I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 361
    .local v5, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v5}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v3

    .line 362
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v4, singleRow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SmsMessage;

    .line 365
    .local v1, message:Landroid/telephony/SmsMessage;
    if-nez v1, :cond_0

    .line 366
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message not retrieved. ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v1           #message:Landroid/telephony/SmsMessage;
    .end local v2           #messageIndex:I
    .end local v3           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    .end local v4           #singleRow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .end local v5           #smsManager:Landroid/telephony/SmsManager;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 373
    .local v0, exception:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad SMS ICC ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 369
    .end local v0           #exception:Ljava/lang/NumberFormatException;
    .restart local v1       #message:Landroid/telephony/SmsMessage;
    .restart local v2       #messageIndex:I
    .restart local v3       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    .restart local v4       #singleRow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .restart local v5       #smsManager:Landroid/telephony/SmsManager;
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/SmsProvider;->convertIccToSms(Landroid/telephony/SmsMessage;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v6, Lcom/android/common/ArrayListCursor;

    sget-object v7, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Lcom/android/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, v6}, Lcom/android/providers/telephony/SmsProvider;->withIccNotificationUri(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    return-object v6
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1121
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1122
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1123
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1124
    const-string v1, "content://mms-sms/conversations/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1125
    return-void
.end method

.method private queryRelatedThreadIdOfSms(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;
    .locals 6
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v5, ")"

    .line 810
    if-nez p2, :cond_0

    .line 811
    const-string p2, ""

    .line 816
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 817
    .local v2, thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p1, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 820
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 821
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 822
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 813
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #query:Ljava/lang/String;
    .end local v2           #thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHERE ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 824
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #query:Ljava/lang/String;
    .restart local v2       #thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 827
    :cond_2
    return-object v2
.end method

.method private withIccNotificationUri(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 397
    return-object p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 837
    sget-object v16, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 838
    .local v11, match:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 842
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v16, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v16, :cond_0

    .line 843
    const-string v16, "SmsProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "delete start, url="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " match="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    const/4 v7, 0x0

    .line 849
    .local v7, deletedSmsList:Ljava/util/ArrayList;
    sparse-switch v11, :sswitch_data_0

    .line 933
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Unknown URL"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 853
    :sswitch_0
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/telephony/SmsProvider;->queryRelatedThreadIdOfSms(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v15

    .line 855
    .local v15, thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object v0, v6

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->getDeletedSmsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 860
    const-string v16, "sms"

    if-nez p2, :cond_6

    const-string v17, "1"

    :goto_0
    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 861
    .local v5, count:I
    if-eqz v5, :cond_1

    .line 862
    invoke-static {v6, v15}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    .line 936
    .end local v15           #thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local p3
    :cond_1
    :goto_1
    if-lez v5, :cond_4

    .line 939
    if-eqz v7, :cond_3

    .line 940
    new-instance v10, Landroid/content/Intent;

    const-string v16, "com.motorola.android.intent.action.SMS_DELETED"

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 941
    .local v10, intent:Landroid/content/Intent;
    const-string v16, "deleted_sms_list"

    move-object v0, v10

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 942
    sget-boolean v16, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v16, :cond_2

    .line 943
    const-string v16, "SmsProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Broadcasting intent: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 949
    .end local v10           #intent:Landroid/content/Intent;
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 954
    :cond_4
    sget-boolean v16, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v16, :cond_5

    .line 955
    const-string v16, "SmsProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "delete end, url="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " match="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move/from16 v16, v5

    .line 960
    .end local v5           #count:I
    :goto_2
    return v16

    .restart local v15       #thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local p3
    :cond_6
    move-object/from16 v17, p2

    .line 860
    goto/16 :goto_0

    .line 868
    .end local v15           #thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :sswitch_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 870
    .local v13, message_id:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "_id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->getDeletedSmsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 872
    invoke-static {v6, v13}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteOneSms(Landroid/database/sqlite/SQLiteDatabase;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .restart local v5       #count:I
    goto/16 :goto_1

    .line 873
    .end local v5           #count:I
    .end local v13           #message_id:I
    :catch_0
    move-exception v16

    move-object/from16 v8, v16

    .line 874
    .local v8, e:Ljava/lang/Exception;
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bad message id: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 883
    .end local v8           #e:Ljava/lang/Exception;
    .restart local p0
    .restart local p3
    :sswitch_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 891
    .local v14, threadID:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "thread_id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 893
    move-object v0, v6

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->getDeletedSmsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 895
    const-string v16, "sms"

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 897
    .restart local v5       #count:I
    if-eqz v5, :cond_1

    .line 898
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object v0, v6

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto/16 :goto_1

    .line 884
    .end local v5           #count:I
    .end local v14           #threadID:I
    :catch_1
    move-exception v16

    move-object/from16 v9, v16

    .line 885
    .local v9, ex:Ljava/lang/Exception;
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bad conversation thread id: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 904
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local p0
    :sswitch_3
    const-string v16, "raw"

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 905
    .restart local v5       #count:I
    goto/16 :goto_1

    .line 908
    .end local v5           #count:I
    :sswitch_4
    const-string v16, "sr_pending"

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 909
    .restart local v5       #count:I
    goto/16 :goto_1

    .line 915
    .end local v5           #count:I
    :sswitch_5
    const-string v16, "message_pending"

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 916
    .restart local v5       #count:I
    goto/16 :goto_1

    .line 919
    .end local v5           #count:I
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 920
    .local v4, ID:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "_id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 921
    const-string v16, "message_pending"

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 922
    .restart local v5       #count:I
    goto/16 :goto_1

    .line 928
    .end local v4           #ID:I
    .end local v5           #count:I
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 930
    .local v12, messageIndexString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->deleteMessageFromIcc(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_2

    .line 849
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xb -> :sswitch_2
        0xf -> :sswitch_3
        0x15 -> :sswitch_4
        0x17 -> :sswitch_7
        0x1c -> :sswitch_5
        0x1d -> :sswitch_6
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    const-string v4, "vnd.android.cursor.item/sms"

    const-string v3, "vnd.android.cursor.dir/sms"

    .line 418
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 436
    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .line 420
    .restart local p0
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/sms"

    move-object v1, v3

    goto :goto_0

    .line 423
    :pswitch_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 424
    const-string v1, "vnd.android.cursor.item/sms"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    .line 425
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 426
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v1, "vnd.android.cursor.dir/sms"

    move-object v1, v3

    goto :goto_0

    .line 430
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .restart local p0
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v1, "conversations"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    const-string v1, "vnd.android.cursor.item/sms-chat"

    goto :goto_0

    .line 433
    :cond_0
    const-string v1, "vnd.android.cursor.item/sms"

    move-object v1, v4

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 40
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 446
    const/16 v36, 0x0

    .line 451
    .local v36, type:I
    sget-boolean v4, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 452
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert begin - url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v24

    .line 459
    .local v24, match:I
    const-string v32, "sms"

    .line 461
    .local v32, table:Ljava/lang/String;
    const/16 v23, 0x0

    .line 463
    .local v23, isICC:Z
    packed-switch v24, :pswitch_data_0

    .line 529
    :pswitch_0
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v4, 0x0

    .line 805
    :goto_0
    return-object v4

    .line 465
    :pswitch_1
    const-string v4, "type"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v37

    .line 466
    .local v37, typeObj:Ljava/lang/Integer;
    if-eqz v37, :cond_1

    .line 467
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 534
    .end local v37           #typeObj:Ljava/lang/Integer;
    :goto_1
    if-eqz v23, :cond_7

    .line 536
    const/4 v14, 0x0

    .line 537
    .local v14, bSuccess:Z
    const-string v4, "type"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 538
    .local v29, smsType:I
    const/4 v4, 0x1

    move/from16 v0, v29

    move v1, v4

    if-ne v0, v1, :cond_4

    .line 540
    new-instance v35, Landroid/text/format/Time;

    invoke-direct/range {v35 .. v35}, Landroid/text/format/Time;-><init>()V

    .line 541
    .local v35, time:Landroid/text/format/Time;
    const-string v4, "date"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v35

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 542
    const-string v4, "service_center"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "body"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v26

    .line 547
    .local v26, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-nez v26, :cond_2

    .line 549
    const-string v4, "SmsProvider"

    const-string v5, "insert(Sms.MESSAGE_TYPE_INBOX). pdu is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v4, 0x0

    goto :goto_0

    .line 470
    .end local v14           #bSuccess:Z
    .end local v26           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .end local v29           #smsType:I
    .end local v35           #time:Landroid/text/format/Time;
    .restart local v37       #typeObj:Ljava/lang/Integer;
    :cond_1
    const/16 v36, 0x1

    .line 472
    goto :goto_1

    .line 475
    .end local v37           #typeObj:Ljava/lang/Integer;
    :pswitch_2
    const/16 v36, 0x1

    .line 476
    goto :goto_1

    .line 479
    :pswitch_3
    const/16 v36, 0x5

    .line 480
    goto :goto_1

    .line 483
    :pswitch_4
    const/16 v36, 0x6

    .line 484
    goto :goto_1

    .line 487
    :pswitch_5
    const/16 v36, 0x2

    .line 488
    goto :goto_1

    .line 491
    :pswitch_6
    const/16 v36, 0x3

    .line 492
    goto :goto_1

    .line 495
    :pswitch_7
    const/16 v36, 0x4

    .line 496
    goto :goto_1

    .line 499
    :pswitch_8
    const-string v32, "raw"

    .line 500
    goto :goto_1

    .line 503
    :pswitch_9
    const-string v32, "sr_pending"

    .line 504
    goto :goto_1

    .line 509
    :pswitch_a
    const-string v32, "message_pending"

    .line 510
    goto :goto_1

    .line 515
    :pswitch_b
    const-string v32, "attachments"

    .line 516
    goto :goto_1

    .line 519
    :pswitch_c
    const-string v32, "canonical_addresses"

    .line 520
    goto :goto_1

    .line 524
    :pswitch_d
    const/16 v23, 0x1

    .line 525
    goto/16 :goto_1

    .line 552
    .restart local v14       #bSuccess:Z
    .restart local v26       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .restart local v29       #smsType:I
    .restart local v35       #time:Landroid/text/format/Time;
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedMessage:[B

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v14

    .line 571
    .end local v26           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .end local v35           #time:Landroid/text/format/Time;
    :cond_3
    :goto_2
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bSuccess = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    if-eqz v14, :cond_6

    .line 575
    const-string v4, "content://sms/icc/0"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    .line 576
    .local v38, uriSim:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v38

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v4, v38

    .line 577
    goto/16 :goto_0

    .line 554
    .end local v38           #uriSim:Landroid/net/Uri;
    :cond_4
    const/4 v4, 0x2

    move/from16 v0, v29

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 556
    const-string v4, "service_center"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "body"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v26

    .line 561
    .local v26, pdu:Landroid/telephony/SmsMessage$SubmitPdu;
    if-nez v26, :cond_5

    .line 563
    const-string v4, "SmsProvider"

    const-string v5, "insert(Sms.MESSAGE_TYPE_SENT). pdu is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 566
    :cond_5
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v6, v0

    const/4 v7, 0x5

    invoke-virtual {v4, v5, v6, v7}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v14

    goto :goto_2

    .line 581
    .end local v26           #pdu:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 586
    .end local v14           #bSuccess:Z
    .end local v29           #smsType:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    .line 588
    .local v18, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "sms"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 589
    const/4 v11, 0x0

    .line 590
    .local v11, addDate:Z
    const/4 v12, 0x0

    .line 593
    .local v12, addType:Z
    const/4 v10, 0x0

    .line 598
    .local v10, addCallback:Z
    if-nez p2, :cond_1b

    .line 599
    new-instance v39, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v39

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 600
    .local v39, values:Landroid/content/ContentValues;
    const/4 v11, 0x1

    .line 601
    const/4 v12, 0x1

    .line 604
    const/4 v10, 0x1

    .line 627
    :cond_8
    :goto_3
    if-eqz v11, :cond_9

    .line 628
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v39

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 631
    :cond_9
    if-eqz v12, :cond_a

    if-eqz v36, :cond_a

    .line 632
    const-string v4, "type"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    :cond_a
    const-string v4, "thread_id"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v34

    .line 637
    .local v34, threadId:Ljava/lang/Long;
    const-string v4, "address"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 639
    .local v13, address:Ljava/lang/String;
    if-eqz v34, :cond_b

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_c

    :cond_b
    if-eqz v13, :cond_c

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v13}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    .line 643
    const-string v4, "thread_id"

    move-object/from16 v0, v39

    move-object v1, v4

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 653
    :cond_c
    const-string v4, "type"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    .line 656
    sget-boolean v4, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v4, :cond_d

    .line 657
    const-string v4, "SmsProvider"

    const-string v5, "insert mid, replacing draft thread"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_d
    const-string v4, "sms"

    const-string v5, "thread_id=? AND type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "thread_id"

    move-object/from16 v0, v39

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 668
    :cond_e
    if-eqz v10, :cond_11

    if-eqz v34, :cond_f

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_11

    .line 669
    :cond_f
    const-string v4, "callback_number"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 670
    .local v15, callbackAddress:Ljava/lang/String;
    if-eqz v15, :cond_11

    .line 672
    sget-boolean v4, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v4, :cond_10

    .line 673
    const-string v4, "SmsProvider"

    const-string v5, "insert mid, getOrCreateThreadId"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v15}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    .line 677
    const-string v4, "thread_id"

    move-object/from16 v0, v39

    move-object v1, v4

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 683
    .end local v15           #callbackAddress:Ljava/lang/String;
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, v36

    move v1, v4

    if-ne v0, v1, :cond_1f

    .line 685
    const-string v4, "person"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 686
    const/16 v16, 0x0

    .line 687
    .local v16, cursor:Landroid/database/Cursor;
    sget-object v4, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {v13}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 690
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/providers/telephony/SmsProvider;->CONTACT_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 695
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 696
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 697
    .local v20, id:Ljava/lang/Long;
    const-string v4, "person"

    move-object/from16 v0, v39

    move-object v1, v4

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v20           #id:Ljava/lang/Long;
    :cond_12
    if-eqz v16, :cond_13

    .line 703
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 725
    .end local v5           #uri:Landroid/net/Uri;
    .end local v10           #addCallback:Z
    .end local v11           #addDate:Z
    .end local v12           #addType:Z
    .end local v13           #address:Ljava/lang/String;
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v34           #threadId:Ljava/lang/Long;
    :cond_13
    :goto_4
    :try_start_1
    sget-boolean v4, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v4, :cond_14

    .line 726
    const-string v4, "SmsProvider"

    const-string v5, "insert mid, insertOrThrow"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_14
    const-string v4, "sms"

    move-object v0, v4

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 732
    if-eqz p2, :cond_22

    const-string v4, "sort_index"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 733
    const-string v4, "sort_index"

    const-string v5, "sort_index"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 740
    :cond_15
    :goto_5
    const-string v4, "body"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    move-object v2, v4

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    .line 745
    .local v27, rowID:J
    const-string v4, "sms"

    move-object/from16 v0, v32

    move-object v1, v4

    if-ne v0, v1, :cond_16

    .line 749
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 750
    .local v17, cv:Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 751
    const-string v4, "index_text"

    const-string v5, "body"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v4, "source_id"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 753
    const-string v4, "table_to_use"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    const-string v4, "words"

    const-string v5, "index_text"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 757
    .end local v17           #cv:Landroid/content/ContentValues;
    :cond_16
    const-wide/16 v6, 0x0

    cmp-long v4, v27, v6

    if-lez v4, :cond_23

    .line 758
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 760
    .restart local v5       #uri:Landroid/net/Uri;
    const-string v4, "SmsProvider"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 761
    const-string v4, "SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " succeeded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_17
    const-string v4, "sms"

    move-object v0, v4

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_19

    .line 767
    new-instance v21, Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    move v1, v4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 768
    .local v21, insertedSmsList:Ljava/util/ArrayList;
    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    .line 769
    .local v25, msg:Landroid/os/Bundle;
    const-string v4, "_id"

    move-object/from16 v0, v25

    move-object v1, v4

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 770
    const-string v4, "thread_id"

    const-string v6, "thread_id"

    move-object/from16 v0, v39

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v25

    move-object v1, v4

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 771
    const-string v4, "type"

    move-object/from16 v0, v25

    move-object v1, v4

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 772
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    new-instance v22, Landroid/content/Intent;

    const-string v4, "com.motorola.android.intent.action.SMS_INSERTED"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .local v22, intent:Landroid/content/Intent;
    const-string v4, "inserted_sms_list"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 775
    sget-boolean v4, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v4, :cond_18

    .line 776
    const-string v4, "SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasting intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 783
    .end local v21           #insertedSmsList:Ljava/util/ArrayList;
    .end local v22           #intent:Landroid/content/Intent;
    .end local v25           #msg:Landroid/os/Bundle;
    :cond_19
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 786
    sget-boolean v4, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v4, :cond_1a

    .line 787
    const-string v4, "SmsProvider"

    const-string v6, "insert end"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1a
    move-object v4, v5

    .line 791
    goto/16 :goto_0

    .line 608
    .end local v5           #uri:Landroid/net/Uri;
    .end local v27           #rowID:J
    .end local v39           #values:Landroid/content/ContentValues;
    .restart local v10       #addCallback:Z
    .restart local v11       #addDate:Z
    .restart local v12       #addType:Z
    :cond_1b
    new-instance v39, Landroid/content/ContentValues;

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 610
    .restart local v39       #values:Landroid/content/ContentValues;
    const-string v4, "date"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 611
    const/4 v11, 0x1

    .line 614
    :cond_1c
    const-string v4, "type"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 615
    const/4 v12, 0x1

    .line 620
    :cond_1d
    const-string v4, "callback_number"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 621
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 699
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v13       #address:Ljava/lang/String;
    .restart local v16       #cursor:Landroid/database/Cursor;
    .restart local v34       #threadId:Ljava/lang/Long;
    :catch_0
    move-exception v4

    move-object/from16 v19, v4

    .line 700
    .local v19, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert: query contact uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #uri:Landroid/net/Uri;
    const-string v6, " caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 702
    if-eqz v16, :cond_13

    .line 703
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 702
    .end local v19           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_1e

    .line 703
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1e
    throw v4

    .line 709
    .end local v16           #cursor:Landroid/database/Cursor;
    :cond_1f
    const-string v4, "read"

    sget-object v5, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    move-object/from16 v0, v39

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 712
    .end local v10           #addCallback:Z
    .end local v11           #addDate:Z
    .end local v12           #addType:Z
    .end local v13           #address:Ljava/lang/String;
    .end local v34           #threadId:Ljava/lang/Long;
    .end local v39           #values:Landroid/content/ContentValues;
    :cond_20
    if-nez p2, :cond_21

    .line 713
    new-instance v39, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v39

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v39       #values:Landroid/content/ContentValues;
    goto/16 :goto_4

    .line 715
    .end local v39           #values:Landroid/content/ContentValues;
    :cond_21
    move-object/from16 v39, p2

    .restart local v39       #values:Landroid/content/ContentValues;
    goto/16 :goto_4

    .line 735
    :cond_22
    :try_start_3
    const-string v4, "sort_index"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    .line 795
    :catch_1
    move-exception v4

    move-object/from16 v31, v4

    .line 796
    .local v31, sqlfullex:Landroid/database/sqlite/SQLiteFullException;
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmsProvider.insert: failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v33, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.PHONE_SMS_FULL"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    .local v33, theintent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 805
    .end local v31           #sqlfullex:Landroid/database/sqlite/SQLiteFullException;
    .end local v33           #theintent:Landroid/content/Intent;
    :goto_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 793
    .restart local v27       #rowID:J
    :cond_23
    :try_start_4
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert: failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v39 .. v39}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 800
    .end local v27           #rowID:J
    :catch_2
    move-exception v4

    move-object/from16 v30, v4

    .line 801
    .local v30, sqlex:Landroid/database/SQLException;
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmsProvider.insert: failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_d
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 126
    iget-object v2, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 128
    sget-boolean v2, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 129
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query begin - uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 136
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 137
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 264
    :pswitch_0
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v2, 0x0

    .line 299
    .end local p0
    :goto_0
    return-object v2

    .line 139
    .restart local p0
    :pswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    .line 268
    :cond_1
    :goto_1
    const/4 v7, 0x0

    .line 270
    .local v7, orderBy:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 271
    move-object/from16 v7, p5

    .line 276
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 280
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v2, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 281
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query mid - url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 290
    .local v11, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    invoke-interface {v11, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 294
    sget-boolean v2, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 295
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query end - url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v2, v11

    .line 299
    goto :goto_0

    .line 143
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v11           #ret:Landroid/database/Cursor;
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForUndelivered(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto :goto_1

    .line 147
    :pswitch_3
    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 151
    :pswitch_4
    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 155
    :pswitch_5
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 159
    :pswitch_6
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 163
    :pswitch_7
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 167
    :pswitch_8
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto/16 :goto_1

    .line 171
    :pswitch_9
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 180
    :pswitch_a
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 188
    :pswitch_b
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 189
    .local v12, threadID:I
    const-string v2, "SmsProvider"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query conversations: threadID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_5
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 193
    .end local v12           #threadID:I
    :catch_0
    move-exception v2

    move-object v8, v2

    .line 194
    .local v8, ex:Ljava/lang/Exception;
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad conversation thread id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 205
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local p0
    :pswitch_c
    const-string v2, "sms, (SELECT thread_id AS group_thread_id, MAX(date)AS group_date,COUNT(*) AS msg_count FROM sms GROUP BY thread_id) AS groups"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 207
    const-string v2, "sms.thread_id = groups.group_thread_id AND sms.date =groups.group_date"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 209
    sget-object v2, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 213
    :pswitch_d
    const-string v2, "raw"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 217
    :pswitch_e
    const-string v2, "sr_pending"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 223
    :pswitch_f
    const-string v2, "message_pending"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 227
    :pswitch_10
    const-string v2, "message_pending"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 234
    :pswitch_11
    const-string v2, "attachments"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 238
    :pswitch_12
    const-string v2, "attachments"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(sms_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 244
    :pswitch_13
    const-string v2, "canonical_addresses"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 245
    if-nez p2, :cond_1

    .line 246
    sget-object p2, Lcom/android/providers/telephony/SmsProvider;->sIDProjection:[Ljava/lang/String;

    goto/16 :goto_1

    .line 251
    :pswitch_14
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 256
    :pswitch_15
    invoke-direct {p0}, Lcom/android/providers/telephony/SmsProvider;->getAllMessagesFromIcc()Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_0

    .line 259
    :pswitch_16
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 261
    .local v10, messageIndexString:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/providers/telephony/SmsProvider;->getSingleMessageFromIcc(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_0

    .line 272
    .end local v10           #messageIndexString:Ljava/lang/String;
    .restart local v7       #orderBy:Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    const-string v7, "date DESC"

    goto/16 :goto_2

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_3
        :pswitch_a
        :pswitch_4
        :pswitch_2
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 989
    const/4 v5, 0x0

    .line 990
    .local v5, count:I
    const-string v12, "sms"

    .line 991
    .local v12, table:Ljava/lang/String;
    const/4 v8, 0x0

    .line 992
    .local v8, extraWhere:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 996
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v15, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 997
    .local v11, match:I
    sget-boolean v15, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v15, :cond_0

    .line 998
    const-string v15, "SmsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "update start, url="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " match="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_0
    sget-object v15, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 1075
    :pswitch_0
    new-instance v15, Ljava/lang/UnsupportedOperationException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "URI "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " not supported"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1005
    :pswitch_1
    const-string v12, "raw"

    .line 1079
    .end local v5           #count:I
    :goto_0
    :pswitch_2
    move-object/from16 v0, p3

    move-object v1, v8

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1083
    const/4 v14, 0x0

    .line 1084
    .local v14, updatedSmsList:Ljava/util/ArrayList;
    const-string v15, "sms"

    if-ne v12, v15, :cond_1

    .line 1085
    move-object v0, v6

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->getUpdatedSmsList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1090
    :cond_1
    move-object v0, v6

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1092
    .restart local v5       #count:I
    if-lez v5, :cond_5

    .line 1093
    const-string v15, "SmsProvider"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1094
    const-string v15, "SmsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "update "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " succeeded"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_2
    if-eqz v14, :cond_4

    .line 1099
    new-instance v10, Landroid/content/Intent;

    const-string v15, "com.motorola.android.intent.action.SMS_UPDATED"

    invoke-direct {v10, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v10, intent:Landroid/content/Intent;
    const-string v15, "updated_sms_list"

    invoke-virtual {v10, v15, v14}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1101
    sget-boolean v15, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v15, :cond_3

    .line 1102
    const-string v15, "SmsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Broadcasting intent: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1108
    .end local v10           #intent:Landroid/content/Intent;
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 1112
    :cond_5
    sget-boolean v15, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v15, :cond_6

    .line 1113
    const-string v15, "SmsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "update end, url="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " match="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v15, v5

    .line 1117
    .end local v14           #updatedSmsList:Ljava/util/ArrayList;
    :goto_1
    return v15

    .line 1009
    :pswitch_3
    const-string v12, "sr_pending"

    .line 1010
    goto/16 :goto_0

    .line 1015
    :pswitch_4
    const-string v12, "message_pending"

    .line 1016
    goto/16 :goto_0

    .line 1019
    :pswitch_5
    const-string v12, "message_pending"

    .line 1020
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #count:I
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1021
    goto/16 :goto_0

    .line 1036
    .restart local v5       #count:I
    :pswitch_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #count:I
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1037
    goto/16 :goto_0

    .line 1044
    .restart local v5       #count:I
    :pswitch_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #count:I
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1045
    goto/16 :goto_0

    .line 1048
    .restart local v5       #count:I
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1053
    .local v13, threadId:Ljava/lang/String;
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1054
    .local v9, id:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v15

    if-nez v15, :cond_7

    .line 1055
    int-to-long v15, v9

    move-object v0, v6

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1056
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 1057
    const-string v15, "SmsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Thread "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " updated"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1061
    .end local v9           #id:I
    :catch_0
    move-exception v15

    move-object v7, v15

    .line 1062
    .local v7, ex:Ljava/lang/Exception;
    const-string v15, "SmsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Bad conversation thread id: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1066
    .end local v7           #ex:Ljava/lang/Exception;
    .restart local v9       #id:I
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "thread_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1067
    goto/16 :goto_0

    .line 1071
    .end local v9           #id:I
    .end local v13           #threadId:Ljava/lang/String;
    :pswitch_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #count:I
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1072
    goto/16 :goto_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.class public Lcom/android/providers/telephony/MmsSmsProvider;
.super Landroid/content/ContentProvider;
.source "MmsSmsProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "mms-sms"

.field private static final CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String; = null

.field private static final CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "MmsSmsProvider"

.field private static final MMS_COLUMNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MMS_CONVERSATION_CONSTRAINT:Ljava/lang/String; = "(msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

.field private static final MMS_ONLY_COLUMNS:[Ljava/lang/String; = null

.field private static final MMS_SMS_COLUMNS:[Ljava/lang/String; = null

.field private static final NO_DELETES_INSERTS_OR_UPDATES:Ljava/lang/String; = "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

.field private static final SMS_COLUMNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_CONVERSATION_CONSTRAINT:Ljava/lang/String; = "(type != 3)"

.field private static final SMS_ONLY_COLUMNS:[Ljava/lang/String; = null

.field private static final TABLE_CANONICAL_ADDRESSES:Ljava/lang/String; = "canonical_addresses"

.field public static final TABLE_PENDING_MSG:Ljava/lang/String; = "pending_msgs"

.field private static final THREADS_COLUMNS:[Ljava/lang/String; = null

.field private static final THREAD_QUERY:Ljava/lang/String; = "SELECT _id FROM threads WHERE recipient_ids=?"

.field private static final THREAD_QUERY_BROWSER_MSG:Ljava/lang/String; = "SELECT _id from threads WHERE message_count = 0 AND recipient_ids = ?"

.field private static final UNION_COLUMNS:[Ljava/lang/String; = null

.field private static final URI_ALL_MESSAGES:I = 0x13

.field private static final URI_CANONICAL_ADDRESS:I = 0x5

.field private static final URI_CANONICAL_ADDRESSES:I = 0xd

.field private static final URI_COMPLETE_CONVERSATIONS:I = 0x7

.field private static final URI_CONVERSATIONS:I = 0x0

.field private static final URI_CONVERSATIONS_MESSAGES:I = 0x1

.field private static final URI_CONVERSATIONS_MESSAGES_SORTED:I = 0x12

.field private static final URI_CONVERSATIONS_RECIPIENTS:I = 0x2

.field private static final URI_CONVERSATIONS_SUBJECT:I = 0x9

.field private static final URI_DRAFT:I = 0xc

.field private static final URI_FIRST_LOCKED_MESSAGE_ALL:I = 0x10

.field private static final URI_FIRST_LOCKED_MESSAGE_BY_THREAD_ID:I = 0x11

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final URI_MESSAGES_BY_PHONE:I = 0x3

.field private static final URI_NOTIFICATIONS:I = 0xa

.field private static final URI_OBSOLETE_THREADS:I = 0xb

.field private static final URI_PENDING_MSG:I = 0x6

.field private static final URI_SEARCH:I = 0xe

.field private static final URI_SEARCH_SUGGEST:I = 0xf

.field private static final URI_THREAD_ID:I = 0x4

.field private static final URI_UNDELIVERED_MSG:I = 0x8

.field private static final VND_ANDROID_DIR_MMS_SMS:Ljava/lang/String; = "vnd.android-dir/mms-sms"


# instance fields
.field private mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

.field private mUseStrictPhoneNumberComparation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "mms-sms"

    .line 88
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 93
    const-string v0, "1"

    const-string v1, "debug.mot.extwmlog"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    .line 143
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "read"

    aput-object v1, v0, v6

    const-string v1, "thread_id"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sort_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    .line 152
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ct_cls"

    aput-object v1, v0, v4

    const-string v1, "ct_l"

    aput-object v1, v0, v5

    const-string v1, "ct_t"

    aput-object v1, v0, v6

    const-string v1, "d_rpt"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "resp_st"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "v"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 163
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "body"

    aput-object v1, v0, v5

    const-string v1, "person"

    aput-object v1, v0, v6

    const-string v1, "reply_path_present"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "stack_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "failure_cause"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 175
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "recipient_ids"

    aput-object v1, v0, v6

    const-string v1, "message_count"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->THREADS_COLUMNS:[Ljava/lang/String;

    .line 182
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

    .line 185
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

    .line 191
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    .line 200
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    .line 205
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->ID_PROJECTION:[Ljava/lang/String;

    .line 207
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 221
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "complete-conversations"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/#"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "sortedConversations/#"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/#/recipients"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/#/subject"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/obsolete"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "messages/byphone/*"

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "threadID"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 257
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "canonical-address/#"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "canonical-addresses"

    const/16 v2, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "search"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "searchSuggest"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "pending"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "undelivered"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "notifications"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "draft"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "locked"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 287
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "locked/#"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "all-messages"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->initializeColumnSets()V

    .line 294
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1363
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1365
    .local v5, mmsProjection:[Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1366
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v15, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v15}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1368
    .local v15, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1369
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1370
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1371
    const-string v6, "sms"

    invoke-virtual {v15, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1373
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1374
    .local v18, smsColumns:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1375
    .local p0, mmsColumns:[Ljava/lang/String;
    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    .end local v5           #mmsProjection:[Ljava/lang/String;
    move-result-object v6

    .line 1376
    .local v6, innerMmsProjection:[Ljava/lang/String;
    const/16 p0, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    .end local p0           #mmsColumns:[Ljava/lang/String;
    move-result-object p0

    .line 1378
    .local p0, innerSmsProjection:[Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1379
    .local v7, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "pdu._id"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1380
    const-string v5, "err_type"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1382
    const-string v5, "msg_box != 3"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1384
    .local v10, mmsSelection:Ljava/lang/String;
    const-string v5, "transport_type"

    const/4 v8, 0x0

    const-string v9, "mms"

    const-string v11, "(msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    invoke-static {v10, v11}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .end local v10           #mmsSelection:Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p2

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1389
    .local v4, mmsSubQuery:Ljava/lang/String;
    const-string v9, "transport_type"

    sget-object v11, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v12, 0x0

    const-string v13, "sms"

    const-string v5, "(type != 3)"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v15

    move-object/from16 v10, p0

    move-object/from16 v15, p2

    invoke-virtual/range {v8 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v15           #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object p0

    .line 1393
    .local p0, smsSubQuery:Ljava/lang/String;
    new-instance p1, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local p1
    invoke-direct/range {p1 .. p1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1395
    .local p1, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 p2, 0x1

    invoke-virtual/range {p1 .. p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1397
    .end local p2
    const/16 p2, 0x2

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p2, v0

    const/4 v5, 0x0

    aput-object p0, p2, v5

    const/16 p0, 0x1

    aput-object v4, p2, p0

    .end local p0           #smsSubQuery:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v4           #mmsSubQuery:Ljava/lang/String;
    move-result-object p0

    .line 1401
    .local p0, unionQuery:Ljava/lang/String;
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1403
    .local v8, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "("

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #unionQuery:Ljava/lang/String;
    const-string p1, ")"

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1405
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, v18

    move-object/from16 v14, p3

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildConversationQuerySorted([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1415
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1417
    .local v5, mmsProjection:[Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1418
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v15, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v15}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1420
    .local v15, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1421
    const-string v6, "sms"

    invoke-virtual {v15, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1423
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1424
    .local v18, smsColumns:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1425
    .local p0, mmsColumns:[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithSortIndex([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1426
    .local v6, innerMmsProjection:[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithSortIndex([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1428
    .local p0, innerSmsProjection:[Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    .end local v5           #mmsProjection:[Ljava/lang/String;
    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1429
    .local v7, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "pdu._id"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1430
    const-string v5, "err_type"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1432
    const-string v5, "msg_box != 3"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1434
    .local v10, mmsSelection:Ljava/lang/String;
    const-string v5, "transport_type"

    const/4 v8, 0x0

    const-string v9, "mms"

    const-string v11, "(msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    invoke-static {v10, v11}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .end local v10           #mmsSelection:Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p2

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1439
    .local v4, mmsSubQuery:Ljava/lang/String;
    const-string v9, "transport_type"

    sget-object v11, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v12, 0x0

    const-string v13, "sms"

    const-string v5, "(type != 3)"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v15

    move-object/from16 v10, p0

    move-object/from16 v15, p2

    invoke-virtual/range {v8 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v15           #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object p0

    .line 1443
    .local p0, smsSubQuery:Ljava/lang/String;
    new-instance p1, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local p1
    invoke-direct/range {p1 .. p1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1445
    .local p1, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 p2, 0x1

    invoke-virtual/range {p1 .. p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1447
    .end local p2
    const/16 p2, 0x2

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p2, v0

    const/4 v5, 0x0

    aput-object p0, p2, v5

    const/16 p0, 0x1

    aput-object v4, p2, p0

    .end local p0           #smsSubQuery:Ljava/lang/String;
    const-string p0, "sort_index"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v4           #mmsSubQuery:Ljava/lang/String;
    move-result-object p0

    .line 1450
    .local p0, unionQuery:Ljava/lang/String;
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1452
    .local v8, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "("

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #unionQuery:Ljava/lang/String;
    const-string p1, ")"

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1454
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, v18

    move-object/from16 v14, p3

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "selection1"
    .parameter "selection2"

    .prologue
    .line 869
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 874
    :goto_0
    return-object v0

    .line 871
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 872
    goto :goto_0

    .line 874
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "old"

    .prologue
    .line 1264
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 1265
    .local v1, newProjection:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1266
    aget-object v2, p0, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1267
    const-string v2, "pdu._id"

    aput-object v2, v1, v0

    .line 1265
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1269
    :cond_0
    aget-object v2, p0, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 1272
    :cond_1
    return-object v1
.end method

.method private deleteConversation(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1607
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1609
    .local v2, threadId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1610
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1611
    .local v1, finalSelection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1, p3, p1}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v3

    const-string v4, "sms"

    invoke-virtual {v0, v4, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    return v3
.end method

.method private getAddressIds(Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 650
    .local v4, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    .local v0, address:Ljava/lang/String;
    const-string v5, "insert-address-token"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 652
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getSingleAddressId(Ljava/lang/String;)J

    move-result-wide v2

    .line 653
    .local v2, id:J
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_1

    .line 654
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 656
    :cond_1
    const-string v5, "MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAddressIds: address ID not found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 660
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #id:J
    :cond_2
    return-object v4
.end method

.method private getAllMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 30
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 729
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 730
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v25, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v25 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 732
    .local v25, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 733
    const/4 v5, 0x1

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 734
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " LEFT JOIN threads ON pdu.thread_id = threads._id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " LEFT JOIN (select count(*) AS has_attachment, mid from part where part.ct != \'text/plain\' AND part.ct != \'application/smil\' group by mid ) as attach on  pdu._id=  attach.mid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 737
    const-string v5, "sms LEFT JOIN threads ON sms.thread_id = threads._id"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 740
    new-instance v7, Ljava/util/HashSet;

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 741
    .local v7, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "err_type"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 742
    const-string v5, "recipient_ids"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 743
    new-instance v18, Ljava/util/HashSet;

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 744
    .local v18, columnsInSmsTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "recipient_ids"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 747
    .local v23, smsColumns:[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 748
    .local v20, innerSmsProjection:[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    .line 750
    .local v6, innerMmsProjection:[Ljava/lang/String;
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 751
    .local v21, mmsColumnsConflicts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "_id"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 752
    const-string v5, "date"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 753
    const-string v5, "read"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 754
    new-instance v24, Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 755
    .local v24, smsColumnsConflicts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "type"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 757
    const/4 v5, 0x0

    const-string v8, "0 AS has_attachment"

    aput-object v8, v20, v5

    .line 758
    const/4 v5, 0x0

    const-string v8, "attach.has_attachment AS has_attachment"

    aput-object v8, v6, v5

    .line 759
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 761
    aget-object v5, v23, v19

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 762
    aget-object v5, v23, v19

    const-string v8, "date"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 763
    add-int/lit8 v5, v19, 0x1

    const-string v8, "pdu.date*1000 AS date"

    aput-object v8, v6, v5

    .line 767
    :goto_1
    add-int/lit8 v5, v19, 0x1

    aget-object v5, v6, v5

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    :goto_2
    aget-object v5, v23, v19

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 772
    add-int/lit8 v5, v19, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v23, v19

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v23, v19

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v20, v5

    .line 774
    add-int/lit8 v5, v19, 0x1

    aget-object v5, v20, v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 759
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 765
    :cond_0
    add-int/lit8 v5, v19, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pdu."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v23, v19

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v23, v19

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v5

    goto :goto_1

    .line 769
    :cond_1
    add-int/lit8 v5, v19, 0x1

    aget-object v8, v23, v19

    aput-object v8, v6, v5

    goto :goto_2

    .line 776
    :cond_2
    add-int/lit8 v5, v19, 0x1

    aget-object v8, v23, v19

    aput-object v8, v20, v5

    goto :goto_3

    .line 781
    :cond_3
    const-string v5, "transport_type"

    const/4 v8, 0x0

    const-string v9, "mms"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 784
    .local v22, mmsSubQuery:Ljava/lang/String;
    const-string v9, "transport_type"

    const/4 v12, 0x0

    const-string v13, "sms"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v8, v25

    move-object/from16 v10, v20

    move-object/from16 v11, v18

    invoke-virtual/range {v8 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 787
    .local v26, smsSubQuery:Ljava/lang/String;
    new-instance v29, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v29 .. v29}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 789
    .local v29, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v29

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 791
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v26, v5, v6

    .end local v6           #innerMmsProjection:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v22, v5, v6

    invoke-static/range {p4 .. p4}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v29

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v7           #columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-result-object v28

    .line 795
    .local v28, unionQuery:Ljava/lang/String;
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 796
    .local v8, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 798
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, v23

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 800
    .local v27, sql:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v27

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method private getCompleteConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1091
    invoke-static {p1, p2, p3, p4}, Lcom/android/providers/telephony/MmsSmsProvider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, unionQuery:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "threadIdString"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v6, 0x0

    .line 1240
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1247
    .local v9, extraSelection:Ljava/lang/String;
    invoke-static {p3, v9}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1248
    .local v3, finalSelection:Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1249
    .local v0, queryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {p2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1251
    .local v2, columns:[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1252
    const-string v1, "threads"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1253
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .end local v0           #queryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #finalSelection:Ljava/lang/String;
    .end local v9           #extraSelection:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1241
    :catch_0
    move-exception v8

    .line 1242
    .local v8, exception:Ljava/lang/NumberFormatException;
    const-string v1, "MmsSmsProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 1243
    goto :goto_0
.end method

.method private getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "threadIdString"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1123
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1131
    .local v1, finalSelection:Ljava/lang/String;
    invoke-static {p2, v1, p4, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, unionQuery:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .end local v1           #finalSelection:Ljava/lang/String;
    .end local v2           #unionQuery:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, exception:Ljava/lang/NumberFormatException;
    const-string v3, "MmsSmsProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getConversationMessagesSorted(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "threadIdString"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1147
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1155
    .local v1, finalSelection:Ljava/lang/String;
    invoke-static {p2, v1, p4, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->buildConversationQuerySorted([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1158
    .local v2, unionQuery:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .end local v1           #finalSelection:Ljava/lang/String;
    .end local v2           #unionQuery:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, exception:Ljava/lang/NumberFormatException;
    const-string v3, "MmsSmsProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 996
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 997
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v21, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 999
    .local v21, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "pdu"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1000
    const-string v5, "sms"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1002
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1003
    .local v17, columns:[Ljava/lang/String;
    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/16 v6, 0x3e8

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 1005
    .local v6, innerMmsProjection:[Ljava/lang/String;
    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v18

    .line 1007
    .local v18, innerSmsProjection:[Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "mms"

    const-string v10, "(msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "thread_id"

    const-string v13, "date = MAX(date)"

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1012
    .local v19, mmsSubQuery:Ljava/lang/String;
    const-string v8, "transport_type"

    sget-object v10, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v11, 0x1

    const-string v12, "sms"

    const-string v5, "(type != 3)"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "thread_id"

    const-string v16, "date = MAX(date)"

    move-object/from16 v7, v21

    move-object/from16 v9, v18

    move-object/from16 v14, p3

    invoke-virtual/range {v7 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1017
    .local v22, smsSubQuery:Ljava/lang/String;
    new-instance v24, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v24 .. v24}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1019
    .local v24, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1021
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    .end local v6           #innerMmsProjection:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v22, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1024
    .local v23, unionQuery:Ljava/lang/String;
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1026
    .local v7, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1028
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "tid"

    const-string v12, "normalized_date = MAX(normalized_date)"

    const/4 v14, 0x0

    move-object/from16 v8, v17

    move-object/from16 v13, p4

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1032
    .local v20, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v20

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method static getDeletedSmsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-string v0, "_id"

    .line 1620
    const/4 v10, 0x0

    .line 1621
    .local v10, msgList:Ljava/util/ArrayList;
    const/4 v8, 0x0

    .line 1623
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "sms"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "thread_id"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1625
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1626
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1627
    .end local v10           #msgList:Ljava/util/ArrayList;
    .local v11, msgList:Ljava/util/ArrayList;
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1629
    .local v9, msg:Landroid/os/Bundle;
    const-string v0, "_id"

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1630
    const-string v0, "thread_id"

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1631
    const-string v0, "type"

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1632
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1636
    .end local v9           #msg:Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    move-object v10, v11

    .end local v11           #msgList:Ljava/util/ArrayList;
    .restart local v10       #msgList:Ljava/util/ArrayList;
    :goto_1
    if-eqz v8, :cond_0

    .line 1637
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .end local v10           #msgList:Ljava/util/ArrayList;
    .restart local v11       #msgList:Ljava/util/ArrayList;
    :cond_1
    move-object v10, v11

    .line 1636
    .end local v11           #msgList:Ljava/util/ArrayList;
    .restart local v10       #msgList:Ljava/util/ArrayList;
    :cond_2
    if-eqz v8, :cond_3

    .line 1637
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1640
    :cond_3
    return-object v10

    .line 1636
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private getDraftThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 936
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "thread_id"

    aput-object v7, v6, v5

    .line 937
    .local v6, innerProjection:[Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 938
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 940
    .local v19, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "pdu"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 941
    const-string v5, "sms"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 943
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "mms"

    const-string v10, "msg_box=3"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 948
    .local v17, mmsSubQuery:Ljava/lang/String;
    const-string v8, "transport_type"

    sget-object v10, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v11, 0x1

    const-string v12, "sms"

    const-string v5, "type=3"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v7, v19

    move-object v9, v6

    move-object/from16 v14, p3

    invoke-virtual/range {v7 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 953
    .local v20, smsSubQuery:Ljava/lang/String;
    new-instance v22, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 955
    .local v22, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 957
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v17, v5, v6

    .end local v6           #innerProjection:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v20, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 960
    .local v21, unionQuery:Ljava/lang/String;
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 962
    .local v7, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 964
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move-object/from16 v13, p4

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 967
    .local v18, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method private getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1049
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1050
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1052
    .local v19, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "pdu"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1053
    const-string v5, "sms"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1055
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v5

    .line 1057
    .local v6, idColumn:[Ljava/lang/String;
    const-string v5, "transport_type"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "mms"

    const-string v12, "_id"

    const-string v13, "locked=1"

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1063
    .local v18, mmsSubQuery:Ljava/lang/String;
    const-string v8, "transport_type"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "sms"

    const-string v15, "_id"

    const-string v16, "locked=1"

    move-object/from16 v7, v19

    move-object v9, v6

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v7 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1069
    .local v20, smsSubQuery:Ljava/lang/String;
    new-instance v22, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1071
    .local v22, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1073
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    .end local v6           #idColumn:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v20, v5, v6

    const/4 v6, 0x0

    const-string v7, "1"

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1076
    .local v21, unionQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1078
    .local v17, cursor:Landroid/database/Cursor;
    sget-boolean v5, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1079
    const-string v5, "MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFirstLockedMessage query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const-string v5, "MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_0
    return-object v17
.end method

.method private getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 27
    .parameter "phoneNumber"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1184
    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1185
    .local v21, escapedPhoneNumber:Ljava/lang/String;
    const-string v5, "pdu._id = matching_addresses.address_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1189
    .local v10, finalMmsSelection:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR PHONE_NUMBERS_EQUAL(address, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    move v6, v0

    if-eqz v6, :cond_0

    const-string v6, ", 1))"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1195
    .local v17, finalSmsSelection:Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1196
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v23, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v23 .. v23}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1198
    .local v23, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1199
    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pdu, (SELECT msg_id AS address_id FROM addr WHERE (address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR PHONE_NUMBERS_EQUAL(addr.address, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    move v6, v0

    if-eqz v6, :cond_1

    const-string v6, ", 1))) "

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AS matching_addresses"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1214
    const-string v5, "sms"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1216
    invoke-static/range {p2 .. p2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1217
    .local v6, columns:[Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x0

    const-string v9, "mms"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p4

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1220
    .local v22, mmsSubQuery:Ljava/lang/String;
    const-string v12, "transport_type"

    sget-object v14, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v15, 0x0

    const-string v16, "sms"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, v23

    move-object v13, v6

    move-object/from16 v18, p4

    invoke-virtual/range {v11 .. v20}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1223
    .local v24, smsSubQuery:Ljava/lang/String;
    new-instance v26, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v26 .. v26}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1225
    .local v26, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1227
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    .end local v6           #columns:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v24, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, v26

    move-object v1, v5

    move-object/from16 v2, p5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1230
    .local v25, unionQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v25

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5

    .line 1189
    .end local v4           #mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v17           #finalSmsSelection:Ljava/lang/String;
    .end local v22           #mmsSubQuery:Ljava/lang/String;
    .end local v23           #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v24           #smsSubQuery:Ljava/lang/String;
    .end local v25           #unionQuery:Ljava/lang/String;
    .end local v26           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_0
    const-string v6, ", 0))"

    goto/16 :goto_0

    .line 1204
    .restart local v4       #mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v17       #finalSmsSelection:Ljava/lang/String;
    .restart local v23       #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_1
    const-string v6, ", 0))) "

    goto :goto_1
.end method

.method private getSimpleConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 912
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "threads"

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " date DESC"

    move-object v7, v2

    :goto_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v7, p4

    goto :goto_0
.end method

.method private getSingleAddressId(Ljava/lang/String;)J
    .locals 21
    .parameter "address"

    .prologue
    .line 590
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v14

    .line 592
    .local v14, isEmail:Z
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v15

    .line 593
    .local v15, isPhoneNum:Z
    const-string v4, "sms.mms.mot.addr.case.sensitive"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 594
    .local v13, isCaseSensitive:Z
    if-nez v14, :cond_0

    if-nez v15, :cond_3

    :cond_0
    if-nez v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    .line 596
    .local v16, refinedAddress:Ljava/lang/String;
    :goto_0
    const-string v6, "address=?"

    .line 598
    .local v6, selection:Ljava/lang/String;
    const-wide/16 v17, -0x1

    .line 601
    .local v17, retVal:J
    if-nez v14, :cond_1

    if-nez v15, :cond_4

    .line 603
    :cond_1
    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v16, v7, v4

    .line 610
    .local v7, selectionArgs:[Ljava/lang/String;
    :goto_1
    const/4 v12, 0x0

    .line 613
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 614
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "canonical_addresses"

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 618
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_6

    .line 619
    new-instance v11, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v11, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 620
    .local v11, contentValues:Landroid/content/ContentValues;
    const-string v4, "address"

    move-object v0, v11

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 623
    const-string v4, "canonical_addresses"

    const-string v5, "address"

    invoke-virtual {v3, v4, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v17

    .line 626
    const-string v4, "MmsSmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSingleAddressId: insert new canonical_address for xxxxxx, _id="

    .end local v6           #selection:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    if-eqz v12, :cond_2

    .line 637
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide/from16 v19, v17

    .line 641
    .end local v11           #contentValues:Landroid/content/ContentValues;
    .end local v17           #retVal:J
    .local v19, retVal:J
    :goto_2
    return-wide v19

    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v16           #refinedAddress:Ljava/lang/String;
    .end local v19           #retVal:J
    :cond_3
    move-object/from16 v16, p1

    .line 594
    goto :goto_0

    .line 605
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v16       #refinedAddress:Ljava/lang/String;
    .restart local v17       #retVal:J
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "PHONE_NUMBERS_EQUAL(address, ?, %d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .end local v6           #selection:Ljava/lang/String;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    move v8, v0

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 607
    .restart local v6       #selection:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v16, v7, v4

    const/4 v4, 0x1

    aput-object v16, v7, v4

    .restart local v7       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 605
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 632
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_6
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 633
    const-string v4, "_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v17

    .line 636
    :cond_7
    if-eqz v12, :cond_8

    .line 637
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    move-wide/from16 v19, v17

    .line 641
    .end local v17           #retVal:J
    .restart local v19       #retVal:J
    goto :goto_2

    .line 636
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #selection:Ljava/lang/String;
    .end local v19           #retVal:J
    .restart local v17       #retVal:J
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_9

    .line 637
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v4
.end method

.method private getSortedSet(Ljava/util/Set;)[J
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, numbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    .line 668
    .local v5, size:I
    new-array v4, v5, [J

    .line 669
    .local v4, result:[J
    const/4 v0, 0x0

    .line 671
    .local v0, i:I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 672
    .local v3, number:Ljava/lang/Long;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 675
    .end local v3           #number:Ljava/lang/Long;
    :cond_0
    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 676
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 679
    :cond_1
    return-object v4
.end method

.method private getSpaceSeparatedNumbers([J)Ljava/lang/String;
    .locals 5
    .parameter "numbers"

    .prologue
    .line 687
    array-length v2, p1

    .line 688
    .local v2, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 691
    if-eqz v1, :cond_0

    .line 692
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    :cond_0
    aget-wide v3, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private declared-synchronized getThreadId(Ljava/util/List;)Landroid/database/Cursor;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x1

    const-string v7, "SELECT _id FROM threads WHERE recipient_ids=?"

    const-string v7, "MmsSmsProvider"

    .line 817
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsProvider;->getAddressIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    .line 818
    .local v1, addressIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v5, ""

    .line 821
    .local v5, recipientIds:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 822
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 823
    .local v0, addressId:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 826
    .end local v0           #addressId:Ljava/lang/Long;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getSortedSet(Ljava/util/Set;)[J

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpaceSeparatedNumbers([J)Ljava/lang/String;

    move-result-object v5

    .line 829
    :cond_1
    const-string v7, "MmsSmsProvider"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 830
    const-string v7, "MmsSmsProvider"

    const-string v8, "getThreadId: recipientIds (selectionArgs) =xxxxxxx"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_2
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 835
    .local v6, selectionArgs:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 836
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "SELECT _id FROM threads WHERE recipient_ids=?"

    invoke-virtual {v3, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 838
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_5

    .line 839
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 841
    const-string v7, "MmsSmsProvider"

    const-string v8, "getThreadId: create new thread_id for recipients xxxxxxxx"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v5, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->insertThread(Ljava/lang/String;I)V

    .line 845
    iget-object v7, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 846
    const-string v7, "SELECT _id FROM threads WHERE recipient_ids=?"

    invoke-virtual {v3, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 861
    :cond_3
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-le v7, v10, :cond_4

    .line 862
    const-string v7, "MmsSmsProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getThreadId: why is cursorCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    :cond_4
    monitor-exit p0

    return-object v2

    .line 850
    :cond_5
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v10, :cond_3

    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "Browser Message"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 851
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 852
    const-string v7, "MmsSmsProvider"

    const-string v8, "Creating new threadid for Browser Message always"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v5, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->insertThread(Ljava/lang/String;I)V

    .line 855
    iget-object v7, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 856
    const-string v7, "SELECT _id from threads WHERE message_count = 0 AND recipient_ids = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 817
    .end local v1           #addressIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #recipientIds:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 36
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1278
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 1280
    .local v28, mmsProjection:[Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1281
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v32, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v32 .. v32}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1283
    .local v32, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1284
    const-string v5, "sms"

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1286
    const-string v5, "msg_box = 4"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1288
    .local v10, finalMmsSelection:Ljava/lang/String;
    const-string v5, "(type = 4 OR type = 5 OR type = 6)"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1293
    .local v17, finalSmsSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 1294
    .local v31, smsColumns:[Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1295
    .local v27, mmsColumns:[Ljava/lang/String;
    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 1297
    .local v6, innerMmsProjection:[Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 1300
    .local v26, innerSmsProjection:[Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1301
    .local v7, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "pdu._id"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1302
    const-string v5, "err_type"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1303
    const-string v5, "transport_type"

    const/4 v8, 0x1

    const-string v9, "mms"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1307
    .local v29, mmsSubQuery:Ljava/lang/String;
    const-string v12, "transport_type"

    sget-object v14, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v15, 0x1

    const-string v16, "sms"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, v32

    move-object/from16 v13, v26

    move-object/from16 v18, p3

    invoke-virtual/range {v11 .. v20}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1311
    .local v33, smsSubQuery:Ljava/lang/String;
    new-instance v35, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v35 .. v35}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1313
    .local v35, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v35

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1315
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v33, v5, v6

    .end local v6           #innerMmsProjection:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v29, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v35

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v7           #columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-result-object v34

    .line 1318
    .local v34, unionQuery:Ljava/lang/String;
    new-instance v18, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1320
    .local v18, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1322
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v31

    move-object/from16 v24, p4

    invoke-virtual/range {v18 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1325
    .local v30, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v30

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method static getUpdatedMmsList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "db"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1837
    const/4 v9, 0x0

    .line 1838
    .local v9, msgList:Ljava/util/ArrayList;
    const/4 v8, 0x0

    .line 1840
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "pdu"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "thread_id"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "msg_box"

    aput-object v3, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object p0

    .line 1843
    .end local v8           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_5

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .end local p2
    if-lez p2, :cond_5

    .line 1844
    const/4 p2, 0x0

    .line 1845
    .local p2, msgBox:I
    new-instance p3, Ljava/util/ArrayList;

    .end local p3
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1847
    .end local v9           #msgList:Ljava/util/ArrayList;
    .local p3, msgList:Ljava/util/ArrayList;
    :try_start_2
    const-string v0, "msg_box"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1848
    const-string p2, "msg_box"

    .end local p2           #msgBox:I
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .local p1, msgBox:I
    move p2, p1

    .line 1851
    .end local p1           #msgBox:I
    .restart local p2       #msgBox:I
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1852
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1853
    .local p1, msg:Landroid/os/Bundle;
    const-string v0, "_id"

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1854
    const-string v0, "thread_id"

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1855
    if-lez p2, :cond_1

    .line 1856
    const-string v0, "msg_box"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1857
    const-string v0, "old_msg_box"

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1859
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1863
    .end local p1           #msg:Landroid/os/Bundle;
    .end local p2           #msgBox:I
    :catchall_0
    move-exception p1

    move-object p2, p1

    move-object p1, p3

    .end local p3           #msgList:Ljava/util/ArrayList;
    .local p1, msgList:Ljava/util/ArrayList;
    :goto_1
    if-eqz p0, :cond_2

    .line 1864
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p2

    .end local p1           #msgList:Ljava/util/ArrayList;
    .restart local p2       #msgBox:I
    .restart local p3       #msgList:Ljava/util/ArrayList;
    :cond_3
    move-object p1, p3

    .line 1863
    .end local p2           #msgBox:I
    .end local p3           #msgList:Ljava/util/ArrayList;
    .restart local p1       #msgList:Ljava/util/ArrayList;
    :goto_2
    if-eqz p0, :cond_4

    .line 1864
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1867
    :cond_4
    return-object p1

    .line 1863
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #msgList:Ljava/util/ArrayList;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, values:Landroid/content/ContentValues;
    .local p2, where:Ljava/lang/String;
    .local p3, whereArgs:[Ljava/lang/String;
    :catchall_1
    move-exception p0

    move-object p2, p0

    move-object p1, v9

    .end local v9           #msgList:Ljava/util/ArrayList;
    .local p1, msgList:Ljava/util/ArrayList;
    move-object p0, v8

    .end local v8           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_1

    .end local p2           #where:Ljava/lang/String;
    .end local p3           #whereArgs:[Ljava/lang/String;
    .restart local v9       #msgList:Ljava/util/ArrayList;
    .local p1, values:Landroid/content/ContentValues;
    :catchall_2
    move-exception p1

    move-object p2, p1

    move-object p1, v9

    .end local v9           #msgList:Ljava/util/ArrayList;
    .local p1, msgList:Ljava/util/ArrayList;
    goto :goto_1

    .restart local v9       #msgList:Ljava/util/ArrayList;
    .local p1, values:Landroid/content/ContentValues;
    .restart local p3       #whereArgs:[Ljava/lang/String;
    :cond_5
    move-object p1, v9

    .end local v9           #msgList:Ljava/util/ArrayList;
    .local p1, msgList:Ljava/util/ArrayList;
    goto :goto_2
.end method

.method static getUpdatedSmsList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "db"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1785
    const/4 v9, 0x0

    .line 1786
    .local v9, msgList:Ljava/util/ArrayList;
    const/4 v8, 0x0

    .line 1788
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "sms"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "thread_id"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "status"

    aput-object v3, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object p0

    .line 1790
    .end local v8           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_7

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .end local p2
    if-lez p2, :cond_7

    .line 1791
    const/4 v0, 0x0

    .line 1792
    .local v0, type:I
    const/4 p3, -0x1

    .line 1794
    .local p3, status:I
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1796
    .end local v9           #msgList:Ljava/util/ArrayList;
    .local p2, msgList:Ljava/util/ArrayList;
    :try_start_2
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1797
    const-string v0, "type"

    .end local v0           #type:I
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1802
    .restart local v0       #type:I
    :cond_0
    const-string v1, "status"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1803
    const-string p3, "status"

    .end local p3           #status:I
    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .local p1, status:I
    move p3, p1

    .line 1807
    .end local p1           #status:I
    .restart local p3       #status:I
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1808
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1809
    .local p1, msg:Landroid/os/Bundle;
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1810
    const-string v1, "thread_id"

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1811
    if-lez v0, :cond_2

    .line 1812
    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1813
    const-string v1, "old_type"

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1818
    :cond_2
    const/4 v1, -0x1

    if-eq p3, v1, :cond_3

    .line 1819
    const-string v1, "status"

    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1820
    const-string v1, "old_status"

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1824
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1828
    .end local v0           #type:I
    .end local p1           #msg:Landroid/os/Bundle;
    .end local p3           #status:I
    :catchall_0
    move-exception p1

    move-object v10, p1

    move-object p1, p2

    .end local p2           #msgList:Ljava/util/ArrayList;
    .local p1, msgList:Ljava/util/ArrayList;
    move-object p2, v10

    :goto_1
    if-eqz p0, :cond_4

    .line 1829
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p2

    .end local p1           #msgList:Ljava/util/ArrayList;
    .restart local v0       #type:I
    .restart local p2       #msgList:Ljava/util/ArrayList;
    .restart local p3       #status:I
    :cond_5
    move-object p1, p2

    .line 1828
    .end local v0           #type:I
    .end local p2           #msgList:Ljava/util/ArrayList;
    .end local p3           #status:I
    .restart local p1       #msgList:Ljava/util/ArrayList;
    :goto_2
    if-eqz p0, :cond_6

    .line 1829
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1832
    :cond_6
    return-object p1

    .line 1828
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #msgList:Ljava/util/ArrayList;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, values:Landroid/content/ContentValues;
    .local p2, where:Ljava/lang/String;
    .local p3, whereArgs:[Ljava/lang/String;
    :catchall_1
    move-exception p0

    move-object p2, p0

    move-object p1, v9

    .end local v9           #msgList:Ljava/util/ArrayList;
    .local p1, msgList:Ljava/util/ArrayList;
    move-object p0, v8

    .end local v8           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_1

    .end local p2           #where:Ljava/lang/String;
    .end local p3           #whereArgs:[Ljava/lang/String;
    .restart local v9       #msgList:Ljava/util/ArrayList;
    .local p1, values:Landroid/content/ContentValues;
    :catchall_2
    move-exception p1

    move-object p2, p1

    move-object p1, v9

    .end local v9           #msgList:Ljava/util/ArrayList;
    .local p1, msgList:Ljava/util/ArrayList;
    goto :goto_1

    .restart local v9       #msgList:Ljava/util/ArrayList;
    .local p1, values:Landroid/content/ContentValues;
    .restart local p3       #whereArgs:[Ljava/lang/String;
    :cond_7
    move-object p1, v9

    .end local v9           #msgList:Ljava/util/ArrayList;
    .local p1, msgList:Ljava/util/ArrayList;
    goto :goto_2
.end method

.method private static handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "projection"

    .prologue
    .line 885
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 902
    if-nez p0, :cond_0

    const-string v0, "normalized_date ASC"

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "projection"

    .prologue
    .line 894
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->THREADS_COLUMNS:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static initializeColumnSets()V
    .locals 10

    .prologue
    .line 1878
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    array-length v1, v8

    .line 1879
    .local v1, commonColumnCount:I
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v5, v8

    .line 1880
    .local v5, mmsOnlyColumnCount:I
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v6, v8

    .line 1881
    .local v6, smsOnlyColumnCount:I
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1883
    .local v7, unionColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1884
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1885
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1886
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1883
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1888
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 1889
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1890
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1888
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1892
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_2

    .line 1893
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1894
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1892
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1897
    :cond_2
    const/4 v2, 0x0

    .line 1898
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1899
    .local v0, columnName:Ljava/lang/String;
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aput-object v0, v8, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_3

    .line 1901
    .end local v0           #columnName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private insertThread(Ljava/lang/String;I)V
    .locals 7
    .parameter "recipientIds"
    .parameter "numberOfRecipients"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 703
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 705
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "recipient_ids"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    if-le p2, v4, :cond_0

    .line 707
    const-string v3, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    :cond_0
    const-string v3, "message_count"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "threads"

    invoke-virtual {v3, v4, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 712
    .local v0, result:J
    const-string v3, "MmsSmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertThread: created new thread_id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for recipientIds "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 716
    return-void
.end method

.method private static joinPduAndPendingMsgTables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1259
    const-string v0, "pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id"

    return-object v0
.end method

.method private makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    .line 1105
    array-length v1, p1

    .line 1106
    .local v1, projectionSize:I
    add-int/lit8 v3, v1, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 1108
    .local v2, result:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "thread_id AS tid"

    aput-object v4, v2, v3

    .line 1109
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS normalized_date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1111
    add-int/lit8 v3, v0, 0x2

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 1110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1113
    :cond_0
    return-object v2
.end method

.method private static makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    const/4 v4, 0x0

    .line 1334
    array-length v0, p0

    .line 1335
    .local v0, projectionSize:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 1337
    .local v1, result:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS normalized_date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1338
    const/4 v2, 0x1

    invoke-static {p0, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1339
    return-object v1
.end method

.method private static makeProjectionWithSortIndex([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 1350
    array-length v0, p0

    .line 1351
    .local v0, projectionSize:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 1353
    .local v1, result:[Ljava/lang/String;
    const-string v2, "sort_index"

    aput-object v2, v1, v3

    .line 1354
    const/4 v2, 0x1

    invoke-static {p0, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1355
    return-object v1
.end method

.method private queryRelatedThreadIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;
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

    .line 1647
    if-nez p2, :cond_0

    .line 1648
    const-string p2, ""

    .line 1653
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1654
    .local v2, thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UNION SELECT DISTINCT thread_id FROM pdu "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1657
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p1, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1658
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1659
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1660
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1650
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

    .line 1662
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #query:Ljava/lang/String;
    .restart local v2       #thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1665
    :cond_2
    return-object v2
.end method

.method private updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "threadIdString"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1769
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1776
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1777
    .local v2, finalSelection:Ljava/lang/String;
    const-string v3, "pdu"

    invoke-virtual {v0, v3, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const-string v4, "sms"

    invoke-virtual {v0, v4, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #finalSelection:Ljava/lang/String;
    :goto_0
    return v3

    .line 1770
    :catch_0
    move-exception v1

    .line 1771
    .local v1, exception:Ljava/lang/NumberFormatException;
    const-string v3, "MmsSmsProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1472
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 1473
    .local v16, context:Landroid/content/Context;
    const/4 v13, 0x0

    .line 1474
    .local v13, affectedRows:I
    const/16 v17, 0x0

    .line 1478
    .local v17, deletedSmsList:Ljava/util/ArrayList;
    sget-boolean v6, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1479
    const-string v6, "MmsSmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete start - uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_0
    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1574
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1489
    :sswitch_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    .line 1495
    .local v20, threadId:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->getDeletedSmsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1502
    sget-boolean v6, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 1503
    const-string v6, "MmsSmsProvider"

    const-string v7, "delete mid - calling deleteConversation"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/android/providers/telephony/MmsSmsProvider;->deleteConversation(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1516
    if-nez v13, :cond_4

    .line 1517
    sget-boolean v6, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1518
    const-string v6, "MmsSmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Empty coversation: thread_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_2
    const-string v6, "threads"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1522
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    .line 1523
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1524
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1526
    :cond_3
    sget-boolean v6, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 1527
    const-string v6, "MmsSmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "affectedRows="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    .end local v15           #c:Landroid/database/Cursor;
    :cond_4
    move-object v0, v5

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1579
    .end local v20           #threadId:J
    :goto_0
    if-eqz v17, :cond_6

    .line 1580
    new-instance v19, Landroid/content/Intent;

    const-string v6, "com.motorola.android.intent.action.SMS_DELETED"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v19, intent:Landroid/content/Intent;
    const-string v6, "deleted_sms_list"

    move-object/from16 v0, v19

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1582
    sget-boolean v6, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 1583
    const-string v6, "MmsSmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Broadcasting intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1590
    .end local v19           #intent:Landroid/content/Intent;
    :cond_6
    if-lez v13, :cond_7

    .line 1591
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1595
    :cond_7
    sget-boolean v6, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 1596
    const-string v6, "MmsSmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete end - uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_8
    return v13

    .line 1490
    :catch_0
    move-exception v6

    move-object/from16 v18, v6

    .line 1491
    .local v18, e:Ljava/lang/NumberFormatException;
    const-string v6, "MmsSmsProvider"

    const-string v7, "Thread ID must be a long."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1537
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :sswitch_1
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->queryRelatedThreadIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v14

    .line 1538
    .local v14, affectedThreadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->getDeletedSmsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1542
    sget-boolean v6, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v6, :cond_9

    .line 1543
    const-string v6, "MmsSmsProvider"

    const-string v7, "delete mid - calling deleteMessages"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :cond_9
    move-object/from16 v0, v16

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v6

    const-string v7, "sms"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int v13, v6, v7

    .line 1556
    invoke-static {v5, v14}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    .line 1557
    if-lez v13, :cond_a

    .line 1560
    :goto_1
    goto/16 :goto_0

    .line 1557
    :cond_a
    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v6

    move v13, v6

    goto :goto_1

    .line 1564
    .end local v14           #affectedThreadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :sswitch_2
    sget-boolean v6, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v6, :cond_b

    .line 1565
    const-string v6, "MmsSmsProvider"

    const-string v7, "delete mid - calling deleteObsoleteThreads"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_b
    const-string v6, "threads"

    const-string v7, "_id NOT IN (SELECT DISTINCT thread_id FROM sms UNION SELECT DISTINCT thread_id FROM pdu)"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1572
    goto/16 :goto_0

    .line 1485
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 1464
    const-string v0, "vnd.android-dir/mms-sms"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 1671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 305
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 37
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 318
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v17, 0x0

    .line 322
    .local v17, cursor:Landroid/database/Cursor;
    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 323
    .local v21, match:I
    sget-boolean v6, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 324
    const-string v6, "MmsSmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query - start, uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " match="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 570
    :pswitch_0
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized URI:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 331
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getCompleteConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 573
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local p2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 577
    sget-boolean v6, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 578
    const-string v6, "MmsSmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query - end, uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " match="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_1
    return-object v17

    .line 335
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2
    :pswitch_2
    const-string v6, "simple"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 336
    .local v31, simple:Ljava/lang/String;
    if-eqz v31, :cond_3

    const-string v6, "true"

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 337
    const-string v6, "thread_type"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 338
    .local v36, threadType:Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 342
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getSimpleConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 344
    goto/16 :goto_0

    .line 345
    .end local v36           #threadType:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 348
    goto/16 :goto_0

    .line 350
    .end local v31           #simple:Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 353
    goto/16 :goto_0

    .line 360
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_4
    if-nez p5, :cond_4

    .line 363
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationMessagesSorted(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 366
    goto/16 :goto_0

    .line 360
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    const-string v6, "order_id"

    const-string v7, "sort_index"

    move-object/from16 v0, p5

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 p5, v6

    goto :goto_1

    .line 371
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 374
    goto/16 :goto_0

    .line 376
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 379
    goto/16 :goto_0

    .line 381
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 384
    goto/16 :goto_0

    .line 386
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_8
    const-string v6, "recipient"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v29

    .line 388
    .local v29, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getThreadId(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v17

    .line 389
    goto/16 :goto_0

    .line 391
    .end local v29           #recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 392
    .local v20, extraSelection:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v8, v20

    .line 394
    .local v8, finalSelection:Ljava/lang/String;
    :goto_2
    const-string v6, "canonical_addresses"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 400
    goto/16 :goto_0

    .line 392
    .end local v8           #finalSelection:Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    goto :goto_2

    .line 403
    .end local v20           #extraSelection:Ljava/lang/String;
    .restart local p2
    :pswitch_a
    const-string v10, "canonical_addresses"

    sget-object v11, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v5

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 409
    goto/16 :goto_0

    .line 411
    :pswitch_b
    const-string v6, "pattern"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 413
    .local v30, searchString:Ljava/lang/String;
    const-string v27, "SELECT _id, index_text, source_id, table_to_use, offsets(words) FROM words WHERE words MATCH ? LIMIT 50;"

    .line 415
    .local v27, query:Ljava/lang/String;
    if-nez p5, :cond_6

    if-nez p3, :cond_6

    if-nez p4, :cond_6

    if-eqz p2, :cond_7

    .line 419
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "do not specify sortOrder, selection, selectionArgs, or projectionwith this query"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 425
    :cond_7
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v0, v5

    move-object/from16 v1, v27

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 427
    goto/16 :goto_0

    .line 430
    .end local v27           #query:Ljava/lang/String;
    .end local v30           #searchString:Ljava/lang/String;
    :pswitch_c
    if-nez p5, :cond_8

    if-nez p3, :cond_8

    if-nez p4, :cond_8

    if-eqz p2, :cond_9

    .line 434
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "do not specify sortOrder, selection, selectionArgs, or projectionwith this query"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 481
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pattern"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 483
    .restart local v30       #searchString:Ljava/lang/String;
    const-string v32, "_id,thread_id,address,body,date"

    .line 485
    .local v32, smsProjection:Ljava/lang/String;
    const-string v22, "pdu._id,thread_id,addr.address,part.text as body,pdu.date"

    .line 487
    .local v22, mmsProjection:Ljava/lang/String;
    const-string v6, "SELECT %s FROM sms WHERE (address NOTNULL AND body LIKE ?) "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v32, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    .line 494
    .local v33, smsQuery:Ljava/lang/String;
    const-string v6, "SELECT %s FROM pdu,part,addr WHERE ((part.mid=pdu._id) AND (addr.msg_id=pdu._id) AND ((pdu.msg_box IN (%d, %d, %d) AND addr.type=%d) OR (pdu.msg_box IN (%d) AND addr.type=%d)) AND (part.ct=\'text/plain\') AND (body like ?))"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v22, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const/16 v9, 0x97

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const/16 v9, 0x89

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 503
    .local v23, mmsQuery:Ljava/lang/String;
    const-string v6, "%s UNION %s ORDER BY %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v33, v7, v8

    const/4 v8, 0x1

    aput-object v23, v7, v8

    const/4 v8, 0x2

    const-string v9, "date DESC"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 511
    .local v28, rawQuery:Ljava/lang/String;
    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v30, v6, v7

    const/4 v7, 0x1

    aput-object v30, v6, v7

    move-object v0, v5

    move-object/from16 v1, v28

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    goto/16 :goto_0

    .line 512
    :catch_0
    move-exception v6

    move-object/from16 v19, v6

    .line 513
    .local v19, ex:Ljava/lang/Exception;
    const-string v6, "MmsSmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 518
    .end local v19           #ex:Ljava/lang/Exception;
    .end local v22           #mmsProjection:Ljava/lang/String;
    .end local v23           #mmsQuery:Ljava/lang/String;
    .end local v28           #rawQuery:Ljava/lang/String;
    .end local v30           #searchString:Ljava/lang/String;
    .end local v32           #smsProjection:Ljava/lang/String;
    .end local v33           #smsQuery:Ljava/lang/String;
    :pswitch_d
    const-string v6, "protocol"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 519
    .local v26, protoName:Ljava/lang/String;
    const-string v6, "message"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 520
    .local v24, msgId:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, -0x1

    move/from16 v25, v6

    .line 523
    .local v25, proto:I
    :goto_3
    const/4 v6, -0x1

    move/from16 v0, v25

    move v1, v6

    if-eq v0, v1, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proto_type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v6

    .line 525
    .restart local v20       #extraSelection:Ljava/lang/String;
    :goto_4
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND msg_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 529
    :cond_a
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    move-object/from16 v8, v20

    .line 531
    .restart local v8       #finalSelection:Ljava/lang/String;
    :goto_5
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "due_time"

    move-object v12, v6

    .line 533
    .local v12, finalOrder:Ljava/lang/String;
    :goto_6
    const-string v6, "pending_msgs"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 535
    goto/16 :goto_0

    .line 520
    .end local v8           #finalSelection:Ljava/lang/String;
    .end local v12           #finalOrder:Ljava/lang/String;
    .end local v20           #extraSelection:Ljava/lang/String;
    .end local v25           #proto:I
    :cond_b
    const-string v6, "sms"

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    move/from16 v25, v6

    goto :goto_3

    :cond_c
    const/4 v6, 0x1

    move/from16 v25, v6

    goto :goto_3

    .line 523
    .restart local v25       #proto:I
    :cond_d
    const-string v6, " 0=0 "

    move-object/from16 v20, v6

    goto :goto_4

    .line 529
    .restart local v20       #extraSelection:Ljava/lang/String;
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    goto :goto_5

    .restart local v8       #finalSelection:Ljava/lang/String;
    :cond_f
    move-object/from16 v12, p5

    .line 531
    goto :goto_6

    .line 538
    .end local v8           #finalSelection:Ljava/lang/String;
    .end local v20           #extraSelection:Ljava/lang/String;
    .end local v24           #msgId:Ljava/lang/String;
    .end local v25           #proto:I
    .end local v26           #protoName:Ljava/lang/String;
    :pswitch_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 540
    goto/16 :goto_0

    .line 543
    :pswitch_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getDraftThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 544
    goto/16 :goto_0

    .line 549
    :pswitch_10
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v34

    .line 554
    .local v34, threadId:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 556
    goto/16 :goto_0

    .line 550
    .end local v34           #threadId:J
    :catch_1
    move-exception v6

    move-object/from16 v18, v6

    .line 551
    .local v18, e:Ljava/lang/NumberFormatException;
    const-string v6, "MmsSmsProvider"

    const-string v7, "Thread ID must be a long."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 559
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :pswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 561
    goto/16 :goto_0

    .line 565
    :pswitch_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getAllMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 566
    goto/16 :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_1
        :pswitch_e
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_10
        :pswitch_4
        :pswitch_12
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1677
    iget-object v8, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v8}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 1681
    sget-boolean v8, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 1682
    const-string v8, "MmsSmsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update begin - uri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_0
    iget-object v8, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v8}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1688
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 1691
    .local v0, affectedRows:I
    const/4 v7, 0x0

    .line 1692
    .local v7, updatedSmsList:Ljava/util/ArrayList;
    const/4 v6, 0x0

    .line 1695
    .local v6, updatedMmsList:Ljava/util/ArrayList;
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1724
    :pswitch_0
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1697
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1700
    .local v5, threadIdString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thread_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p3, v8}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, p2, v8, p4}, Lcom/android/providers/telephony/MmsSmsProvider;->getUpdatedSmsList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1702
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thread_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p3, v8}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, p2, v8, p4}, Lcom/android/providers/telephony/MmsSmsProvider;->getUpdatedMmsList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1706
    invoke-direct {p0, v5, p2, p3, p4}, Lcom/android/providers/telephony/MmsSmsProvider;->updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1728
    .end local v5           #threadIdString:Ljava/lang/String;
    .end local p4
    :goto_0
    if-lez v0, :cond_5

    .line 1731
    if-eqz v7, :cond_2

    .line 1732
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.motorola.android.intent.action.SMS_UPDATED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1733
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "updated_sms_list"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1734
    sget-boolean v8, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 1735
    const-string v8, "MmsSmsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Broadcasting intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1739
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    if-eqz v6, :cond_4

    .line 1740
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.motorola.android.intent.action.MMS_UPDATED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1741
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "updated_mms_list"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1742
    sget-boolean v8, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 1743
    const-string v8, "MmsSmsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Broadcasting intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1749
    .end local v4           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1756
    :cond_5
    sget-boolean v8, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG:Z

    if-eqz v8, :cond_6

    .line 1757
    const-string v8, "MmsSmsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update end - uri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_6
    return v0

    .line 1711
    .restart local p4
    :pswitch_2
    const-string v8, "pending_msgs"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, p2, p3, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1712
    goto/16 :goto_0

    .line 1715
    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .end local p4
    check-cast p4, Ljava/lang/String;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1716
    .local v2, extraSelection:Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v3, v2

    .line 1719
    .local v3, finalSelection:Ljava/lang/String;
    :goto_1
    const-string v8, "canonical_addresses"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, p2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1720
    goto/16 :goto_0

    .line 1716
    .end local v3           #finalSelection:Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    goto :goto_1

    .line 1695
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

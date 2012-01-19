.class public Lcom/android/providers/telephony/MmsProvider;
.super Landroid/content/ContentProvider;
.source "MmsProvider.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGV:Z = false

.field private static final MMS_ALL:I = 0x0

.field private static final MMS_ALL_ID:I = 0x1

.field private static final MMS_ALL_PART:I = 0xa

.field private static final MMS_DRAFTS:I = 0x6

.field private static final MMS_DRAFTS_ID:I = 0x7

.field private static final MMS_DRM_STORAGE:I = 0x11

.field private static final MMS_DRM_STORAGE_ID:I = 0x12

.field private static final MMS_INBOX:I = 0x2

.field private static final MMS_INBOX_ID:I = 0x3

.field private static final MMS_MSG_ADDR:I = 0xd

.field private static final MMS_MSG_PART:I = 0xb

.field private static final MMS_OUTBOX:I = 0x8

.field private static final MMS_OUTBOX_ID:I = 0x9

.field private static final MMS_PART_ID:I = 0xc

.field private static final MMS_REPORT_REQUEST:I = 0x10

.field private static final MMS_REPORT_STATUS:I = 0xf

.field private static final MMS_SCRAP_SPACE:I = 0x14

.field private static final MMS_SENDING_RATE:I = 0xe

.field private static final MMS_SENT:I = 0x4

.field private static final MMS_SENT_ID:I = 0x5

.field private static final MMS_THREADS:I = 0x13

.field static final TABLE_ADDR:Ljava/lang/String; = "addr"

.field static final TABLE_DRM:Ljava/lang/String; = "drm"

.field static final TABLE_PART:Ljava/lang/String; = "part"

.field static final TABLE_PDU:Ljava/lang/String; = "pdu"

.field static final TABLE_RATE:Ljava/lang/String; = "rate"

.field static final TABLE_WORDS:Ljava/lang/String; = "words"

.field private static final TAG:Ljava/lang/String; = "MmsProvider"

.field private static final VND_ANDROID_DIR_MMS:Ljava/lang/String; = "vnd.android-dir/mms"

.field private static final VND_ANDROID_MMS:Ljava/lang/String; = "vnd.android/mms"

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "mms"

    .line 1079
    const-string v0, "1"

    const-string v1, "debug.mot.extwmlog"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    .line 1082
    sget-boolean v0, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    sput-boolean v0, Lcom/android/providers/telephony/MmsProvider;->LOCAL_LOGV:Z

    .line 1107
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 1110
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1111
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "#"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1112
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "inbox"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1113
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "inbox/#"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1114
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "sent"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1115
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "sent/#"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1116
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "drafts"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1117
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "drafts/#"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1118
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "outbox"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1119
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "outbox/#"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1120
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "part"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1121
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "#/part"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1122
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "part/#"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1123
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "#/addr"

    const/16 v2, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1124
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "rate"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1125
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "report-status/#"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1126
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "report-request/#"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1127
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "drm"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1128
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "drm/#"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1129
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "threads"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1130
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "scrapSpace"

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1131
    return-void

    :cond_0
    move v0, v4

    .line 1082
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "selection1"
    .parameter "selection2"

    .prologue
    .line 1138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1143
    :goto_0
    return-object v0

    .line 1140
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 1141
    goto :goto_0

    .line 1143
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

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
    .locals 2
    .parameter "qb"
    .parameter "msgBox"

    .prologue
    .line 226
    const-string v0, "pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 228
    if-eqz p2, :cond_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_box="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 231
    :cond_0
    return-void
.end method

.method private static deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "db"
    .parameter "table"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 823
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 825
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 828
    const/4 p0, 0x0

    .line 859
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local p0
    :goto_0
    return p0

    .line 832
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local p0
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 833
    const/4 p0, 0x0

    .line 848
    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 836
    .restart local p0
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 839
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 840
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 841
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 843
    .end local v1           #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 844
    .local v1, ex:Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "MmsProvider"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 848
    .end local v1           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception p0

    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .restart local p0
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 853
    sget-boolean v0, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    .end local v0           #cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 854
    const-string v0, "MmsProvider"

    const-string v1, "deleteDataRows, doing delete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0
.end method

.method static deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I
    .locals 8
    .parameter "context"
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "uri"

    .prologue
    .line 726
    const-string v1, "pdu"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 728
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 729
    const/4 p0, 0x0

    .line 779
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    return p0

    .line 733
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_0
    const/4 v1, 0x0

    .line 736
    .local v1, deletedMmsList:Ljava/util/ArrayList;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 737
    const/4 p0, 0x0

    .line 748
    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 741
    .restart local p0
    :cond_1
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsProvider;->getDeletedMmsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 743
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 744
    const-string v2, "mid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v2, v3}, Lcom/android/providers/telephony/MmsProvider;->deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 748
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #deletedMmsList:Ljava/util/ArrayList;
    .end local p1
    .local p0, deletedMmsList:Ljava/util/ArrayList;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    .restart local v1       #deletedMmsList:Ljava/util/ArrayList;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 752
    sget-boolean v0, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    .end local v0           #cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 753
    const-string v0, "MmsProvider"

    const-string v2, "deleteMessages - deleting from PDU"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_3
    const-string v0, "pdu"

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 759
    .local p1, count:I
    if-lez p1, :cond_6

    .line 760
    new-instance p2, Landroid/content/Intent;

    .end local p2
    const-string p3, "android.intent.action.CONTENT_CHANGED"

    .end local p3
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    .local p2, intent:Landroid/content/Intent;
    const-string p3, "deleted_contents"

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 762
    sget-boolean p3, Lcom/android/providers/telephony/MmsProvider;->LOCAL_LOGV:Z

    if-eqz p3, :cond_4

    .line 763
    const-string p3, "MmsProvider"

    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Broadcasting intent: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_4
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 768
    if-eqz v1, :cond_6

    .line 769
    new-instance p2, Landroid/content/Intent;

    .end local p2           #intent:Landroid/content/Intent;
    const-string p3, "com.motorola.android.intent.action.MMS_DELETED"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local p2, i:Landroid/content/Intent;
    const-string p3, "deleted_mms_list"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 771
    sget-boolean p3, Lcom/android/providers/telephony/MmsProvider;->LOCAL_LOGV:Z

    if-eqz p3, :cond_5

    .line 772
    const-string p3, "MmsProvider"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Broadcasting intent: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_5
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local p2           #i:Landroid/content/Intent;
    :cond_6
    move p0, p1

    .line 779
    goto/16 :goto_0
.end method

.method private static deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 813
    const-string v0, "part"

    invoke-static {p0, v0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static deleteTempDrmData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 818
    const-string v0, "drm"

    invoke-static {p0, v0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private filterUnsupportedKeys(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 1026
    const-string v0, "d_tm_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1027
    const-string v0, "s_vis"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1028
    const-string v0, "r_chg"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1029
    const-string v0, "r_chg_dl_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1030
    const-string v0, "r_chg_dl"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1031
    const-string v0, "r_chg_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1032
    const-string v0, "r_chg_sz"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1033
    const-string v0, "p_s_by"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1034
    const-string v0, "p_s_d"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1035
    const-string v0, "store"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1036
    const-string v0, "mm_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1037
    const-string v0, "mm_flg_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1038
    const-string v0, "mm_flg"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1039
    const-string v0, "store_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1040
    const-string v0, "store_st_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1041
    const-string v0, "stored"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1042
    const-string v0, "totals"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1043
    const-string v0, "mb_t"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1044
    const-string v0, "mb_t_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1045
    const-string v0, "qt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1046
    const-string v0, "mb_qt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1047
    const-string v0, "mb_qt_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1048
    const-string v0, "m_cnt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1049
    const-string v0, "start"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1050
    const-string v0, "d_ind"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1051
    const-string v0, "e_des"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1052
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1053
    const-string v0, "r_r_mod"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1054
    const-string v0, "r_r_mod_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1055
    const-string v0, "st_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1056
    const-string v0, "apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1057
    const-string v0, "r_apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1058
    const-string v0, "aux_apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1059
    const-string v0, "drm_c"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1060
    const-string v0, "adp_a"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1061
    const-string v0, "repl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1062
    const-string v0, "cl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1063
    const-string v0, "cl_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1066
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1067
    return-void
.end method

.method private static getDeletedMmsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-string v0, "_id"

    .line 786
    const/4 v10, 0x0

    .line 787
    .local v10, msgList:Ljava/util/ArrayList;
    const/4 v8, 0x0

    .line 789
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

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 791
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 792
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 793
    .end local v10           #msgList:Ljava/util/ArrayList;
    .local v11, msgList:Ljava/util/ArrayList;
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 795
    .local v9, msg:Landroid/os/Bundle;
    const-string v0, "_id"

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 796
    const-string v0, "thread_id"

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 797
    const-string v0, "msg_box"

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 798
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 802
    .end local v9           #msg:Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    move-object v10, v11

    .end local v11           #msgList:Ljava/util/ArrayList;
    .restart local v10       #msgList:Ljava/util/ArrayList;
    :goto_1
    if-eqz v8, :cond_0

    .line 803
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .end local v10           #msgList:Ljava/util/ArrayList;
    .restart local v11       #msgList:Ljava/util/ArrayList;
    :cond_1
    move-object v10, v11

    .line 802
    .end local v11           #msgList:Ljava/util/ArrayList;
    .restart local v10       #msgList:Ljava/util/ArrayList;
    :cond_2
    if-eqz v8, :cond_3

    .line 803
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 806
    :cond_3
    return-object v10

    .line 802
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private getMessageBoxByMatch(I)I
    .locals 3
    .parameter "match"

    .prologue
    .line 590
    packed-switch p1, :pswitch_data_0

    .line 604
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad Arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :pswitch_0
    const/4 v0, 0x1

    .line 602
    :goto_0
    return v0

    .line 596
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 599
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 602
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 590
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getTempStoreFd()Landroid/os/ParcelFileDescriptor;
    .locals 9

    .prologue
    const-string v8, "MmsProvider"

    .line 975
    const-string v2, "/sdcard/mms/scrapSpace/.temp.jpg"

    .line 976
    .local v2, fileName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 979
    .local v4, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 982
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 983
    .local v3, parentFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 984
    const-string v5, "MmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MmsProvider] getTempStoreFd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "does not exist!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v5, 0x0

    .line 996
    .end local v1           #file:Ljava/io/File;
    .end local v3           #parentFile:Ljava/io/File;
    :goto_0
    return-object v5

    .line 989
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #parentFile:Ljava/io/File;
    :cond_0
    const/high16 v5, 0x3800

    invoke-static {v1, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .end local v1           #file:Ljava/io/File;
    .end local v3           #parentFile:Ljava/io/File;
    :goto_1
    move-object v5, v4

    .line 996
    goto :goto_0

    .line 992
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 993
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTempStoreFd: error creating pfd for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1072
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 612
    iget-object v8, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v8}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 614
    sget-object v8, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 615
    .local v4, match:I
    sget-boolean v8, Lcom/android/providers/telephony/MmsProvider;->LOCAL_LOGV:Z

    if-eqz v8, :cond_0

    .line 616
    const-string v8, "MmsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delete uri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", match="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    const/4 v2, 0x0

    .line 620
    .local v2, extraSelection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 622
    .local v6, notify:Z
    packed-switch v4, :pswitch_data_0

    .line 663
    :pswitch_0
    const-string v8, "MmsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No match for URI \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v8, 0x0

    .line 721
    :goto_0
    return v8

    .line 628
    :pswitch_1
    const/4 v6, 0x1

    .line 629
    const-string v7, "pdu"

    .line 630
    .local v7, table:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 667
    :cond_1
    :goto_1
    invoke-static {p2, v2}, Lcom/android/providers/telephony/MmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, finalSelection:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v8}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 669
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 671
    .local v1, deletedRows:I
    const-string v8, "pdu"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 674
    sget-boolean v8, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 675
    const-string v8, "MmsProvider"

    const-string v9, "Deleting messages"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0, v3, p3, p1}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    .line 710
    :goto_2
    if-lez v1, :cond_3

    if-eqz v6, :cond_3

    .line 711
    invoke-direct {p0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange()V

    .line 715
    :cond_3
    sget-boolean v8, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 716
    const-string v8, "MmsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Finished delete uri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", match="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v8, v1

    .line 721
    goto :goto_0

    .line 637
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #deletedRows:I
    .end local v3           #finalSelection:Ljava/lang/String;
    .end local v7           #table:Ljava/lang/String;
    :pswitch_2
    const/4 v6, 0x1

    .line 638
    const-string v7, "pdu"

    .line 639
    .restart local v7       #table:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 640
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/MmsProvider;->getMessageBoxByMatch(I)I

    move-result v5

    .line 641
    .local v5, msgBox:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msg_box="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    goto :goto_1

    .line 645
    .end local v5           #msgBox:I
    .end local v7           #table:Ljava/lang/String;
    :pswitch_3
    const-string v7, "part"

    .line 646
    .restart local v7       #table:Ljava/lang/String;
    goto :goto_1

    .line 648
    .end local v7           #table:Ljava/lang/String;
    :pswitch_4
    const-string v7, "part"

    .line 649
    .restart local v7       #table:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 650
    goto/16 :goto_1

    .line 652
    .end local v7           #table:Ljava/lang/String;
    :pswitch_5
    const-string v7, "part"

    .line 653
    .restart local v7       #table:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 654
    goto/16 :goto_1

    .line 656
    .end local v7           #table:Ljava/lang/String;
    :pswitch_6
    const-string v7, "addr"

    .line 657
    .restart local v7       #table:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msg_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 658
    goto/16 :goto_1

    .line 660
    .end local v7           #table:Ljava/lang/String;
    :pswitch_7
    const-string v7, "drm"

    .line 661
    .restart local v7       #table:Ljava/lang/String;
    goto/16 :goto_1

    .line 681
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #deletedRows:I
    .restart local v3       #finalSelection:Ljava/lang/String;
    :cond_5
    const-string v8, "part"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 684
    sget-boolean v8, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v8, :cond_6

    .line 685
    const-string v8, "MmsProvider"

    const-string v9, "Deleting parts"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_6
    invoke-static {v0, v3, p3}, Lcom/android/providers/telephony/MmsProvider;->deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_2

    .line 690
    :cond_7
    const-string v8, "drm"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 693
    sget-boolean v8, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v8, :cond_8

    .line 694
    const-string v8, "MmsProvider"

    const-string v9, "Deleting tempDrmData"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_8
    invoke-static {v0, v3, p3}, Lcom/android/providers/telephony/MmsProvider;->deleteTempDrmData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_2

    .line 702
    :cond_9
    sget-boolean v8, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v8, :cond_a

    .line 703
    const-string v8, "MmsProvider"

    const-string v9, "Deleting other"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_a
    invoke-virtual {v0, v7, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_2

    .line 622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v12, "MmsProvider"

    const-string v11, "*/*"

    .line 235
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 236
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 273
    :pswitch_0
    const-string v0, "*/*"

    move-object v0, v11

    :goto_0
    return-object v0

    .line 242
    :pswitch_1
    const-string v0, "vnd.android-dir/mms"

    goto :goto_0

    .line 248
    :pswitch_2
    const-string v0, "vnd.android/mms"

    goto :goto_0

    .line 250
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "part"

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "ct"

    aput-object v3, v2, v7

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 254
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 256
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 262
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 259
    :cond_0
    :try_start_1
    const-string v0, "MmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.count() != 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 267
    :goto_1
    const-string v0, "*/*"

    move-object v0, v11

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 265
    :cond_1
    const-string v0, "MmsProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cursor == null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 42
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 282
    const/16 v19, 0x0

    .line 283
    .local v19, msgBox:I
    const/16 v21, 0x1

    .line 285
    .local v21, notify:Z
    sget-object v38, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 286
    .local v17, match:I
    sget-boolean v38, Lcom/android/providers/telephony/MmsProvider;->LOCAL_LOGV:Z

    if-eqz v38, :cond_0

    .line 287
    const-string v38, "MmsProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Insert uri="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", match="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    const-string v34, "pdu"

    .line 291
    .local v34, table:Ljava/lang/String;
    packed-switch v17, :pswitch_data_0

    .line 331
    :pswitch_0
    const-string v38, "MmsProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "insert: invalid request: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/16 v38, 0x0

    .line 586
    .end local p2
    :goto_0
    return-object v38

    .line 293
    .restart local p2
    :pswitch_1
    const-string v38, "msg_box"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    .line 294
    .local v20, msgBoxObj:Ljava/lang/Integer;
    if-eqz v20, :cond_8

    .line 295
    check-cast v20, Ljava/lang/Integer;

    .end local v20           #msgBoxObj:Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 335
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 337
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v30, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 340
    .local v30, res:Landroid/net/Uri;
    const-string v38, "pdu"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_12

    .line 341
    const-string v38, "date"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_9

    const/16 v38, 0x1

    move/from16 v5, v38

    .line 342
    .local v5, addDate:Z
    :goto_2
    const-string v38, "msg_box"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_a

    const/16 v38, 0x1

    move/from16 v6, v38

    .line 351
    .local v6, addMsgBox:Z
    :goto_3
    const-wide/16 v11, 0x0

    .line 352
    .local v11, dummyIdUsedByPartTable:J
    const-string v38, "dummyId"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 353
    const-string v38, "dummyId"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 354
    const-string v38, "dummyId"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 360
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->filterUnsupportedKeys(Landroid/content/ContentValues;)V

    .line 364
    new-instance v14, Landroid/content/ContentValues;

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 366
    .local v14, finalValues:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 368
    .local v36, timeInMillis:J
    if-eqz v5, :cond_2

    .line 369
    const-string v38, "date"

    const-wide/16 v39, 0x3e8

    div-long v39, v36, v39

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object v0, v14

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 372
    :cond_2
    if-eqz v6, :cond_3

    if-eqz v19, :cond_3

    .line 373
    const-string v38, "msg_box"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object v0, v14

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    :cond_3
    const/16 v38, 0x1

    move/from16 v0, v19

    move/from16 v1, v38

    if-eq v0, v1, :cond_4

    .line 378
    const-string v38, "read"

    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object v0, v14

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    :cond_4
    sget-boolean v38, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v38, :cond_5

    .line 384
    const-string v38, "MmsProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "PDU insert finalValues="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_5
    const-string v38, "sort_index"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_b

    .line 390
    const-string v38, "sort_index"

    const-string v39, "sort_index"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v39

    move-object v0, v14

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 398
    :goto_4
    const-string v38, "thread_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    .line 399
    .local v35, threadId:Ljava/lang/Long;
    const-string v38, "address"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, address:Ljava/lang/String;
    if-eqz v35, :cond_6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_7

    :cond_6
    if-eqz v7, :cond_7

    .line 402
    const-string v38, "thread_id"

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v39

    move-object/from16 v0, v39

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object v0, v14

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 405
    :cond_7
    const/16 v38, 0x0

    move-object v0, v10

    move-object/from16 v1, v34

    move-object/from16 v2, v38

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v31

    .local v31, rowId:J
    const-wide/16 v38, 0x0

    cmp-long v38, v31, v38

    if-gtz v38, :cond_c

    .line 406
    const-string v38, "MmsProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "MmsProvider.insert: failed! "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 299
    .end local v5           #addDate:Z
    .end local v6           #addMsgBox:Z
    .end local v7           #address:Ljava/lang/String;
    .end local v10           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #dummyIdUsedByPartTable:J
    .end local v14           #finalValues:Landroid/content/ContentValues;
    .end local v30           #res:Landroid/net/Uri;
    .end local v31           #rowId:J
    .end local v35           #threadId:Ljava/lang/Long;
    .end local v36           #timeInMillis:J
    .restart local v20       #msgBoxObj:Ljava/lang/Integer;
    :cond_8
    const/16 v19, 0x1

    .line 301
    goto/16 :goto_1

    .line 303
    .end local v20           #msgBoxObj:Ljava/lang/Integer;
    :pswitch_2
    const/16 v19, 0x1

    .line 304
    goto/16 :goto_1

    .line 306
    :pswitch_3
    const/16 v19, 0x2

    .line 307
    goto/16 :goto_1

    .line 309
    :pswitch_4
    const/16 v19, 0x3

    .line 310
    goto/16 :goto_1

    .line 312
    :pswitch_5
    const/16 v19, 0x4

    .line 313
    goto/16 :goto_1

    .line 315
    :pswitch_6
    const/16 v21, 0x0

    .line 316
    const-string v34, "part"

    .line 317
    goto/16 :goto_1

    .line 319
    :pswitch_7
    const/16 v21, 0x0

    .line 320
    const-string v34, "addr"

    .line 321
    goto/16 :goto_1

    .line 323
    :pswitch_8
    const/16 v21, 0x0

    .line 324
    const-string v34, "rate"

    .line 325
    goto/16 :goto_1

    .line 327
    :pswitch_9
    const/16 v21, 0x0

    .line 328
    const-string v34, "drm"

    .line 329
    goto/16 :goto_1

    .line 341
    .restart local v10       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v30       #res:Landroid/net/Uri;
    :cond_9
    const/16 v38, 0x0

    move/from16 v5, v38

    goto/16 :goto_2

    .line 342
    .restart local v5       #addDate:Z
    :cond_a
    const/16 v38, 0x0

    move/from16 v6, v38

    goto/16 :goto_3

    .line 392
    .restart local v6       #addMsgBox:Z
    .restart local v11       #dummyIdUsedByPartTable:J
    .restart local v14       #finalValues:Landroid/content/ContentValues;
    .restart local v36       #timeInMillis:J
    :cond_b
    const-string v38, "sort_index"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object v0, v14

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_4

    .line 416
    .restart local v7       #address:Ljava/lang/String;
    .restart local v31       #rowId:J
    .restart local v35       #threadId:Ljava/lang/Long;
    :cond_c
    const-wide/16 v38, 0x0

    cmp-long v38, v11, v38

    if-eqz v38, :cond_d

    .line 417
    new-instance v27, Landroid/content/ContentValues;

    const/16 v38, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 418
    .local v27, partTableValues:Landroid/content/ContentValues;
    const-string v38, "mid"

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "content://mms/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "/part"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v27

    move-object/from16 v3, v39

    move-object/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 425
    .end local v27           #partTableValues:Landroid/content/ContentValues;
    :cond_d
    new-instance v15, Ljava/util/ArrayList;

    const/16 v38, 0x1

    move-object v0, v15

    move/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 426
    .local v15, insertedMmsList:Ljava/util/ArrayList;
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 427
    .local v18, msg:Landroid/os/Bundle;
    const-string v38, "_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move-wide/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 428
    const-string v38, "thread_id"

    const-string v39, "thread_id"

    move-object v0, v14

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v39

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move-wide/from16 v2, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 429
    const-string v38, "msg_box"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v16, Landroid/content/Intent;

    const-string v38, "com.motorola.android.intent.action.MMS_INSERTED"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v16, intent:Landroid/content/Intent;
    const-string v38, "inserted_mms_list"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 433
    sget-boolean v38, Lcom/android/providers/telephony/MmsProvider;->LOCAL_LOGV:Z

    if-eqz v38, :cond_e

    .line 434
    const-string v38, "MmsProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Broadcasting intent: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 440
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 574
    .end local v5           #addDate:Z
    .end local v6           #addMsgBox:Z
    .end local v7           #address:Ljava/lang/String;
    .end local v11           #dummyIdUsedByPartTable:J
    .end local v14           #finalValues:Landroid/content/ContentValues;
    .end local v15           #insertedMmsList:Ljava/util/ArrayList;
    .end local v16           #intent:Landroid/content/Intent;
    .end local v18           #msg:Landroid/os/Bundle;
    .end local v31           #rowId:J
    .end local v35           #threadId:Ljava/lang/Long;
    .end local v36           #timeInMillis:J
    .end local p2
    :cond_f
    :goto_5
    if-eqz v21, :cond_10

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange()V

    .line 580
    :cond_10
    sget-boolean v38, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v38, :cond_11

    .line 581
    const-string v38, "MmsProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Finished insert uri="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", match="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v38, v30

    .line 586
    goto/16 :goto_0

    .line 442
    .restart local p2
    :cond_12
    const-string v38, "addr"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_14

    .line 443
    new-instance v14, Landroid/content/ContentValues;

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 444
    .restart local v14       #finalValues:Landroid/content/ContentValues;
    const-string v38, "msg_id"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v39

    const/16 v40, 0x0

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/16 v38, 0x0

    move-object v0, v10

    move-object/from16 v1, v34

    move-object/from16 v2, v38

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v31

    .restart local v31       #rowId:J
    const-wide/16 v38, 0x0

    cmp-long v38, v31, v38

    if-gtz v38, :cond_13

    .line 447
    const-string v38, "MmsProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Failed to insert address: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 451
    :cond_13
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "/addr/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    goto/16 :goto_5

    .line 452
    .end local v14           #finalValues:Landroid/content/ContentValues;
    .end local v31           #rowId:J
    .restart local p2
    :cond_14
    const-string v38, "part"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_19

    .line 453
    new-instance v14, Landroid/content/ContentValues;

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 455
    .restart local v14       #finalValues:Landroid/content/ContentValues;
    const/16 v38, 0xb

    move/from16 v0, v17

    move/from16 v1, v38

    if-ne v0, v1, :cond_15

    .line 456
    const-string v38, "mid"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v39

    const/16 v40, 0x0

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, v38

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_15
    const-string v38, "ct"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 463
    .local v8, contentType:Ljava/lang/String;
    const-string v38, "text/plain"

    move-object/from16 v0, v38

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 464
    .local v29, plainText:Z
    const-string v38, "application/smil"

    move-object/from16 v0, v38

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 465
    .local v33, smilText:Z
    if-nez v29, :cond_16

    if-nez v33, :cond_16

    .line 468
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v39

    const-string v40, "parts"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "/PART_"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 471
    .local v28, path:Ljava/lang/String;
    const-string v38, "_data"

    move-object v0, v14

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    .local v26, partFile:Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v38

    if-nez v38, :cond_16

    .line 476
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->createNewFile()Z

    move-result v38

    if-nez v38, :cond_16

    .line 477
    new-instance v38, Ljava/lang/IllegalStateException;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Unable to create new partFile: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v38
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :catch_0
    move-exception v38

    move-object/from16 v13, v38

    .line 481
    .local v13, e:Ljava/io/IOException;
    const-string v38, "MmsProvider"

    const-string v39, "createNewFile"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    new-instance v38, Ljava/lang/IllegalStateException;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Unable to create new partFile: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v38

    .line 490
    .end local v13           #e:Ljava/io/IOException;
    .end local v26           #partFile:Ljava/io/File;
    .end local v28           #path:Ljava/lang/String;
    :cond_16
    sget-boolean v38, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v38, :cond_17

    .line 491
    const-string v38, "MmsProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "PART insert finalValues="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_17
    const/16 v38, 0x0

    move-object v0, v10

    move-object/from16 v1, v34

    move-object/from16 v2, v38

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v31

    .restart local v31       #rowId:J
    const-wide/16 v38, 0x0

    cmp-long v38, v31, v38

    if-gtz v38, :cond_18

    .line 497
    const-string v38, "MmsProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "MmsProvider.insert: failed! "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 501
    :cond_18
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "/part/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 506
    if-eqz v29, :cond_f

    .line 510
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 515
    .local v9, cv:Landroid/content/ContentValues;
    const-string v38, "_id"

    const-wide/16 v39, 0x2

    add-long v39, v39, v31

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object v0, v9

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 516
    const-string v38, "index_text"

    const-string v39, "text"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object v0, v9

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v38, "source_id"

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object v0, v9

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 518
    const-string v38, "table_to_use"

    const/16 v39, 0x2

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object v0, v9

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string v38, "words"

    const-string v39, "index_text"

    move-object v0, v10

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_5

    .line 522
    .end local v8           #contentType:Ljava/lang/String;
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v14           #finalValues:Landroid/content/ContentValues;
    .end local v29           #plainText:Z
    .end local v31           #rowId:J
    .end local v33           #smilText:Z
    :cond_19
    const-string v38, "rate"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1b

    .line 523
    const-string v38, "sent_time"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 524
    .local v22, now:J
    const-wide/32 v38, 0x36ee80

    sub-long v24, v22, v38

    .line 526
    .local v24, oneHourAgo:J
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "sent_time<="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move-object v0, v10

    move-object/from16 v1, v34

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 530
    sget-boolean v38, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v38, :cond_1a

    .line 531
    const-string v38, "MmsProvider"

    const-string v39, "RATE insert"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_1a
    const/16 v38, 0x0

    move-object v0, v10

    move-object/from16 v1, v34

    move-object/from16 v2, v38

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_5

    .line 537
    .end local v22           #now:J
    .end local v24           #oneHourAgo:J
    :cond_1b
    const-string v38, "drm"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 538
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v39

    const-string v40, "parts"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "/PART_"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 540
    .restart local v28       #path:Ljava/lang/String;
    new-instance v14, Landroid/content/ContentValues;

    const/16 v38, 0x1

    move-object v0, v14

    move/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 541
    .restart local v14       #finalValues:Landroid/content/ContentValues;
    const-string v38, "_data"

    move-object v0, v14

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    .restart local v26       #partFile:Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v38

    if-nez v38, :cond_1c

    .line 546
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->createNewFile()Z

    move-result v38

    if-nez v38, :cond_1c

    .line 547
    new-instance v38, Ljava/lang/IllegalStateException;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Unable to create new file: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v38
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 550
    :catch_1
    move-exception v38

    move-object/from16 v13, v38

    .line 551
    .restart local v13       #e:Ljava/io/IOException;
    const-string v38, "MmsProvider"

    const-string v39, "createNewFile"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    new-instance v38, Ljava/lang/IllegalStateException;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Unable to create new file: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v38

    .line 559
    .end local v13           #e:Ljava/io/IOException;
    :cond_1c
    sget-boolean v38, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v38, :cond_1d

    .line 560
    const-string v38, "MmsProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "DRM insert finalValues="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_1d
    const/16 v38, 0x0

    move-object v0, v10

    move-object/from16 v1, v34

    move-object/from16 v2, v38

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v31

    .restart local v31       #rowId:J
    const-wide/16 v38, 0x0

    cmp-long v38, v31, v38

    if-gtz v38, :cond_1e

    .line 566
    const-string v38, "MmsProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "MmsProvider.insert: failed! "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 569
    :cond_1e
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "/drm/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 570
    goto/16 :goto_5

    .line 571
    .end local v14           #finalValues:Landroid/content/ContentValues;
    .end local v26           #partFile:Ljava/io/File;
    .end local v28           #path:Ljava/lang/String;
    .end local v31           #rowId:J
    :cond_1f
    new-instance v38, Ljava/lang/AssertionError;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Unknown table type: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v38

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-string v4, "MmsProvider"

    .line 1005
    sget-object v2, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 1007
    .local v1, match:I
    const-string v2, "MmsProvider"

    const/4 v2, 0x2

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1008
    const-string v2, "MmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFile: uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1017
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1020
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v0

    .line 1013
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/providers/telephony/MmsProvider;->getTempStoreFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1014
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 1011
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 82
    iget-object v2, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 84
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 87
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 88
    .local v8, match:I
    sget-boolean v2, Lcom/android/providers/telephony/MmsProvider;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    .line 89
    const-string v2, "MmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", match="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 201
    :pswitch_0
    const-string v2, "MmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query: invalid request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v2, 0x0

    .line 222
    :goto_0
    return-object v2

    .line 94
    :pswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    .line 205
    :goto_1
    const/4 v7, 0x0

    .line 206
    .local v7, finalSortOrder:Ljava/lang/String;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pdu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    const-string v7, "date DESC"

    .line 216
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 217
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 221
    .local v9, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v2, v9

    .line 222
    goto :goto_0

    .line 97
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #finalSortOrder:Ljava/lang/String;
    .end local v9           #ret:Landroid/database/Cursor;
    :pswitch_2
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 100
    :pswitch_3
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 103
    :pswitch_4
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 106
    :pswitch_5
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 109
    :pswitch_6
    const-string v2, "pdu"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 116
    :pswitch_7
    const-string v2, "pdu"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND msg_box="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v8}, Lcom/android/providers/telephony/MmsProvider;->getMessageBoxByMatch(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 122
    :pswitch_8
    const-string v2, "part"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 125
    :pswitch_9
    const-string v2, "part"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mid="

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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 129
    :pswitch_a
    const-string v2, "part"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 133
    :pswitch_b
    const-string v2, "addr"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg_id="

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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 163
    :pswitch_c
    const-string v2, "addr INNER JOIN (SELECT P1._id AS id1, P2._id AS id2, P3._id AS id3, ifnull(P2.st, 0) AS delivery_status, ifnull(P3.read_status, 0) AS read_status FROM pdu P1 INNER JOIN pdu P2 ON P1.m_id=P2.m_id AND P2.m_type=134 LEFT JOIN pdu P3 ON P1.m_id=P3.m_id AND P3.m_type=136 UNION SELECT P1._id AS id1, P2._id AS id2, P3._id AS id3, ifnull(P2.st, 0) AS delivery_status, ifnull(P3.read_status, 0) AS read_status FROM pdu P1 INNER JOIN pdu P3 ON P1.m_id=P3.m_id AND P3.m_type=136 LEFT JOIN pdu P2 ON P1.m_id=P2.m_id AND P2.m_type=134) T ON (msg_id=id2 AND type=151) OR (msg_id=id3 AND type=137)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "T.id1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 177
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_1

    .line 185
    :pswitch_d
    const-string v2, "addr join pdu on pdu._id = addr.msg_id"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pdu._id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 188
    const-string v2, " AND addr.type = 151"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 191
    :pswitch_e
    const-string v2, "rate"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 194
    :pswitch_f
    const-string v2, "drm"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 198
    :pswitch_10
    const-string v2, "pdu group by thread_id"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    .restart local v7       #finalSortOrder:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, "part"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const-string v7, "seq"

    goto/16 :goto_2

    .line 213
    :cond_3
    move-object v7, p5

    goto/16 :goto_2

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 868
    sget-object v16, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 869
    .local v11, match:I
    sget-boolean v16, Lcom/android/providers/telephony/MmsProvider;->LOCAL_LOGV:Z

    if-eqz v16, :cond_0

    .line 870
    const-string v16, "MmsProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Update uri="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", match="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    const/4 v13, 0x0

    .line 874
    .local v13, notify:Z
    const/4 v12, 0x0

    .line 877
    .local v12, msgId:Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    .line 898
    :pswitch_0
    const-string v16, "MmsProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Update operation for \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' not implemented."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/16 v16, 0x0

    .line 971
    .end local p1
    :goto_0
    return v16

    .line 883
    .restart local p1
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 890
    :pswitch_2
    const/4 v13, 0x1

    .line 891
    const-string v14, "pdu"

    .line 902
    .local v14, table:Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    .line 904
    .local v7, extraSelection:Ljava/lang/String;
    const-string v16, "pdu"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 906
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->filterUnsupportedKeys(Landroid/content/ContentValues;)V

    .line 907
    new-instance v9, Landroid/content/ContentValues;

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 909
    .local v9, finalValues:Landroid/content/ContentValues;
    if-eqz v12, :cond_1

    .line 910
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "_id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 929
    .end local p1
    :cond_1
    :goto_2
    move-object/from16 v0, p3

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 930
    .local v8, finalSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 934
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v16, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v16, :cond_2

    .line 935
    const-string v16, "MmsProvider"

    const-string v17, "update - doing update"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_2
    const/4 v15, 0x0

    .line 941
    .local v15, updatedMmsList:Ljava/util/ArrayList;
    const-string v16, "pdu"

    move-object v0, v14

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 942
    move-object v0, v6

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->getUpdatedMmsList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 946
    :cond_3
    move-object v0, v6

    move-object v1, v14

    move-object v2, v9

    move-object v3, v8

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 947
    .local v5, count:I
    if-eqz v13, :cond_6

    if-lez v5, :cond_6

    .line 950
    if-eqz v15, :cond_5

    .line 951
    new-instance v10, Landroid/content/Intent;

    const-string v16, "com.motorola.android.intent.action.MMS_UPDATED"

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 952
    .local v10, intent:Landroid/content/Intent;
    const-string v16, "updated_mms_list"

    move-object v0, v10

    move-object/from16 v1, v16

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 953
    sget-boolean v16, Lcom/android/providers/telephony/MmsProvider;->LOCAL_LOGV:Z

    if-eqz v16, :cond_4

    .line 954
    const-string v16, "MmsProvider"

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

    .line 956
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 960
    .end local v10           #intent:Landroid/content/Intent;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange()V

    .line 965
    :cond_6
    sget-boolean v16, Lcom/android/providers/telephony/MmsProvider;->DEBUG:Z

    if-eqz v16, :cond_7

    .line 966
    const-string v16, "MmsProvider"

    const-string v17, "update - finished"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move/from16 v16, v5

    .line 971
    goto/16 :goto_0

    .line 895
    .end local v5           #count:I
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #extraSelection:Ljava/lang/String;
    .end local v8           #finalSelection:Ljava/lang/String;
    .end local v9           #finalValues:Landroid/content/ContentValues;
    .end local v14           #table:Ljava/lang/String;
    .end local v15           #updatedMmsList:Ljava/util/ArrayList;
    .restart local p1
    :pswitch_3
    const-string v14, "part"

    .line 896
    .restart local v14       #table:Ljava/lang/String;
    goto/16 :goto_1

    .line 912
    .restart local v7       #extraSelection:Ljava/lang/String;
    :cond_8
    const-string v16, "part"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 913
    new-instance v9, Landroid/content/ContentValues;

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 915
    .restart local v9       #finalValues:Landroid/content/ContentValues;
    packed-switch v11, :pswitch_data_1

    goto/16 :goto_2

    .line 917
    :pswitch_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 918
    goto/16 :goto_2

    .line 920
    .restart local p1
    :pswitch_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "_id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 921
    goto/16 :goto_2

    .line 926
    .end local v9           #finalValues:Landroid/content/ContentValues;
    .restart local p1
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 877
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 915
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

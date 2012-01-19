.class public Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmsSmsDatabaseHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "mmssms.db"

.field static final DATABASE_VERSION:I = 0x36

.field private static final PART_UPDATE_THREADS_ON_DELETE_TRIGGER:Ljava/lang/String; = "CREATE TRIGGER update_threads_on_delete_part  AFTER DELETE ON part  WHEN old.ct != \'text/plain\' AND old.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment =    CASE     (SELECT COUNT(*) FROM part JOIN pdu      WHERE pdu.thread_id = threads._id      AND part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id)   WHEN 0 THEN 0    ELSE 1    END WHERE _id = (SELECT thread_id FROM pdu WHERE _id = old.mid);  END"

.field private static final PART_UPDATE_THREADS_ON_INSERT_TRIGGER:Ljava/lang/String; = "CREATE TRIGGER update_threads_on_insert_part  AFTER INSERT ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

.field private static final PART_UPDATE_THREADS_ON_UPDATE_TRIGGER:Ljava/lang/String; = "CREATE TRIGGER update_threads_on_update_part  AFTER UPDATE of mid ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

.field private static final PDU_UPDATE_THREADS_ON_UPDATE_TRIGGER:Ljava/lang/String; = "CREATE TRIGGER update_threads_on_update_pdu  AFTER UPDATE of thread_id ON pdu  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id); END"

.field private static final PDU_UPDATE_THREAD_CONSTRAINTS:Ljava/lang/String; = "  WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 "

.field private static final PDU_UPDATE_THREAD_DATE_SNIPPET_COUNT_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    sort_index = new.sort_index  WHERE threads._id = new.thread_id    AND threads.sort_index < new.sort_index;   UPDATE threads SET    date = new.date* 1000,     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id    AND threads.date < (new.date* 1000);   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

.field private static final PDU_UPDATE_THREAD_READ_BODY:Ljava/lang/String; = "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

.field private static final SMS_UPDATE_THREAD_DATE_SNIPPET_COUNT_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    sort_index = new.sort_index  WHERE threads._id = new.thread_id    AND threads.sort_index < new.sort_index;   UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id    AND threads.date < new.date;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

.field private static final SMS_UPDATE_THREAD_READ_BODY:Ljava/lang/String; = "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

.field private static final TAG:Ljava/lang/String; = "MmsSmsDatabaseHelper"

.field private static final UPDATE_THREAD_COUNT_ON_NEW:Ljava/lang/String; = "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id; "

.field private static final UPDATE_THREAD_COUNT_ON_OLD:Ljava/lang/String; = "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id; "

.field private static final UPDATE_THREAD_READ_BODY_AFTER_DELETE_UNREAD_PDU:Ljava/lang/String; = "  UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +           (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = old.thread_id; "

.field private static final UPDATE_THREAD_READ_BODY_AFTER_DELETE_UNREAD_SMS:Ljava/lang/String; = "  UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +           (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = old.thread_id; "

.field private static final UPDATE_THREAD_SNIPPET_SNIPPET_CS_ON_DELETE:Ljava/lang/String; = "  UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT sub AS snippet, thread_id, sort_index FROM pdu      UNION SELECT body AS snippet, thread_id, sort_index FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY sort_index DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET sort_index =    (SELECT sort_index FROM     (SELECT thread_id, sort_index FROM pdu      UNION SELECT thread_id, sort_index FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY sort_index DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT sub_cs AS snippet_cs, thread_id, sort_index FROM pdu      UNION SELECT 0 AS snippet_cs, thread_id, sort_index FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY sort_index DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

.field private static mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;


# instance fields
.field private mHasCheckedConsistency:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 297
    const-string v0, "mmssms.db"

    const/4 v1, 0x0

    const/16 v2, 0x36

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mHasCheckedConsistency:Z

    .line 298
    return-void
.end method

.method private createCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 811
    const-string v0, "CREATE TABLE canonical_addresses (_id INTEGER PRIMARY KEY,address TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 823
    const-string v0, "CREATE TABLE threads (_id INTEGER PRIMARY KEY,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_ids TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,has_attachment INTEGER DEFAULT 0,sort_index INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 846
    const-string v0, "CREATE TABLE pending_msgs (_id INTEGER PRIMARY KEY,proto_type INTEGER,msg_id INTEGER,msg_type INTEGER,err_type INTEGER,err_code INTEGER,retry_index INTEGER NOT NULL DEFAULT 0,due_time INTEGER,last_try INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method private createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 862
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    sort_index = new.sort_index  WHERE threads._id = new.thread_id    AND threads.sort_index < new.sort_index;   UPDATE threads SET    date = new.date* 1000,     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id    AND threads.date < (new.date* 1000);   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 868
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    sort_index = new.sort_index  WHERE threads._id = new.thread_id    AND threads.sort_index < new.sort_index;   UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id    AND threads.date < new.date;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 872
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    sort_index = new.sort_index  WHERE threads._id = new.thread_id    AND threads.sort_index < new.sort_index;   UPDATE threads SET    date = new.date* 1000,     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id    AND threads.date < (new.date* 1000);   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 879
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    sort_index = new.sort_index  WHERE threads._id = new.thread_id    AND threads.sort_index < new.sort_index;   UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id    AND threads.date < new.date;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 885
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 894
    const-string v0, "CREATE TRIGGER sms_update_thread_read_on_update AFTER  UPDATE OF read  ON sms BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 902
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id, sort_index FROM pdu         UNION SELECT date, thread_id, sort_index FROM sms)     WHERE thread_id=old.thread_id ORDER BY sort_index DESC LIMIT 1)  WHERE threads._id = old.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT sub AS snippet, thread_id, sort_index FROM pdu      UNION SELECT body AS snippet, thread_id, sort_index FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY sort_index DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET sort_index =    (SELECT sort_index FROM     (SELECT thread_id, sort_index FROM pdu      UNION SELECT thread_id, sort_index FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY sort_index DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT sub_cs AS snippet_cs, thread_id, sort_index FROM pdu      UNION SELECT 0 AS snippet_cs, thread_id, sort_index FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY sort_index DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 924
    const-string v0, "CREATE TRIGGER delete_obsolete_threads_pdu AFTER DELETE ON pdu BEGIN   DELETE FROM threads   WHERE     _id = old.thread_id     AND _id NOT IN     (SELECT thread_id FROM sms      UNION SELECT thread_id from pdu); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 935
    const-string v0, "CREATE TRIGGER delete_obsolete_threads_when_update_pdu AFTER UPDATE OF thread_id ON pdu WHEN old.thread_id != new.thread_id BEGIN   DELETE FROM threads   WHERE     _id = old.thread_id     AND _id NOT IN     (SELECT thread_id FROM sms      UNION SELECT thread_id from pdu); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 948
    const-string v0, "CREATE TRIGGER insert_mms_pending_on_insert AFTER INSERT ON pdu WHEN new.m_type=130  OR new.m_type=135 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,0,0,0,0);END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 969
    const-string v0, "CREATE TRIGGER insert_mms_pending_on_update AFTER UPDATE ON pdu WHEN new.m_type=128  AND new.msg_box=4  AND old.msg_box!=4 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,0,0,0,0);END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 990
    const-string v0, "CREATE TRIGGER delete_mms_pending_on_update AFTER UPDATE ON pdu WHEN old.msg_box=4  AND new.msg_box!=4 BEGIN   DELETE FROM pending_msgs  WHERE msg_id=new._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1000
    const-string v0, "CREATE TRIGGER delete_mms_pending_on_delete AFTER DELETE ON pdu BEGIN   DELETE FROM pending_msgs  WHERE msg_id=old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1011
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_mms   AFTER UPDATE OF err_type ON pending_msgs   WHEN (OLD.err_type < 10 AND NEW.err_type >= 10)    OR (OLD.err_type >= 10 AND NEW.err_type < 10) BEGIN  UPDATE threads SET error =     CASE      WHEN NEW.err_type >= 10 THEN error + 1      ELSE error - 1    END   WHERE _id =   (SELECT DISTINCT thread_id    FROM pdu    WHERE _id = NEW.msg_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1028
    const-string v0, "CREATE TRIGGER update_threads_error_on_delete_mms   BEFORE DELETE ON pdu  WHEN OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1040
    const-string v0, "CREATE TRIGGER update_threads_error_on_move_mms   BEFORE UPDATE OF msg_box ON pdu   WHEN (OLD.msg_box = 4 AND NEW.msg_box != 4)   AND (OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10)) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1053
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_sms   AFTER UPDATE OF type ON sms  WHEN (OLD.type != 5 AND NEW.type = 5)    OR (OLD.type = 5 AND NEW.type != 5) BEGIN   UPDATE threads SET error =     CASE      WHEN NEW.type = 5 THEN error + 1      ELSE error - 1    END   WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1069
    const-string v0, "CREATE TRIGGER sms_update_thread_read_on_delete_unread AFTER DELETE ON sms  WHEN old.read = 0 BEGIN   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +           (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1077
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_delete_unread AFTER DELETE ON pdu  WHEN old.read = 0 BEGIN   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +           (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1086
    return-void
.end method

.method private createIndices(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 585
    return-void
.end method

.method private createMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 599
    const-string v0, "CREATE TABLE pdu (_id INTEGER PRIMARY KEY,thread_id INTEGER,date INTEGER,msg_box INTEGER,read INTEGER DEFAULT 0,m_id TEXT,sub TEXT,sub_cs INTEGER,ct_t TEXT,ct_l TEXT,exp INTEGER,m_cls TEXT,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,tr_id TEXT,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,sort_index INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 638
    const-string v0, "CREATE TABLE addr (_id INTEGER PRIMARY KEY,msg_id INTEGER,contact_id INTEGER,address TEXT,type INTEGER,charset INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 646
    const-string v0, "CREATE TABLE part (_id INTEGER PRIMARY KEY,mid INTEGER,seq INTEGER DEFAULT 0,ct TEXT,name TEXT,chset INTEGER,cd TEXT,fn TEXT,cid TEXT,cl TEXT,ctt_s INTEGER,ctt_t TEXT,_data TEXT,text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 662
    const-string v0, "CREATE TABLE rate (sent_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 665
    const-string v0, "CREATE TABLE drm (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method private createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 672
    const-string v0, "CREATE TRIGGER part_cleanup DELETE ON pdu BEGIN   DELETE FROM part  WHERE mid=old._id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 679
    const-string v0, "CREATE TRIGGER addr_cleanup DELETE ON pdu BEGIN   DELETE FROM addr  WHERE msg_id=old._id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 687
    const-string v0, "CREATE TRIGGER cleanup_delivery_and_read_report AFTER DELETE ON pdu WHEN old.m_type=128 BEGIN   DELETE FROM pdu  WHERE (m_type=134    OR m_type=136)    AND m_id=old.m_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 700
    const-string v0, "CREATE TRIGGER update_threads_on_insert_part  AFTER INSERT ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 701
    const-string v0, "CREATE TRIGGER update_threads_on_update_part  AFTER UPDATE of mid ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 702
    const-string v0, "CREATE TRIGGER update_threads_on_delete_part  AFTER DELETE ON part  WHEN old.ct != \'text/plain\' AND old.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment =    CASE     (SELECT COUNT(*) FROM part JOIN pdu      WHERE pdu.thread_id = threads._id      AND part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id)   WHEN 0 THEN 0    ELSE 1    END WHERE _id = (SELECT thread_id FROM pdu WHERE _id = old.mid);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 703
    const-string v0, "CREATE TRIGGER update_threads_on_update_pdu  AFTER UPDATE of thread_id ON pdu  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method private createSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 709
    const-string v0, "CREATE TABLE sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date INTEGER,protocol INTEGER,read INTEGER DEFAULT 0,priority INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,callback_number TEXT,reply_path_present INTEGER,subject TEXT,body TEXT,service_center TEXT,failure_cause INTEGER DEFAULT -1,locked INTEGER DEFAULT 0,error_code INTEGER DEFAULT -33001,stack_type INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,sort_index INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 758
    const-string v0, "CREATE TABLE raw (_id INTEGER PRIMARY KEY,date INTEGER,reference_number INTEGER,count INTEGER,sequence INTEGER,destination_port INTEGER,address TEXT,pdu TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 768
    const-string v0, "CREATE TABLE attachments (sms_id INTEGER,content_url TEXT,offset INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 777
    const-string v0, "CREATE TABLE sr_pending (reference_number INTEGER,action TEXT,data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 785
    const-string v0, "CREATE TABLE message_pending (_id INTEGER PRIMARY KEY,msg_id INTEGER DEFAULT -1,address TEXT,retry_count INTEGER DEFAULT 0,total_segments INTEGER DEFAULT 0,total_destinations INTEGER DEFAULT 0,destinations_set_id INTEGER,error_code INTEGER DEFAULT -33001);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method private createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 589
    :try_start_0
    const-string v1, "CREATE INDEX IF NOT EXISTS typeThreadIdIndex ON sms (type, thread_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 592
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception creating indices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 557
    :try_start_0
    const-string v1, "CREATE VIRTUAL TABLE words USING FTS3 (_id INTEGER PRIMARY KEY, index_text TEXT, source_id INTEGER, table_to_use INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 564
    const-string v1, "CREATE TRIGGER sms_words_update AFTER UPDATE ON sms BEGIN UPDATE words  SET index_text = NEW.body WHERE (source_id=NEW._id AND table_to_use=1);  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 567
    const-string v1, "CREATE TRIGGER sms_words_delete AFTER DELETE ON sms BEGIN DELETE FROM   words WHERE source_id = OLD._id AND table_to_use = 1; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 571
    const-string v1, "CREATE TRIGGER mms_words_update AFTER UPDATE ON part BEGIN UPDATE words  SET index_text = NEW.text WHERE (source_id=NEW._id AND table_to_use=2);  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 574
    const-string v1, "CREATE TRIGGER mms_words_delete AFTER DELETE ON part BEGIN DELETE FROM  words WHERE source_id = OLD._id AND table_to_use = 2; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 577
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->populateWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 579
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception creating words table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteOneSms(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 13
    .parameter "db"
    .parameter "message_id"

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    const-string v1, "sms"

    const-string v12, "_id="

    .line 453
    const/4 v10, -0x1

    .line 455
    .local v10, thread_id:I
    const-string v0, "sms"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 457
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 458
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 461
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_1
    const-string v0, "sms"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 466
    .local v9, rows:I
    if-lez v10, :cond_2

    .line 468
    int-to-long v0, v10

    invoke-static {p0, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 470
    :cond_2
    return v9
.end method

.method private dropAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1333
    const-string v0, "DROP TABLE IF EXISTS canonical_addresses"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1334
    const-string v0, "DROP TABLE IF EXISTS threads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1335
    const-string v0, "DROP TABLE IF EXISTS pending_msgs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1336
    const-string v0, "DROP TABLE IF EXISTS sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1337
    const-string v0, "DROP TABLE IF EXISTS raw"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1338
    const-string v0, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1339
    const-string v0, "DROP TABLE IF EXISTS thread_ids"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1340
    const-string v0, "DROP TABLE IF EXISTS sr_pending"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1341
    const-string v0, "DROP TABLE IF EXISTS pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1342
    const-string v0, "DROP TABLE IF EXISTS addr;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1343
    const-string v0, "DROP TABLE IF EXISTS part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1344
    const-string v0, "DROP TABLE IF EXISTS rate;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1345
    const-string v0, "DROP TABLE IF EXISTS drm;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1347
    const-string v0, "DROP TABLE IF EXISTS message_pending"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1349
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 305
    const-class v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    if-nez v1, :cond_0

    .line 306
    new-instance v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 308
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private populateWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19
    .parameter "db"

    .prologue
    .line 487
    const-string v12, "words"

    .line 489
    .local v12, TABLE_WORDS:Ljava/lang/String;
    const-string v5, "sms"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "body"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 498
    .local v18, smsRows:Landroid/database/Cursor;
    if-eqz v18, :cond_1

    .line 499
    const/4 v4, -0x1

    :try_start_0
    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 500
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 501
    .local v14, cv:Landroid/content/ContentValues;
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 502
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 504
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 505
    .local v15, id:J
    const/4 v4, 0x1

    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 507
    .local v13, body:Ljava/lang/String;
    const-string v4, "_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 508
    const-string v4, "index_text"

    invoke-virtual {v14, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v4, "source_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 510
    const-string v4, "table_to_use"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    const-string v4, "words"

    const-string v5, "index_text"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 515
    .end local v13           #body:Ljava/lang/String;
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v15           #id:J
    :catchall_0
    move-exception v4

    if-eqz v18, :cond_0

    .line 516
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v4

    .line 515
    :cond_1
    if-eqz v18, :cond_2

    .line 516
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_2
    const-string v5, "part"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "text"

    aput-object v7, v6, v4

    const-string v7, "ct = \'text/plain\'"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 531
    .local v17, mmsRows:Landroid/database/Cursor;
    if-eqz v17, :cond_4

    .line 532
    const/4 v4, -0x1

    :try_start_1
    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 533
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 534
    .restart local v14       #cv:Landroid/content/ContentValues;
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 535
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 537
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 538
    .restart local v15       #id:J
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 540
    .restart local v13       #body:Ljava/lang/String;
    const-string v4, "_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 541
    const-string v4, "index_text"

    invoke-virtual {v14, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v4, "source_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 543
    const-string v4, "table_to_use"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    const-string v4, "words"

    const-string v5, "index_text"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 548
    .end local v13           #body:Ljava/lang/String;
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v15           #id:J
    :catchall_1
    move-exception v4

    if-eqz v17, :cond_3

    .line 549
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    .line 548
    :cond_4
    if-eqz v17, :cond_5

    .line 549
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_5
    return-void
.end method

.method private recreateOnPartDeleteTriggerFromVersion43To54(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1429
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "recreateOnPartDeleteTriggerFromVersion43To54."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_on_delete_part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1431
    const-string v0, "CREATE TRIGGER update_threads_on_delete_part  AFTER DELETE ON part  WHEN old.ct != \'text/plain\' AND old.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment =    CASE     (SELECT COUNT(*) FROM part JOIN pdu      WHERE pdu.thread_id = threads._id      AND part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id)   WHEN 0 THEN 0    ELSE 1    END WHERE _id = (SELECT thread_id FROM pdu WHERE _id = old.mid);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1432
    return-void
.end method

.method public static updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-string v4, ")"

    .line 427
    if-nez p1, :cond_0

    .line 428
    const-string p1, ""

    .line 432
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 435
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 437
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 441
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 430
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #query:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHERE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 441
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #query:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 446
    :cond_2
    const-string v2, "threads"

    const-string v3, "_id NOT IN (SELECT DISTINCT thread_id FROM sms UNION SELECT DISTINCT thread_id FROM pdu)"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .locals 4
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, thread_ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 418
    .local v1, l:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 420
    .end local v1           #l:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method public static updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .parameter "db"
    .parameter "thread_id"

    .prologue
    .line 312
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 313
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    .line 413
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 320
    .restart local p1
    :cond_1
    const-string v0, "threads"

    const-string v1, "_id = ? AND _id NOT IN          (SELECT thread_id FROM sms            UNION SELECT thread_id FROM pdu)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 325
    .local v0, rows:I
    if-gtz v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #rows:I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        AND sms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != 3) + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "      ON threads._id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "      WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        AND (m_type=132 OR m_type=130 OR m_type=128)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "msg_box"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != 3) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  WHERE threads._id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id, sort_index FROM pdu         UNION SELECT date, thread_id, sort_index FROM sms)     WHERE thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY sort_index DESC LIMIT 1),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  sort_index ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    (SELECT sort_index FROM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        (SELECT thread_id, sort_index FROM pdu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         UNION SELECT thread_id, sort_index FROM sms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     WHERE thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY sort_index DESC LIMIT 1),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  snippet ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    (SELECT snippet FROM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        (SELECT sub AS snippet, thread_id, sort_index FROM pdu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         UNION SELECT body AS snippet, thread_id, sort_index FROM sms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     WHERE thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY sort_index DESC LIMIT 1),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  snippet_cs ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    (SELECT snippet_cs FROM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        (SELECT sub_cs AS snippet_cs, thread_id, sort_index FROM pdu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         UNION SELECT 0 AS snippet_cs, thread_id, sort_index FROM sms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     WHERE thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY sort_index DESC LIMIT 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  WHERE threads._id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT thread_id FROM sms WHERE type=5 AND thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, query:Ljava/lang/String;
    const/4 v1, 0x0

    .line 388
    .local v1, setError:I
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 389
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 391
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 393
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v2, v1

    .line 397
    .end local v1           #setError:I
    .local v2, setError:I
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #c:Landroid/database/Cursor;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT error FROM threads WHERE _id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, errorQuery:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 399
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 401
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 403
    .local v1, curError:I
    if-eq v1, v2, :cond_2

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #curError:I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE threads SET error="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE _id = "

    .end local v2           #setError:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 410
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 393
    .local v1, setError:I
    .restart local p1
    :catchall_0
    move-exception p0

    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .line 410
    .end local v1           #setError:I
    .end local p1
    .restart local p0
    :catchall_1
    move-exception p0

    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .restart local v1       #setError:I
    .restart local p0
    .restart local p1
    :cond_3
    move v2, v1

    .end local v1           #setError:I
    .restart local v2       #setError:I
    goto :goto_1
.end method

.method private updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1543
    const-string v0, "UPDATE threads SET has_attachment=1 WHERE _id IN   (SELECT DISTINCT pdu.thread_id FROM part    JOIN pdu ON pdu._id=part.mid    WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1547
    return-void
.end method

.method private updateTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1553
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1554
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    sort_index = new.sort_index  WHERE threads._id = new.thread_id    AND threads.sort_index < new.sort_index;   UPDATE threads SET    date = new.date* 1000,     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id    AND threads.date < (new.date* 1000);   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1560
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1561
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    sort_index = new.sort_index  WHERE threads._id = new.thread_id    AND threads.sort_index < new.sort_index;   UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id    AND threads.date < new.date;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1565
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1566
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    sort_index = new.sort_index  WHERE threads._id = new.thread_id    AND threads.sort_index < new.sort_index;   UPDATE threads SET    date = new.date* 1000,     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id    AND threads.date < (new.date* 1000);   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1573
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1574
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    sort_index = new.sort_index  WHERE threads._id = new.thread_id    AND threads.sort_index < new.sort_index;   UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id    AND threads.date < new.date;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1580
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1581
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id, sort_index FROM pdu         UNION SELECT date, thread_id, sort_index FROM sms)     WHERE thread_id=old.thread_id ORDER BY sort_index DESC LIMIT 1)  WHERE threads._id = old.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT sub AS snippet, thread_id, sort_index FROM pdu      UNION SELECT body AS snippet, thread_id, sort_index FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY sort_index DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET sort_index =    (SELECT sort_index FROM     (SELECT thread_id, sort_index FROM pdu      UNION SELECT thread_id, sort_index FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY sort_index DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT sub_cs AS snippet_cs, thread_id, sort_index FROM pdu      UNION SELECT 0 AS snippet_cs, thread_id, sort_index FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY sort_index DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1595
    return-void
.end method

.method private upgradeDatabaseToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1352
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_move_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1353
    const-string v0, "CREATE TRIGGER update_threads_error_on_move_mms   BEFORE UPDATE OF msg_box ON pdu   WHEN (OLD.msg_box = 4 AND NEW.msg_box != 4)   AND (OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10)) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1363
    return-void
.end method

.method private upgradeDatabaseToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1366
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1367
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1368
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1369
    return-void
.end method

.method private upgradeDatabaseToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1373
    const-string v0, "ALTER TABLE threads ADD COLUMN has_attachment INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1375
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1378
    const-string v0, "CREATE TRIGGER update_threads_on_insert_part  AFTER INSERT ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1379
    const-string v0, "CREATE TRIGGER update_threads_on_delete_part  AFTER DELETE ON part  WHEN old.ct != \'text/plain\' AND old.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment =    CASE     (SELECT COUNT(*) FROM part JOIN pdu      WHERE pdu.thread_id = threads._id      AND part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id)   WHEN 0 THEN 0    ELSE 1    END WHERE _id = (SELECT thread_id FROM pdu WHERE _id = old.mid);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1380
    return-void
.end method

.method private upgradeDatabaseToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1386
    const-string v0, "CREATE TRIGGER update_threads_on_update_part  AFTER UPDATE of mid ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1387
    return-void
.end method

.method private upgradeDatabaseToVersion45(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1391
    const-string v0, "ALTER TABLE sms ADD COLUMN locked INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1394
    const-string v0, "ALTER TABLE pdu ADD COLUMN locked INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1395
    return-void
.end method

.method private upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 24
    .parameter "db"

    .prologue
    .line 1437
    const-string v3, "ALTER TABLE part ADD COLUMN text TEXT"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1439
    const-string v4, "part"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "_data"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "text"

    aput-object v6, v5, v3

    const-string v6, "ct = \'text/plain\' OR ct == \'application/smil\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1447
    .local v22, textRows:Landroid/database/Cursor;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1449
    .local v14, filesToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v22, :cond_2

    .line 1450
    :try_start_0
    const-string v3, "_id"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1451
    .local v18, partIdColumn:I
    const-string v3, "_data"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1452
    .local v17, partDataColumn:I
    const-string v3, "text"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1458
    .local v19, partTextColumn:I
    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1459
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 1460
    .local v20, path:Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 1462
    :try_start_1
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1463
    .local v16, is:Ljava/io/InputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v11, v3, [B

    .line 1464
    .local v11, data:[B
    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 1465
    new-instance v23, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 1466
    .local v23, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->updateString(ILjava/lang/String;)Z

    .line 1467
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->updateToNull(I)Z

    .line 1468
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 1469
    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1470
    .end local v11           #data:[B
    .end local v16           #is:Ljava/io/InputStream;
    .end local v23           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 1472
    .local v12, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1480
    .end local v12           #e:Ljava/io/IOException;
    .end local v17           #partDataColumn:I
    .end local v18           #partIdColumn:I
    .end local v19           #partTextColumn:I
    .end local v20           #path:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v22, :cond_1

    .line 1481
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->commitUpdates()Z

    .line 1485
    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1487
    .local v21, pathToDelete:Ljava/lang/String;
    :try_start_3
    new-instance v4, Ljava/io/File;

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1488
    :catch_1
    move-exception v4

    move-object v13, v4

    .line 1489
    .local v13, ex:Ljava/lang/SecurityException;
    const-string v4, "MmsSmsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to clean up old mms file for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1480
    .end local v13           #ex:Ljava/lang/SecurityException;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v21           #pathToDelete:Ljava/lang/String;
    :cond_2
    if-eqz v22, :cond_3

    .line 1481
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->commitUpdates()Z

    .line 1485
    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1487
    .restart local v21       #pathToDelete:Ljava/lang/String;
    :try_start_4
    new-instance v3, Ljava/io/File;

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1488
    :catch_2
    move-exception v3

    move-object v13, v3

    .line 1489
    .restart local v13       #ex:Ljava/lang/SecurityException;
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to clean up old mms file for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1492
    .end local v13           #ex:Ljava/lang/SecurityException;
    .end local v21           #pathToDelete:Ljava/lang/String;
    :cond_4
    if-eqz v22, :cond_5

    .line 1493
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1496
    :cond_5
    return-void

    .line 1492
    :cond_6
    if-eqz v22, :cond_7

    .line 1493
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3
.end method

.method private upgradeDatabaseToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1499
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1502
    const-string v0, "CREATE TRIGGER update_threads_on_update_pdu  AFTER UPDATE of thread_id ON pdu  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1507
    const-string v0, "ALTER TABLE sms ADD COLUMN sort_index INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1510
    const-string v0, "ALTER TABLE pdu ADD COLUMN sort_index INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1513
    return-void
.end method

.method private upgradeDatabaseToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1517
    const-string v0, "ALTER TABLE sms ADD COLUMN error_code INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1518
    return-void
.end method

.method private upgradeDatabaseToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    const-string v3, "read=1"

    const-string v3, "[MmsSmsDb] upgradeDatabaseToVersion51: updated "

    const-string v6, "MmsSmsDatabaseHelper"

    .line 1521
    const-string v3, "ALTER TABLE sms add COLUMN seen INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1522
    const-string v3, "ALTER TABLE pdu add COLUMN seen INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1527
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1528
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1529
    const-string v3, "sms"

    const-string v4, "read=1"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1530
    .local v1, count:I
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MmsSmsDb] upgradeDatabaseToVersion51: updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows in sms table to have READ=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    const-string v3, "pdu"

    const-string v4, "read=1"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1533
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MmsSmsDb] upgradeDatabaseToVersion51: updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows in pdu table to have READ=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #count:I
    :goto_0
    return-void

    .line 1535
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1536
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "MmsSmsDatabaseHelper"

    const-string v3, "[MmsSmsDb] upgradeDatabaseToVersion51 caught "

    invoke-static {v6, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1398
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1401
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1412
    const-string v0, "UPDATE threads SET sort_index = date"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1413
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1416
    return-void
.end method

.method private upgradeDatabaseToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1422
    const-string v0, "ALTER TABLE sms ADD COLUMN stack_type INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1423
    return-void
.end method


# virtual methods
.method public declared-synchronized checkConsistency()V
    .locals 4

    .prologue
    const-string v2, "MmsSmsDatabaseHelper"

    .line 1600
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mHasCheckedConsistency:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1614
    :goto_0
    monitor-exit p0

    return-void

    .line 1603
    :cond_0
    :try_start_1
    const-string v2, "MmsSmsDatabaseHelper"

    const-string v3, "beg of check consistency"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1605
    :try_start_2
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1606
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "delete from sms where thread_id NOT IN (select _id from threads);"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1607
    const-string v2, "delete from pdu where thread_id NOT IN (select _id from threads);"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1611
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mHasCheckedConsistency:Z

    .line 1613
    const-string v2, "MmsSmsDatabaseHelper"

    const-string v3, "end of check consistency"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1600
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1608
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1609
    .local v1, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "MmsSmsDatabaseHelper"

    const-string v3, "exception in checkConsistency():"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 476
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 477
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 478
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 479
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 480
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 481
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIndices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 482
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    const/16 v4, 0x2b

    const-string v3, "MmsSmsDatabaseHelper"

    .line 1090
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    if-lt p2, v4, :cond_0

    const/16 v1, 0x36

    if-gt p2, v1, :cond_0

    .line 1096
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->recreateOnPartDeleteTriggerFromVersion43To54(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    :cond_0
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 1324
    :goto_1
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v1, "Destroying all old data."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1326
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1327
    :cond_1
    :goto_2
    return-void

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1104
    .end local v0           #ex:Ljava/lang/Throwable;
    :pswitch_0
    const/16 v1, 0x28

    if-le p3, v1, :cond_1

    .line 1108
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1110
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1111
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1116
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1120
    :pswitch_1
    const/16 v1, 0x29

    if-le p3, v1, :cond_1

    .line 1124
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1126
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1127
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1132
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1136
    :pswitch_2
    const/16 v1, 0x2a

    if-le p3, v1, :cond_1

    .line 1140
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1142
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1143
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1148
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1152
    :pswitch_3
    if-le p3, v4, :cond_1

    .line 1156
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1158
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1159
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1164
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1168
    :pswitch_4
    const/16 v1, 0x2c

    if-le p3, v1, :cond_1

    .line 1172
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1174
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion45(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1175
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1180
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1184
    :pswitch_5
    const/16 v1, 0x2d

    if-le p3, v1, :cond_1

    .line 1187
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1189
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1190
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1195
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1199
    :pswitch_6
    const/16 v1, 0x2e

    if-le p3, v1, :cond_1

    .line 1203
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1205
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1206
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 1211
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1215
    :pswitch_7
    const/16 v1, 0x2f

    if-le p3, v1, :cond_1

    .line 1219
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1221
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1222
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 1227
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1231
    :pswitch_8
    const/16 v1, 0x30

    if-le p3, v1, :cond_1

    .line 1235
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1237
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1238
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 1243
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1247
    :pswitch_9
    const/16 v1, 0x31

    if-le p3, v1, :cond_1

    .line 1250
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1252
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1253
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 1258
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1262
    :pswitch_a
    const/16 v1, 0x32

    if-le p3, v1, :cond_1

    .line 1266
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1268
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1269
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 1274
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1278
    :pswitch_b
    const/16 v1, 0x33

    if-le p3, v1, :cond_1

    .line 1284
    :pswitch_c
    const/16 v1, 0x34

    if-le p3, v1, :cond_1

    .line 1288
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1290
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1291
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 1296
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1302
    :pswitch_d
    const/16 v1, 0x35

    if-le p3, v1, :cond_1

    .line 1306
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1308
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1311
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1313
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 1318
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2

    .line 1112
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1113
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_e
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1116
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1128
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 1129
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_f
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1132
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1144
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 1145
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_10
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1148
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1160
    :catch_4
    move-exception v1

    move-object v0, v1

    .line 1161
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_11
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1164
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_3
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1176
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 1177
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_12
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 1180
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_4
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1191
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1192
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_13
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 1195
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_5
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1207
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1208
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_14
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 1211
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_6
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1223
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 1224
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_15
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 1227
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_7
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1239
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 1240
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 1243
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_8
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1254
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1255
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_17
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 1258
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_9
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1270
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1271
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_18
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 1274
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_a
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1292
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 1293
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_19
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 1296
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_b
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1314
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 1315
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1a
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    .line 1318
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_c
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1102
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

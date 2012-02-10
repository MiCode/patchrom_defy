.class Lcom/motorola/ringtone/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "AlarmClock"

.field static final LOGV:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static e(Ljava/lang/String;)V
    .locals 1
    .parameter "logMe"

    .prologue
    .line 36
    const-string v0, "AlarmClock"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "logMe"
    .parameter "ex"

    .prologue
    .line 40
    const-string v0, "AlarmClock"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    return-void
.end method

.method static v(Ljava/lang/String;)V
    .locals 1
    .parameter "logMe"

    .prologue
    .line 32
    const-string v0, "AlarmClock"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.class Lcom/android/settings/PowerScheduleSettings$2;
.super Ljava/lang/Object;
.source "PowerScheduleSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PowerScheduleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PowerScheduleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PowerScheduleSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/PowerScheduleSettings$2;->this$0:Lcom/android/settings/PowerScheduleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings$2;->this$0:Lcom/android/settings/PowerScheduleSettings;

    #setter for: Lcom/android/settings/PowerScheduleSettings;->mPowerupHour:I
    invoke-static {v0, p2}, Lcom/android/settings/PowerScheduleSettings;->access$402(Lcom/android/settings/PowerScheduleSettings;I)I

    .line 95
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings$2;->this$0:Lcom/android/settings/PowerScheduleSettings;

    #setter for: Lcom/android/settings/PowerScheduleSettings;->mPowerupMinutes:I
    invoke-static {v0, p3}, Lcom/android/settings/PowerScheduleSettings;->access$502(Lcom/android/settings/PowerScheduleSettings;I)I

    .line 96
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings$2;->this$0:Lcom/android/settings/PowerScheduleSettings;

    #calls: Lcom/android/settings/PowerScheduleSettings;->isTimeCorrect()Z
    invoke-static {v0}, Lcom/android/settings/PowerScheduleSettings;->access$200(Lcom/android/settings/PowerScheduleSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/PowerScheduleSettings$2;->this$0:Lcom/android/settings/PowerScheduleSettings;

    #calls: Lcom/android/settings/PowerScheduleSettings;->savePowerOnTime()V
    invoke-static {v0}, Lcom/android/settings/PowerScheduleSettings;->access$600(Lcom/android/settings/PowerScheduleSettings;)V

    .line 99
    :cond_0
    return-void
.end method

.class public final enum Lcom/android/settings/ChooseLockPassword$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/ChooseLockPassword$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/ChooseLockPassword$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

.field public static final enum Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x7f080389

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/android/settings/ChooseLockPassword$Stage;

    const-string v1, "Introduction"

    const v3, 0x7f080522

    const v4, 0x7f080523

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ChooseLockPassword$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 96
    new-instance v6, Lcom/android/settings/ChooseLockPassword$Stage;

    const-string v7, "NeedToConfirm"

    const v9, 0x7f080524

    const v10, 0x7f080525

    const v11, 0x7f080393

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/ChooseLockPassword$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 100
    new-instance v9, Lcom/android/settings/ChooseLockPassword$Stage;

    const-string v10, "ConfirmWrong"

    const v12, 0x7f080526

    const v13, 0x7f080527

    move v11, v15

    move v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/android/settings/ChooseLockPassword$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/android/settings/ChooseLockPassword$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/settings/ChooseLockPassword$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->$VALUES:[Lcom/android/settings/ChooseLockPassword$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "hintInAlpha"
    .parameter "hintInNumeric"
    .parameter "nextButtonText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput p3, p0, Lcom/android/settings/ChooseLockPassword$Stage;->alphaHint:I

    .line 109
    iput p4, p0, Lcom/android/settings/ChooseLockPassword$Stage;->numericHint:I

    .line 110
    iput p5, p0, Lcom/android/settings/ChooseLockPassword$Stage;->buttonText:I

    .line 111
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$Stage;
    .locals 1
    .parameter "name"

    .prologue
    .line 90
    const-class v0, Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/ChooseLockPassword$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/ChooseLockPassword$Stage;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->$VALUES:[Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/ChooseLockPassword$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ChooseLockPassword$Stage;

    return-object v0
.end method

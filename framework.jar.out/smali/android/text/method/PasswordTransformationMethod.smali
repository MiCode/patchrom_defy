.class public Landroid/text/method/PasswordTransformationMethod;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/PasswordTransformationMethod$ViewReference;,
        Landroid/text/method/PasswordTransformationMethod$Visible;,
        Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
    }
.end annotation


# static fields
.field private static DOT:C

.field private static sInstance:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x2022

    sput-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()C
    .locals 1

    .prologue
    sget-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return v0
.end method

.method public static getInstance()Landroid/text/method/PasswordTransformationMethod;
    .locals 1

    .prologue
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    goto :goto_0
.end method

.method private static removeVisibleSpans(Landroid/text/Spannable;)V
    .locals 5
    .parameter "sp"

    .prologue
    const/4 v2, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {p0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .local v1, old:[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    return-void
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "source"
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    instance-of v4, p1, Landroid/text/Spannable;

    if-eqz v4, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v2, v0

    .local v2, sp:Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-interface {v2, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .local v3, vr:[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    invoke-interface {v2, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    new-instance v4, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-direct {v4, p2}, Landroid/text/method/PasswordTransformationMethod$ViewReference;-><init>(Landroid/view/View;)V

    const/16 v5, 0x22

    invoke-interface {v2, v4, v6, v6, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .end local v1           #i:I
    .end local v2           #sp:Landroid/text/Spannable;
    .end local v3           #vr:[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_1
    new-instance v4, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;

    invoke-direct {v4, p1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;-><init>(Ljava/lang/CharSequence;)V

    return-object v4
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "view"
    .parameter "sourceText"
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    if-nez p3, :cond_0

    instance-of v2, p2, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    .local v1, sp:Landroid/text/Spannable;
    invoke-static {v1}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .end local v1           #sp:Landroid/text/Spannable;
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    instance-of v6, p1, Landroid/text/Spannable;

    if-eqz v6, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v3, v0

    .local v3, sp:Landroid/text/Spannable;
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-interface {v3, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .local v5, vr:[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    array-length v6, v5

    if-nez v6, :cond_1

    .end local v3           #sp:Landroid/text/Spannable;
    .end local v5           #vr:[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_0
    :goto_0
    return-void

    .restart local v3       #sp:Landroid/text/Spannable;
    .restart local v5       #vr:[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_1
    const/4 v4, 0x0

    .local v4, v:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-nez v4, :cond_2

    array-length v6, v5

    if-ge v1, v6, :cond_2

    aget-object v6, v5, v1

    invoke-virtual {v6}, Landroid/text/method/PasswordTransformationMethod$ViewReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #v:Landroid/view/View;
    check-cast v4, Landroid/view/View;

    .restart local v4       #v:Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v2

    .local v2, pref:I
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_0

    if-lez p4, :cond_0

    invoke-static {v3}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    const/4 v6, 0x1

    if-ne p4, v6, :cond_0

    new-instance v6, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-direct {v6, v3, p0}, Landroid/text/method/PasswordTransformationMethod$Visible;-><init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V

    add-int v7, p2, p4

    const/16 v8, 0x21

    invoke-interface {v3, v6, p2, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.class public Lcom/android/settings/wifi/WifiApInfoService$LocalBinder;
.super Landroid/os/Binder;
.source "WifiApInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApInfoService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiApInfoService;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$LocalBinder;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/settings/wifi/WifiApInfoService;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$LocalBinder;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    return-object v0
.end method

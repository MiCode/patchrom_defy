.class Lcom/android/settings/SplashScreenActivity$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SplashScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SplashScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings/SplashScreenActivity$1;->this$0:Lcom/android/settings/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/SplashScreenActivity$1;->this$0:Lcom/android/settings/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/android/settings/SplashScreenActivity;->savePreferences()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/SplashScreenActivity$1;->this$0:Lcom/android/settings/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/android/settings/SplashScreenActivity;->removeAppFromRecentListAndStackHistory()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/SplashScreenActivity$1;->this$0:Lcom/android/settings/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/android/settings/SplashScreenActivity;->finish()V

    .line 136
    return-void
.end method

.class Lcom/android/settings/vpn/VpnAddOrRetrieve$1;
.super Ljava/lang/Object;
.source "VpnAddOrRetrieve.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnAddOrRetrieve;->retrieveVpnListFromStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/vpn/VpnProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnAddOrRetrieve;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnAddOrRetrieve;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings/vpn/VpnAddOrRetrieve$1;->this$0:Lcom/android/settings/vpn/VpnAddOrRetrieve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnProfile;)I
    .locals 2
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 344
    check-cast p1, Landroid/net/vpn/VpnProfile;

    .end local p1
    check-cast p2, Landroid/net/vpn/VpnProfile;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/vpn/VpnAddOrRetrieve$1;->compare(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnProfile;)I

    move-result v0

    return v0
.end method

.method public equals(Landroid/net/vpn/VpnProfile;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

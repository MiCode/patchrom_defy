.class public Landroid/net/vpn/L2tpIpsecProfile;
.super Landroid/net/vpn/L2tpProfile;
.source "L2tpIpsecProfile.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCaCertificate:Ljava/lang/String;

.field private mUserCertificate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/net/vpn/L2tpProfile;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaCertificate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/vpn/L2tpIpsecProfile;->mCaCertificate:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Landroid/net/vpn/VpnType;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/vpn/VpnType;->L2TP_IPSEC:Landroid/net/vpn/VpnType;

    return-object v0
.end method

.method public getUserCertificate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/vpn/L2tpIpsecProfile;->mUserCertificate:Ljava/lang/String;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-super {p0, p1}, Landroid/net/vpn/L2tpProfile;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/L2tpIpsecProfile;->mCaCertificate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/L2tpIpsecProfile;->mUserCertificate:Ljava/lang/String;

    return-void
.end method

.method public setCaCertificate(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    iput-object p1, p0, Landroid/net/vpn/L2tpIpsecProfile;->mCaCertificate:Ljava/lang/String;

    return-void
.end method

.method public setUserCertificate(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    iput-object p1, p0, Landroid/net/vpn/L2tpIpsecProfile;->mUserCertificate:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/net/vpn/L2tpProfile;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/net/vpn/L2tpIpsecProfile;->mCaCertificate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/vpn/L2tpIpsecProfile;->mUserCertificate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.class Landroid/telephony/CellInfoTdscdma$1;
.super Ljava/lang/Object;
.source "CellInfoTdscdma.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellInfoTdscdma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellInfoTdscdma;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfoTdscdma;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-static {p1}, Landroid/telephony/CellInfoTdscdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoTdscdma;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/CellInfoTdscdma$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfoTdscdma;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/CellInfoTdscdma;
    .locals 1

    new-array v0, p1, [Landroid/telephony/CellInfoTdscdma;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/CellInfoTdscdma$1;->newArray(I)[Landroid/telephony/CellInfoTdscdma;

    move-result-object p1

    return-object p1
.end method

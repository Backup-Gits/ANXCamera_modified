.class Lmiui/process/ProcessCloudData$1;
.super Ljava/lang/Object;
.source "ProcessCloudData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/process/ProcessCloudData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/process/ProcessCloudData;",
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
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/process/ProcessCloudData$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/process/ProcessCloudData;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/process/ProcessCloudData;
    .locals 1

    new-instance v0, Lmiui/process/ProcessCloudData;

    invoke-direct {v0, p1}, Lmiui/process/ProcessCloudData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/process/ProcessCloudData$1;->newArray(I)[Lmiui/process/ProcessCloudData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/process/ProcessCloudData;
    .locals 1

    new-array v0, p1, [Lmiui/process/ProcessCloudData;

    return-object v0
.end method

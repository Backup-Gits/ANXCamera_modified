.class public final Landroid/bluetooth/BleScanWrapper;
.super Ljava/lang/Object;
.source "BleScanWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BleScanWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClientIf:I

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFlagIntent:Z

.field private final mOpPackageName:Ljava/lang/String;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mResultStorages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/bluetooth/le/ScanSettings;

.field private final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BleScanWrapper$1;

    invoke-direct {v0}, Landroid/bluetooth/BleScanWrapper$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BleScanWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/os/WorkSource;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BleScanWrapper;->mIsFlagIntent:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    iput p1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    iput-object p2, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iput-object p3, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    iput-object p4, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    iput-object p5, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    iput-object p6, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/BleScanWrapper;->mIsFlagIntent:Z

    iput-object p1, p0, Landroid/bluetooth/BleScanWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    iput-object p2, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iput-object p3, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    iput-object p4, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanSettings;

    iput-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    :goto_0
    sget-object v0, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/bluetooth/BleScanWrapper;->mIsFlagIntent:Z

    iget-boolean v2, p0, Landroid/bluetooth/BleScanWrapper;->mIsFlagIntent:Z

    if-eqz v2, :cond_2

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_2

    :cond_2
    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    :goto_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BleScanWrapper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BleScanWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/BleScanWrapper;

    iget-boolean v3, p0, Landroid/bluetooth/BleScanWrapper;->mIsFlagIntent:Z

    if-eqz v3, :cond_2

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, v2, Landroid/bluetooth/BleScanWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    iget v3, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    iget v4, v2, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroid/bluetooth/BleScanWrapper;->mIsFlagIntent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public startScan(Landroid/bluetooth/IBluetoothGatt;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/bluetooth/BleScanWrapper;->mIsFlagIntent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v2, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v5, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    iget-object v6, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v7, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    iget-object v8, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v9

    move-object v4, p1

    invoke-interface/range {v4 .. v9}, Landroid/bluetooth/IBluetoothGatt;->startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public stopScan(Landroid/bluetooth/IBluetoothGatt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/bluetooth/BleScanWrapper;->mIsFlagIntent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetoothGatt;->stopScanForIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-interface {p1, v0}, Landroid/bluetooth/IBluetoothGatt;->stopScan(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[mClientIf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v0, p1, v2}, Landroid/bluetooth/le/ScanSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, p1, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BleScanWrapper;->mIsFlagIntent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/bluetooth/BleScanWrapper;->mIsFlagIntent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_2
    return-void
.end method

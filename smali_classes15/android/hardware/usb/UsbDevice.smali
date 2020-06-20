.class public Landroid/hardware/usb/UsbDevice;
.super Ljava/lang/Object;
.source "UsbDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbDevice$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbDevice"


# instance fields
.field private final mClass:I

.field private final mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

.field private mInterfaces:[Landroid/hardware/usb/UsbInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mManufacturerName:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mProductId:I

.field private final mProductName:Ljava/lang/String;

.field private final mProtocol:I

.field private final mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

.field private final mSubclass:I

.field private final mVendorId:I

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/usb/UsbDevice$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbDevice$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Landroid/hardware/usb/IUsbSerialReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    iput p3, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    iput p4, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    iput p5, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    iput p6, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    iput-object p7, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    iput-object p8, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    invoke-static {p9}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/UsbDevice;->mVersion:Ljava/lang/String;

    const-string v0, "configurations"

    invoke-static {p10, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/usb/UsbConfiguration;

    iput-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    invoke-static {p11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/IUsbSerialReader;

    iput-object v0, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    instance-of v0, v0, Landroid/hardware/usb/IUsbSerialReader$Stub;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Landroid/hardware/usb/IUsbSerialReader;Landroid/hardware/usb/UsbDevice$1;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Landroid/hardware/usb/IUsbSerialReader;)V

    return-void
.end method

.method public static getDeviceId(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/hardware/usb/UsbDevice;->native_get_device_id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/hardware/usb/UsbDevice;->native_get_device_name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInterfaceList()[Landroid/hardware/usb/UsbInterface;
    .locals 9

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v1, [Landroid/hardware/usb/UsbInterface;

    iput-object v2, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_1

    iget-object v6, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    aput-object v8, v6, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    return-object v0
.end method

.method private static native native_get_device_id(Ljava/lang/String;)I
.end method

.method private static native native_get_device_name(I)Ljava/lang/String;
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    iget-object v0, v0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getConfigurationCount()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    array-length v0, v0

    return v0
.end method

.method public getDeviceClass()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceProtocol()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    return v0
.end method

.method public getDeviceSubclass()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    return v0
.end method

.method public getInterface(I)Landroid/hardware/usb/UsbInterface;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceList()[Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getInterfaceCount()I
    .locals 1

    invoke-direct {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceList()[Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getManufacturerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/usb/IUsbSerialReader;->getSerial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return-object v1
.end method

.method public getVendorId()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbDevice[mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mVendorId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mProductId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mSubclass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mProtocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mManufacturerName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mProductName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mSerialNumberReader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mConfigurations=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/hardware/usb/UsbConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbSerialReader;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method

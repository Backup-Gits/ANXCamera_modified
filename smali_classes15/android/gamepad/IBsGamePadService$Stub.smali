.class public abstract Landroid/gamepad/IBsGamePadService$Stub;
.super Landroid/os/Binder;
.source "IBsGamePadService.java"

# interfaces
.implements Landroid/gamepad/IBsGamePadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamepad/IBsGamePadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gamepad/IBsGamePadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.gamepad.IBsGamePadService"

.field static final TRANSACTION_loadKey:I = 0x1

.field static final TRANSACTION_loadKeyMap:I = 0x2

.field static final TRANSACTION_setAppSwitch:I = 0x5

.field static final TRANSACTION_setDeviceRotation:I = 0x3

.field static final TRANSACTION_unloadKeyMap:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.gamepad.IBsGamePadService"

    invoke-virtual {p0, p0, v0}, Landroid/gamepad/IBsGamePadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gamepad/IBsGamePadService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.gamepad.IBsGamePadService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/gamepad/IBsGamePadService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/gamepad/IBsGamePadService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/gamepad/IBsGamePadService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/gamepad/IBsGamePadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/gamepad/IBsGamePadService;
    .locals 1

    sget-object v0, Landroid/gamepad/IBsGamePadService$Stub$Proxy;->sDefaultImpl:Landroid/gamepad/IBsGamePadService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "setAppSwitch"

    return-object v0

    :cond_1
    const-string/jumbo v0, "unloadKeyMap"

    return-object v0

    :cond_2
    const-string/jumbo v0, "setDeviceRotation"

    return-object v0

    :cond_3
    const-string v0, "loadKeyMap"

    return-object v0

    :cond_4
    const-string v0, "loadKey"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/gamepad/IBsGamePadService;)Z
    .locals 1

    sget-object v0, Landroid/gamepad/IBsGamePadService$Stub$Proxy;->sDefaultImpl:Landroid/gamepad/IBsGamePadService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Landroid/gamepad/IBsGamePadService$Stub$Proxy;->sDefaultImpl:Landroid/gamepad/IBsGamePadService;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/gamepad/IBsGamePadService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.gamepad.IBsGamePadService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v3, v1

    :cond_2
    move v2, v3

    invoke-virtual {p0, v2}, Landroid/gamepad/IBsGamePadService$Stub;->setAppSwitch(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v3, v1

    :cond_4
    move v2, v3

    invoke-virtual {p0, v2}, Landroid/gamepad/IBsGamePadService$Stub;->unloadKeyMap(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/gamepad/IBsGamePadService$Stub;->setDeviceRotation(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v1

    goto :goto_0

    :cond_7
    move v5, v3

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    move v3, v1

    :cond_8
    invoke-virtual {p0, v4, v5, v3}, Landroid/gamepad/IBsGamePadService$Stub;->loadKeyMap(Ljava/util/Map;ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v2, Landroid/gamepad/BsGameKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/gamepad/IBsGamePadService$Stub;->loadKey(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method

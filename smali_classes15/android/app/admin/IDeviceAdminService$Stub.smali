.class public abstract Landroid/app/admin/IDeviceAdminService$Stub;
.super Landroid/os/Binder;
.source "IDeviceAdminService.java"

# interfaces
.implements Landroid/app/admin/IDeviceAdminService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDeviceAdminService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDeviceAdminService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDeviceAdminService"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.admin.IDeviceAdminService"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDeviceAdminService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDeviceAdminService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.app.admin.IDeviceAdminService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDeviceAdminService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/admin/IDeviceAdminService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/app/admin/IDeviceAdminService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDeviceAdminService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/app/admin/IDeviceAdminService;
    .locals 1

    sget-object v0, Landroid/app/admin/IDeviceAdminService$Stub$Proxy;->sDefaultImpl:Landroid/app/admin/IDeviceAdminService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    nop

    const/4 v0, 0x0

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/app/admin/IDeviceAdminService;)Z
    .locals 1

    sget-object v0, Landroid/app/admin/IDeviceAdminService$Stub$Proxy;->sDefaultImpl:Landroid/app/admin/IDeviceAdminService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Landroid/app/admin/IDeviceAdminService$Stub$Proxy;->sDefaultImpl:Landroid/app/admin/IDeviceAdminService;

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

    invoke-static {p1}, Landroid/app/admin/IDeviceAdminService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.admin.IDeviceAdminService"

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.class public abstract Lmiui/upnp/service/handler/ICompletionHandler$Stub;
.super Landroid/os/Binder;
.source "ICompletionHandler.java"

# interfaces
.implements Lmiui/upnp/service/handler/ICompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/service/handler/ICompletionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/handler/ICompletionHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.upnp.service.handler.ICompletionHandler"

.field static final TRANSACTION_onFailed:I = 0x2

.field static final TRANSACTION_onSucceed:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.upnp.service.handler.ICompletionHandler"

    invoke-virtual {p0, p0, v0}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/ICompletionHandler;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "miui.upnp.service.handler.ICompletionHandler"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/upnp/service/handler/ICompletionHandler;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lmiui/upnp/service/handler/ICompletionHandler;

    return-object v1

    :cond_1
    new-instance v1, Lmiui/upnp/service/handler/ICompletionHandler$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/upnp/service/handler/ICompletionHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/upnp/service/handler/ICompletionHandler;
    .locals 1

    sget-object v0, Lmiui/upnp/service/handler/ICompletionHandler$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/handler/ICompletionHandler;

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/upnp/service/handler/ICompletionHandler;)Z
    .locals 1

    sget-object v0, Lmiui/upnp/service/handler/ICompletionHandler$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/handler/ICompletionHandler;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lmiui/upnp/service/handler/ICompletionHandler$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/handler/ICompletionHandler;

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

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.upnp.service.handler.ICompletionHandler"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

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

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/error/UpnpError;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;->onFailed(Lmiui/upnp/typedef/error/UpnpError;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;->onSucceed()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method

.class Landroid/service/euicc/IOtaStatusChangedCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOtaStatusChangedCallback.java"

# interfaces
.implements Landroid/service/euicc/IOtaStatusChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/IOtaStatusChangedCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/service/euicc/IOtaStatusChangedCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/euicc/IOtaStatusChangedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/service/euicc/IOtaStatusChangedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.service.euicc.IOtaStatusChangedCallback"

    return-object v0
.end method

.method public onOtaStatusChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.service.euicc.IOtaStatusChangedCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/service/euicc/IOtaStatusChangedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/service/euicc/IOtaStatusChangedCallback$Stub;->getDefaultImpl()Landroid/service/euicc/IOtaStatusChangedCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/service/euicc/IOtaStatusChangedCallback$Stub;->getDefaultImpl()Landroid/service/euicc/IOtaStatusChangedCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/service/euicc/IOtaStatusChangedCallback;->onOtaStatusChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
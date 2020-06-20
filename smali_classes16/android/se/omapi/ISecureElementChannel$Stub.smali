.class public abstract Landroid/se/omapi/ISecureElementChannel$Stub;
.super Landroid/os/Binder;
.source "ISecureElementChannel.java"

# interfaces
.implements Landroid/se/omapi/ISecureElementChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/ISecureElementChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.se.omapi.ISecureElementChannel"

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_getSelectResponse:I = 0x4

.field static final TRANSACTION_isBasicChannel:I = 0x3

.field static final TRANSACTION_isClosed:I = 0x2

.field static final TRANSACTION_selectNext:I = 0x6

.field static final TRANSACTION_transmit:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.se.omapi.ISecureElementChannel"

    invoke-virtual {p0, p0, v0}, Landroid/se/omapi/ISecureElementChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementChannel;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.se.omapi.ISecureElementChannel"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/se/omapi/ISecureElementChannel;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/se/omapi/ISecureElementChannel;

    return-object v1

    :cond_1
    new-instance v1, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/se/omapi/ISecureElementChannel;
    .locals 1

    sget-object v0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->sDefaultImpl:Landroid/se/omapi/ISecureElementChannel;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "selectNext"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "transmit"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "getSelectResponse"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "isBasicChannel"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "isClosed"

    return-object v0

    :pswitch_5
    const-string v0, "close"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDefaultImpl(Landroid/se/omapi/ISecureElementChannel;)Z
    .locals 1

    sget-object v0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->sDefaultImpl:Landroid/se/omapi/ISecureElementChannel;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->sDefaultImpl:Landroid/se/omapi/ISecureElementChannel;

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

    invoke-static {p1}, Landroid/se/omapi/ISecureElementChannel$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.se.omapi.ISecureElementChannel"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->selectNext()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/se/omapi/ISecureElementChannel$Stub;->transmit([B)[B

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->getSelectResponse()[B

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->isBasicChannel()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->isClosed()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->close()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

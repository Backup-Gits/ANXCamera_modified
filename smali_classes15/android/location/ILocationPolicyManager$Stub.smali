.class public abstract Landroid/location/ILocationPolicyManager$Stub;
.super Landroid/os/Binder;
.source "ILocationPolicyManager.java"

# interfaces
.implements Landroid/location/ILocationPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationPolicyManager"

.field static final TRANSACTION_checkUidLocationOp:I = 0x8

.field static final TRANSACTION_checkUidNavigationScreenLock:I = 0x6

.field static final TRANSACTION_getLocationPolicies:I = 0xc

.field static final TRANSACTION_getRestrictBackground:I = 0xe

.field static final TRANSACTION_getUidPolicy:I = 0x2

.field static final TRANSACTION_getUidsWithPolicy:I = 0x3

.field static final TRANSACTION_isUidForeground:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x9

.field static final TRANSACTION_setFakeGpsFeatureOnState:I = 0xf

.field static final TRANSACTION_setLocationPolicies:I = 0xb

.field static final TRANSACTION_setPhoneStationary:I = 0x10

.field static final TRANSACTION_setRestrictBackground:I = 0xd

.field static final TRANSACTION_setUidNavigationStart:I = 0x4

.field static final TRANSACTION_setUidNavigationStop:I = 0x5

.field static final TRANSACTION_setUidPolicy:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.location.ILocationPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.location.ILocationPolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationPolicyManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/location/ILocationPolicyManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/location/ILocationPolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/location/ILocationPolicyManager;
    .locals 1

    sget-object v0, Landroid/location/ILocationPolicyManager$Stub$Proxy;->sDefaultImpl:Landroid/location/ILocationPolicyManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "setPhoneStationary"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "setFakeGpsFeatureOnState"

    return-object v0

    :pswitch_2
    const-string v0, "getRestrictBackground"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "setRestrictBackground"

    return-object v0

    :pswitch_4
    const-string v0, "getLocationPolicies"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "setLocationPolicies"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "registerListener"

    return-object v0

    :pswitch_8
    const-string v0, "checkUidLocationOp"

    return-object v0

    :pswitch_9
    const-string v0, "isUidForeground"

    return-object v0

    :pswitch_a
    const-string v0, "checkUidNavigationScreenLock"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "setUidNavigationStop"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "setUidNavigationStart"

    return-object v0

    :pswitch_d
    const-string v0, "getUidsWithPolicy"

    return-object v0

    :pswitch_e
    const-string v0, "getUidPolicy"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "setUidPolicy"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDefaultImpl(Landroid/location/ILocationPolicyManager;)Z
    .locals 1

    sget-object v0, Landroid/location/ILocationPolicyManager$Stub$Proxy;->sDefaultImpl:Landroid/location/ILocationPolicyManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Landroid/location/ILocationPolicyManager$Stub$Proxy;->sDefaultImpl:Landroid/location/ILocationPolicyManager;

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

    invoke-static {p1}, Landroid/location/ILocationPolicyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.location.ILocationPolicyManager"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v1, v3}, Landroid/location/ILocationPolicyManager$Stub;->setPhoneStationary(ZLandroid/location/Location;)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->setFakeGpsFeatureOnState(Z)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationPolicyManager$Stub;->getRestrictBackground()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->setRestrictBackground(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationPolicyManager$Stub;->getLocationPolicies()[Landroid/location/LocationPolicy;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/location/LocationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/location/LocationPolicy;

    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->setLocationPolicies([Landroid/location/LocationPolicy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->unregisterListener(Landroid/location/ILocationPolicyListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->registerListener(Landroid/location/ILocationPolicyListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/location/ILocationPolicyManager$Stub;->checkUidLocationOp(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->isUidForeground(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->checkUidNavigationScreenLock(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->setUidNavigationStop(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->setUidNavigationStart(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->getUidPolicy(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/location/ILocationPolicyManager$Stub;->setUidPolicy(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

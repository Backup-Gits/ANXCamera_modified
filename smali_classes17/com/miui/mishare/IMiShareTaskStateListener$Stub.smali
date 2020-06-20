.class public abstract Lcom/miui/mishare/IMiShareTaskStateListener$Stub;
.super Landroid/os/Binder;
.source "IMiShareTaskStateListener.java"

# interfaces
.implements Lcom/miui/mishare/IMiShareTaskStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/IMiShareTaskStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareTaskStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.mishare.IMiShareTaskStateListener"

.field static final TRANSACTION_onTaskIdChanged:I = 0x2

.field static final TRANSACTION_onTaskStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.mishare.IMiShareTaskStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/miui/mishare/IMiShareTaskStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareTaskStateListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.miui.mishare.IMiShareTaskStateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/mishare/IMiShareTaskStateListener;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/miui/mishare/IMiShareTaskStateListener;

    return-object v1

    :cond_1
    new-instance v1, Lcom/miui/mishare/IMiShareTaskStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/mishare/IMiShareTaskStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/miui/mishare/IMiShareTaskStateListener;
    .locals 1

    sget-object v0, Lcom/miui/mishare/IMiShareTaskStateListener$Stub$Proxy;->sDefaultImpl:Lcom/miui/mishare/IMiShareTaskStateListener;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "onTaskIdChanged"

    return-object v0

    :cond_1
    const-string/jumbo v0, "onTaskStateChanged"

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/mishare/IMiShareTaskStateListener;)Z
    .locals 1

    sget-object v0, Lcom/miui/mishare/IMiShareTaskStateListener$Stub$Proxy;->sDefaultImpl:Lcom/miui/mishare/IMiShareTaskStateListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/miui/mishare/IMiShareTaskStateListener$Stub$Proxy;->sDefaultImpl:Lcom/miui/mishare/IMiShareTaskStateListener;

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

    invoke-static {p1}, Lcom/miui/mishare/IMiShareTaskStateListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.miui.mishare.IMiShareTaskStateListener"

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

    sget-object v2, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/mishare/MiShareTask;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareTaskStateListener$Stub;->onTaskIdChanged(Lcom/miui/mishare/MiShareTask;)V

    return v1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/mishare/IMiShareTaskStateListener$Stub;->onTaskStateChanged(Ljava/lang/String;I)V

    return v1
.end method

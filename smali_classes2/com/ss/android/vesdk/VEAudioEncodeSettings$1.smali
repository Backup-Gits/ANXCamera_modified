.class final Lcom/ss/android/vesdk/VEAudioEncodeSettings$1;
.super Ljava/lang/Object;
.source "VEAudioEncodeSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEAudioEncodeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ss/android/vesdk/VEAudioEncodeSettings;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/vesdk/VEAudioEncodeSettings;
    .locals 0

    new-instance p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/ss/android/vesdk/VEAudioEncodeSettings;
    .locals 0

    new-array p0, p1, [Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$1;->newArray(I)[Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    move-result-object p0

    return-object p0
.end method

.class Lmiui/widget/DateTimePicker$SavedState$1;
.super Ljava/lang/Object;
.source "DateTimePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/widget/DateTimePicker$SavedState;",
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
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/widget/DateTimePicker$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/widget/DateTimePicker$SavedState;
    .locals 0

    new-instance p0, Lmiui/widget/DateTimePicker$SavedState;

    invoke-direct {p0, p1}, Lmiui/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker$SavedState$1;->newArray(I)[Lmiui/widget/DateTimePicker$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiui/widget/DateTimePicker$SavedState;
    .locals 0

    new-array p0, p1, [Lmiui/widget/DateTimePicker$SavedState;

    return-object p0
.end method

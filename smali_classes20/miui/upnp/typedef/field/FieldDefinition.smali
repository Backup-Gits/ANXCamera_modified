.class public Lmiui/upnp/typedef/field/FieldDefinition;
.super Ljava/lang/Object;
.source "FieldDefinition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/field/FieldDefinition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataType:Lmiui/upnp/typedef/datatype/DataType;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldDefinition$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/field/FieldDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/field/FieldDefinition;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/upnp/typedef/field/FieldDefinition;->name:Ljava/lang/String;

    iput-object p2, p0, Lmiui/upnp/typedef/field/FieldDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Lmiui/upnp/typedef/field/FieldDefinition;

    iget-object v3, p0, Lmiui/upnp/typedef/field/FieldDefinition;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v2, Lmiui/upnp/typedef/field/FieldDefinition;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    return v1

    :cond_3
    iget-object v4, v2, Lmiui/upnp/typedef/field/FieldDefinition;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getDataType()Lmiui/upnp/typedef/datatype/DataType;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldDefinition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lmiui/upnp/typedef/field/FieldDefinition;->name:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    return v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/field/FieldDefinition;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/datatype/DataType;->valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/field/FieldDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    return-void
.end method

.method public setDataType(Lmiui/upnp/typedef/datatype/DataType;)V
    .locals 0

    iput-object p1, p0, Lmiui/upnp/typedef/field/FieldDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/upnp/typedef/field/FieldDefinition;->name:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldDefinition;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

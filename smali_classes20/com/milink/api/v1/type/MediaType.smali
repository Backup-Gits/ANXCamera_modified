.class public final enum Lcom/milink/api/v1/type/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/milink/api/v1/type/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/milink/api/v1/type/MediaType;

.field public static final enum Audio:Lcom/milink/api/v1/type/MediaType;

.field public static final enum Photo:Lcom/milink/api/v1/type/MediaType;

.field public static final enum Undefined:Lcom/milink/api/v1/type/MediaType;

.field public static final enum Video:Lcom/milink/api/v1/type/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/milink/api/v1/type/MediaType;

    const/4 v1, 0x0

    const-string v2, "Undefined"

    invoke-direct {v0, v2, v1}, Lcom/milink/api/v1/type/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/MediaType;->Undefined:Lcom/milink/api/v1/type/MediaType;

    new-instance v0, Lcom/milink/api/v1/type/MediaType;

    const/4 v2, 0x1

    const-string v3, "Photo"

    invoke-direct {v0, v3, v2}, Lcom/milink/api/v1/type/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/MediaType;->Photo:Lcom/milink/api/v1/type/MediaType;

    new-instance v0, Lcom/milink/api/v1/type/MediaType;

    const/4 v3, 0x2

    const-string v4, "Audio"

    invoke-direct {v0, v4, v3}, Lcom/milink/api/v1/type/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/MediaType;->Audio:Lcom/milink/api/v1/type/MediaType;

    new-instance v0, Lcom/milink/api/v1/type/MediaType;

    const/4 v4, 0x3

    const-string v5, "Video"

    invoke-direct {v0, v5, v4}, Lcom/milink/api/v1/type/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/MediaType;->Video:Lcom/milink/api/v1/type/MediaType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/milink/api/v1/type/MediaType;

    sget-object v5, Lcom/milink/api/v1/type/MediaType;->Undefined:Lcom/milink/api/v1/type/MediaType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/milink/api/v1/type/MediaType;->Photo:Lcom/milink/api/v1/type/MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/milink/api/v1/type/MediaType;->Audio:Lcom/milink/api/v1/type/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/milink/api/v1/type/MediaType;->Video:Lcom/milink/api/v1/type/MediaType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/milink/api/v1/type/MediaType;->$VALUES:[Lcom/milink/api/v1/type/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/milink/api/v1/type/MediaType;
    .locals 1

    const-class v0, Lcom/milink/api/v1/type/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/milink/api/v1/type/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/milink/api/v1/type/MediaType;
    .locals 1

    sget-object v0, Lcom/milink/api/v1/type/MediaType;->$VALUES:[Lcom/milink/api/v1/type/MediaType;

    invoke-virtual {v0}, [Lcom/milink/api/v1/type/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/milink/api/v1/type/MediaType;

    return-object v0
.end method

.class public final enum Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;
.super Ljava/lang/Enum;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ListScreenElement$ColumnInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum BITMAP:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum DOUBLE:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum FLOAT:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum INTEGER:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum LONG:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum STRING:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const/4 v1, 0x0

    const-string v2, "STRING"

    invoke-direct {v0, v2, v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    new-instance v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const/4 v2, 0x1

    const-string v3, "BITMAP"

    invoke-direct {v0, v3, v2}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    new-instance v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const/4 v3, 0x2

    const-string v4, "INTEGER"

    invoke-direct {v0, v4, v3}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    new-instance v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const/4 v4, 0x3

    const-string v5, "DOUBLE"

    invoke-direct {v0, v5, v4}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    new-instance v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const/4 v5, 0x4

    const-string v6, "LONG"

    invoke-direct {v0, v6, v5}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    new-instance v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const/4 v6, 0x5

    const-string v7, "FLOAT"

    invoke-direct {v0, v7, v6}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const/4 v0, 0x6

    new-array v0, v0, [Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    sget-object v7, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v7, v0, v1

    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v1, v0, v6

    sput-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->$VALUES:[Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;
    .locals 1

    const-class v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    return-object v0
.end method

.method public static values()[Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;
    .locals 1

    sget-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->$VALUES:[Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v0}, [Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    return-object v0
.end method


# virtual methods
.method public isNumber()Z
    .locals 1

    sget-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.class final enum Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$TickListenerCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

.field public static final enum INVALID:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

.field public static final enum SET:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

.field public static final enum UNSET:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    const/4 v2, 0x1

    const-string v3, "SET"

    invoke-direct {v0, v3, v2}, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->SET:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    const/4 v3, 0x2

    const-string v4, "UNSET"

    invoke-direct {v0, v4, v3}, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->UNSET:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    sget-object v4, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    aput-object v4, v0, v1

    sget-object v1, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->SET:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->UNSET:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->$VALUES:[Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;
    .locals 1

    const-class v0, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;
    .locals 1

    sget-object v0, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->$VALUES:[Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    invoke-virtual {v0}, [Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    return-object v0
.end method

.class final enum Lmiui/maml/ActionCommand$IntentCommand$IntentType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$IntentCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IntentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/ActionCommand$IntentCommand$IntentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ActionCommand$IntentCommand$IntentType;

.field public static final enum Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

.field public static final enum Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

.field public static final enum Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

.field public static final enum Var:Lmiui/maml/ActionCommand$IntentCommand$IntentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    const/4 v1, 0x0

    const-string v2, "Activity"

    invoke-direct {v0, v2, v1}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    new-instance v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    const/4 v2, 0x1

    const-string v3, "Broadcast"

    invoke-direct {v0, v3, v2}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    new-instance v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    const/4 v3, 0x2

    const-string v4, "Service"

    invoke-direct {v0, v4, v3}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    new-instance v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    const/4 v4, 0x3

    const-string v5, "Var"

    invoke-direct {v0, v5, v4}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    aput-object v5, v0, v1

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->$VALUES:[Lmiui/maml/ActionCommand$IntentCommand$IntentType;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ActionCommand$IntentCommand$IntentType;
    .locals 1

    const-class v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ActionCommand$IntentCommand$IntentType;
    .locals 1

    sget-object v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->$VALUES:[Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v0}, [Lmiui/maml/ActionCommand$IntentCommand$IntentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    return-object v0
.end method

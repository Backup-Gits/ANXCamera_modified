.class final enum Lmiui/upnp/utils/Binding$State;
.super Ljava/lang/Enum;
.source "Binding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/utils/Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/utils/Binding$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/utils/Binding$State;

.field public static final enum BINDING:Lmiui/upnp/utils/Binding$State;

.field public static final enum BOUND:Lmiui/upnp/utils/Binding$State;

.field public static final enum UNBIND:Lmiui/upnp/utils/Binding$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lmiui/upnp/utils/Binding$State;

    const/4 v1, 0x0

    const-string v2, "UNBIND"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/utils/Binding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/utils/Binding$State;->UNBIND:Lmiui/upnp/utils/Binding$State;

    new-instance v0, Lmiui/upnp/utils/Binding$State;

    const/4 v2, 0x1

    const-string v3, "BINDING"

    invoke-direct {v0, v3, v2}, Lmiui/upnp/utils/Binding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/utils/Binding$State;->BINDING:Lmiui/upnp/utils/Binding$State;

    new-instance v0, Lmiui/upnp/utils/Binding$State;

    const/4 v3, 0x2

    const-string v4, "BOUND"

    invoke-direct {v0, v4, v3}, Lmiui/upnp/utils/Binding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/utils/Binding$State;->BOUND:Lmiui/upnp/utils/Binding$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/upnp/utils/Binding$State;

    sget-object v4, Lmiui/upnp/utils/Binding$State;->UNBIND:Lmiui/upnp/utils/Binding$State;

    aput-object v4, v0, v1

    sget-object v1, Lmiui/upnp/utils/Binding$State;->BINDING:Lmiui/upnp/utils/Binding$State;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/utils/Binding$State;->BOUND:Lmiui/upnp/utils/Binding$State;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/upnp/utils/Binding$State;->$VALUES:[Lmiui/upnp/utils/Binding$State;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/utils/Binding$State;
    .locals 1

    const-class v0, Lmiui/upnp/utils/Binding$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/utils/Binding$State;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/utils/Binding$State;
    .locals 1

    sget-object v0, Lmiui/upnp/utils/Binding$State;->$VALUES:[Lmiui/upnp/utils/Binding$State;

    invoke-virtual {v0}, [Lmiui/upnp/utils/Binding$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/utils/Binding$State;

    return-object v0
.end method

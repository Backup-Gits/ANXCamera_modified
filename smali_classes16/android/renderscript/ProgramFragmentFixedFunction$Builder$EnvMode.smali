.class public final enum Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
.super Ljava/lang/Enum;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnvMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

.field public static final enum DECAL:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

.field public static final enum MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "REPLACE"

    invoke-direct {v0, v3, v1, v2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    const/4 v3, 0x2

    const-string v4, "MODULATE"

    invoke-direct {v0, v4, v2, v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    const/4 v4, 0x3

    const-string v5, "DECAL"

    invoke-direct {v0, v5, v3, v4}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->DECAL:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    new-array v0, v4, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    aput-object v4, v0, v1

    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->DECAL:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    aput-object v1, v0, v3

    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->$VALUES:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
    .locals 1

    const-class v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
    .locals 1

    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->$VALUES:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    return-object v0
.end method

.class public abstract Landroid/telephony/MiuiCellSignalStrength;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrength.java"


# static fields
.field public static final MIUI_NUM_SIGNAL_STRENGTH_BINS:I = 0x6

.field protected static final MIUI_NUM_SIGNAL_STRENGTH_THRESHOLDS:I = 0x5

.field public static final MIUI_SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field private static final RSRP_THRESH_CU_TEST:[I

.field private static final RSRP_THRESH_INDIA:[I

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field public static final SIGNAL_STRENGTH_EXCELLENT:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string/jumbo v0, "none"

    const-string/jumbo v1, "poor"

    const-string/jumbo v2, "moderate"

    const-string/jumbo v3, "good"

    const-string/jumbo v4, "great"

    const-string v5, "excellent"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/MiuiCellSignalStrength;->MIUI_SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_STRICT:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_LENIENT:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_CU_TEST:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_INDIA:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x78
        -0x73
        -0x6e
        -0x69
        -0x61
    .end array-data

    :array_1
    .array-data 4
        -0x8c
        -0x7d
        -0x73
        -0x6e
        -0x66
    .end array-data

    :array_2
    .array-data 4
        -0x78
        -0x76
        -0x72
        -0x6e
        -0x69
    .end array-data

    :array_3
    .array-data 4
        -0x80
        -0x73
        -0x6e
        -0x69
        -0x61
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final getCustomedRsrpThresholds()[I
    .locals 2

    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_LENIENT:[I

    sget-boolean v1, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v1, :cond_0

    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_CU_TEST:[I

    goto :goto_0

    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v1, :cond_1

    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_STRICT:[I

    goto :goto_0

    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/telephony/MiuiSignalStrength;->shouldOptimizeSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_INDIA:[I

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_STRICT:[I

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_LENIENT:[I

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract getMiuiLevel()I
.end method

.class public final synthetic Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$nV_uIEz1CL_xJl_Rps7h8qp76sE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/os/UidAppBatteryStatsImpl;

.field private final synthetic f$1:Lcom/android/internal/os/BatteryStatsImpl;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/UidAppBatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$nV_uIEz1CL_xJl_Rps7h8qp76sE;->f$0:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$nV_uIEz1CL_xJl_Rps7h8qp76sE;->f$1:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean p3, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$nV_uIEz1CL_xJl_Rps7h8qp76sE;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onAppCpuTime(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$nV_uIEz1CL_xJl_Rps7h8qp76sE;->f$0:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iget-object v1, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$nV_uIEz1CL_xJl_Rps7h8qp76sE;->f$1:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$nV_uIEz1CL_xJl_Rps7h8qp76sE;->f$2:Z

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->lambda$readKernelSysAppCpuActiveTimesLocked$1$UidAppBatteryStatsImpl(Lcom/android/internal/os/BatteryStatsImpl;ZLjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

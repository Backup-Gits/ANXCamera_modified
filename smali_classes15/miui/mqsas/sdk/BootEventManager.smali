.class public Lmiui/mqsas/sdk/BootEventManager;
.super Ljava/lang/Object;
.source "BootEventManager.java"


# static fields
.field private static final DELAY_TIME:I = 0x2710

.field private static final RUNTIME_REBOOT_PROPERTIY:Ljava/lang/String; = "sys.miui.runtime.reboot"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lmiui/mqsas/sdk/BootEventManager;


# instance fields
.field private bootType:I

.field private dexoptSysAppCnt:I

.field private dexoptThirdAppCnt:I

.field private persistAppCount:I

.field private phaseAmsReady:J

.field private phaseBootComplete:J

.field private phaseBootDexopt:J

.field private phaseCoreAppDexopt:J

.field private phasePmsScanEnd:J

.field private phasePmsScanStart:J

.field private phaseSystemRun:J

.field private phaseUIReady:J

.field private phaseZygotePreload:J

.field private prebootAppCount:I

.field private systemAppCount:I

.field private thirdAppCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmiui/mqsas/sdk/BootEventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->bootType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseSystemRun:J

    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseZygotePreload:J

    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanStart:J

    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanEnd:J

    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootDexopt:J

    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseCoreAppDexopt:J

    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseAmsReady:J

    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseUIReady:J

    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootComplete:J

    const/4 v0, 0x0

    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->systemAppCount:I

    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->thirdAppCount:I

    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->prebootAppCount:I

    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->persistAppCount:I

    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptSysAppCnt:I

    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptThirdAppCnt:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 4

    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    move-object p0, v0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create jason object exception for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p0
.end method

.method private getBootEvent()Lmiui/mqsas/sdk/event/BootEvent;
    .locals 6

    new-instance v0, Lmiui/mqsas/sdk/event/BootEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/BootEvent;-><init>()V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setType(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setTimeStamp(J)V

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootType()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setBootType(I)V

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getSystemRun()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodSystemRun(J)V

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanStart()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodPmsScan(J)V

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodDexopt(J)V

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodAmsReady(J)V

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getUIReady()J

    move-result-wide v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodUIReady(J)V

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootComplete()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodBootComplete(J)V

    nop

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getZygotePreload()J

    move-result-wide v1

    const/4 v3, 0x0

    const-string/jumbo v4, "zygotePreload"

    invoke-static {v3, v4, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailSystemRun(Ljava/lang/String;)V

    nop

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getSystemAppCount()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v4, "sysAppCnt"

    invoke-static {v3, v4, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getThirdAppCount()I

    move-result v2

    int-to-long v4, v2

    const-string/jumbo v2, "thirdAppCnt"

    invoke-static {v1, v2, v4, v5}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailPmsScan(Ljava/lang/String;)V

    nop

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getDexoptSystemAppCount()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v4, "optSysAppCnt"

    invoke-static {v3, v4, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getDexoptThirdAppCount()I

    move-result v2

    int-to-long v4, v2

    const-string/jumbo v2, "optThirdAppCnt"

    invoke-static {v1, v2, v4, v5}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailDexopt(Ljava/lang/String;)V

    nop

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPrebootAppCount()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v4, "prebootAppCnt"

    invoke-static {v3, v4, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailAmsReady(Ljava/lang/String;)V

    nop

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPersistAppCount()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v4, "persistAppCnt"

    invoke-static {v3, v4, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailUIReady(Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lmiui/mqsas/sdk/BootEventManager;
    .locals 2

    const-class v0, Lmiui/mqsas/sdk/BootEventManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;

    if-nez v1, :cond_0

    new-instance v1, Lmiui/mqsas/sdk/BootEventManager;

    invoke-direct {v1}, Lmiui/mqsas/sdk/BootEventManager;-><init>()V

    sput-object v1, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;

    :cond_0
    sget-object v1, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static reportBootEvent()V
    .locals 7

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    sget-object v1, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "systemRun:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getSystemRun()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",zygotePreload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getZygotePreload()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",pmsScan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v3

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanStart()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",bootDexopt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",coreAppDexopt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",amsReady:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v3

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",UIReady:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getUIReady()J

    move-result-wide v3

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",bootComplete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getBootComplete()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0}, Lmiui/mqsas/sdk/BootEventManager;->getBootEvent()Lmiui/mqsas/sdk/event/BootEvent;

    move-result-object v1

    sget-object v2, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lmiui/mqsas/sdk/event/BootEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sys.miui.runtime.reboot"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Lmiui/mqsas/sdk/event/BootEvent;->getBootType()I

    move-result v4

    if-ne v4, v3, :cond_0

    sget-object v3, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    const-string v4, "Abnormal boot event, filter it"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lmiui/mqsas/sdk/BootEventManager$1;

    invoke-direct {v4, v1}, Lmiui/mqsas/sdk/BootEventManager$1;-><init>(Lmiui/mqsas/sdk/event/BootEvent;)V

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getAmsReady()J
    .locals 2

    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseAmsReady:J

    return-wide v0
.end method

.method public getBootComplete()J
    .locals 2

    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootComplete:J

    return-wide v0
.end method

.method public getBootDexopt()J
    .locals 2

    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootDexopt:J

    return-wide v0
.end method

.method public getBootType()I
    .locals 1

    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->bootType:I

    return v0
.end method

.method public getCoreAppDexopt()J
    .locals 2

    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseCoreAppDexopt:J

    return-wide v0
.end method

.method public getDexoptSystemAppCount()I
    .locals 1

    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptSysAppCnt:I

    return v0
.end method

.method public getDexoptThirdAppCount()I
    .locals 1

    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptThirdAppCnt:I

    return v0
.end method

.method public getPersistAppCount()I
    .locals 1

    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->persistAppCount:I

    return v0
.end method

.method public getPmsScanEnd()J
    .locals 2

    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanEnd:J

    return-wide v0
.end method

.method public getPmsScanStart()J
    .locals 2

    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanStart:J

    return-wide v0
.end method

.method public getPrebootAppCount()I
    .locals 1

    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->prebootAppCount:I

    return v0
.end method

.method public getSystemAppCount()I
    .locals 1

    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->systemAppCount:I

    return v0
.end method

.method public getSystemRun()J
    .locals 2

    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseSystemRun:J

    return-wide v0
.end method

.method public getThirdAppCount()I
    .locals 1

    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->thirdAppCount:I

    return v0
.end method

.method public getUIReady()J
    .locals 2

    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseUIReady:J

    return-wide v0
.end method

.method public getZygotePreload()J
    .locals 2

    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseZygotePreload:J

    return-wide v0
.end method

.method public setAmsReady(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseAmsReady:J

    return-void
.end method

.method public setBootComplete(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootComplete:J

    return-void
.end method

.method public setBootDexopt(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootDexopt:J

    return-void
.end method

.method public setBootType(I)V
    .locals 0

    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->bootType:I

    return-void
.end method

.method public setCoreAppDexopt(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseCoreAppDexopt:J

    return-void
.end method

.method public setDexoptSystemAppCount(I)V
    .locals 0

    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptSysAppCnt:I

    return-void
.end method

.method public setDexoptThirdAppCount(I)V
    .locals 0

    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptThirdAppCnt:I

    return-void
.end method

.method public setPersistAppCount(I)V
    .locals 0

    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->persistAppCount:I

    return-void
.end method

.method public setPmsScanEnd(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanEnd:J

    return-void
.end method

.method public setPmsScanStart(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanStart:J

    return-void
.end method

.method public setPrebootAppCount(I)V
    .locals 0

    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->prebootAppCount:I

    return-void
.end method

.method public setSystemAppCount(I)V
    .locals 0

    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->systemAppCount:I

    return-void
.end method

.method public setSystemRun(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseSystemRun:J

    return-void
.end method

.method public setThirdAppCount(I)V
    .locals 0

    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->thirdAppCount:I

    return-void
.end method

.method public setUIReady(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseUIReady:J

    return-void
.end method

.method public setZygotePreload(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseZygotePreload:J

    return-void
.end method

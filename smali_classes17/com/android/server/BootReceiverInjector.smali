.class public Lcom/android/server/BootReceiverInjector;
.super Ljava/lang/Object;
.source "BootReceiverInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onBootCompleted()V
    .locals 1

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->onBootCompleted()V

    return-void
.end method

.method public static recordBootTime(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lmiui/util/SystemAnalytics$Action;

    invoke-direct {v0}, Lmiui/util/SystemAnalytics$Action;-><init>()V

    const-string v1, "action"

    const-string v2, "boot"

    invoke-virtual {v0, v1, v2}, Lmiui/util/SystemAnalytics$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lmiui/util/SystemAnalytics$Action;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Lmiui/util/SystemAnalytics$Action;->addParam(Ljava/lang/String;J)Lmiui/util/SystemAnalytics$Action;

    const-string/jumbo v1, "systemserver_bootshuttime"

    invoke-static {p0, v1, v0}, Lmiui/util/SystemAnalytics;->trackSystem(Landroid/content/Context;Ljava/lang/String;Lmiui/util/SystemAnalytics$Action;)V

    return-void
.end method

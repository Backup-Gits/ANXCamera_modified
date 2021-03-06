.class public Landroid/location/LocationPolicyManager;
.super Ljava/lang/Object;
.source "LocationPolicyManager.java"


# static fields
.field private static final ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final OP_BLE_SCAN_LOCATION:I = 0x3

.field public static final OP_GET_CELL_LOCATION:I = 0x1

.field public static final OP_GET_GPS_LOCATION:I = 0x0

.field public static final OP_WIFI_SCAN_LOCATION:I = 0x2

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_ALL_BACKGROUND:I = 0xff

.field public static final POLICY_REJECT_HIGH_POWER_BACKGROUND:I = 0x1

.field public static final POLICY_REJECT_NON_PASSIVE_BACKGROUND:I = 0x2

.field public static final RULE_ALLOW_ALL:I = 0x0

.field public static final RULE_REJECT_ALL:I = 0xff

.field public static final RULE_REJECT_HIGH_POWER:I = 0x1

.field public static final RULE_REJECT_NON_PASSIVE:I = 0x2

.field private static sInstance:Landroid/location/LocationPolicyManager;


# instance fields
.field private mService:Landroid/location/ILocationPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    return-void
.end method

.method public constructor <init>(Landroid/location/ILocationPolicyManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing ILocationPolicyManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dumpPolicy(Ljava/io/PrintWriter;I)V
    .locals 1

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    and-int/lit16 v0, p1, 0xff

    if-eqz v0, :cond_0

    const-string v0, "REJECT_ALL_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "REJECT_HIGH_POWER_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    const-string v0, "REJECT_NON_PASSIVE_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_2
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static dumpRules(Ljava/io/PrintWriter;I)V
    .locals 1

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    and-int/lit16 v0, p1, 0xff

    if-eqz v0, :cond_0

    const-string v0, "REJECT_ALL"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "REJECT_HIGH_POWER"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    const-string v0, "REJECT_NON_PASSIVE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_2
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;
    .locals 1

    const-string v0, "locationpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationPolicyManager;

    return-object v0
.end method

.method public static isAllowedByLocationPolicy(Landroid/content/Context;I)Z
    .locals 2

    sget-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    sput-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    :cond_0
    sget-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/location/LocationPolicyManager;->checkUidLocationOp(II)Z

    move-result v0

    return v0
.end method

.method public static isAllowedByLocationPolicy(Landroid/content/Context;II)Z
    .locals 1

    sget-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    sput-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    :cond_0
    sget-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationPolicyManager;->checkUidLocationOp(II)Z

    move-result v0

    return v0
.end method

.method public static isUidValidForPolicy(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public checkUidLocationOp(II)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationPolicyManager;->checkUidLocationOp(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x1

    return v1
.end method

.method public checkUidNavigationScreenLock(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->checkUidNavigationScreenLock(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public getLocationPolicies()[Landroid/location/LocationPolicy;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0}, Landroid/location/ILocationPolicyManager;->getLocationPolicies()[Landroid/location/LocationPolicy;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getRestrictBackground()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0}, Landroid/location/ILocationPolicyManager;->getRestrictBackground()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public getUidPolicy(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->getUidPolicy(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public getUidsWithPolicy(I)[I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public registerListener(Landroid/location/ILocationPolicyListener;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->registerListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setFakeGpsFeatureOnState(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setFakeGpsFeatureOnState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setLocationPolicies([Landroid/location/LocationPolicy;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setLocationPolicies([Landroid/location/LocationPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPhoneStationary(ZLandroid/location/Location;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationPolicyManager;->setPhoneStationary(ZLandroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setUidNavigationStart(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setUidNavigationStart(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setUidNavigationStop(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setUidNavigationStop(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setUidPolicy(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterListener(Landroid/location/ILocationPolicyListener;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->unregisterListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

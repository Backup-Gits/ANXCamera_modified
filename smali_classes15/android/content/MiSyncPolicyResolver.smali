.class public Landroid/content/MiSyncPolicyResolver;
.super Ljava/lang/Object;
.source "MiSyncPolicyResolver.java"


# static fields
.field public static final MI_SYNC_STRATEGY_MI_OPTIMIZED:I = 0x1

.field public static final MI_SYNC_STRATEGY_OFFICIAL:I = 0x0

.field public static final SYNC_ERROR_MI_CANCELED:Ljava/lang/String; = "mi_canceled"

.field public static final SYNC_EXTRAS_MICLOUD_FORCE:Ljava/lang/String; = "micloud_force"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiSyncPauseToTime(Landroid/accounts/Account;)J
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/IContentService;->getMiSyncPauseToTime(Landroid/accounts/Account;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMiSyncStrategy(Landroid/accounts/Account;)I
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/IContentService;->getMiSyncStrategy(Landroid/accounts/Account;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setMiSyncPauseToTime(Landroid/accounts/Account;J)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p0, p1, p2, v1}, Landroid/content/IContentService;->setMiSyncPauseToTime(Landroid/accounts/Account;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static setMiSyncResume(Landroid/accounts/Account;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Landroid/content/MiSyncPolicyResolver;->setMiSyncPauseToTime(Landroid/accounts/Account;J)V

    return-void
.end method

.method public static setMiSyncStrategy(Landroid/accounts/Account;I)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->setMiSyncStrategy(Landroid/accounts/Account;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

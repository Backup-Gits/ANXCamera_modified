.class Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;
.super Ljava/lang/Object;
.source "WhetstoneCloudControlManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstoneCloudControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WhetstoneCloudManagerDeath"
.end annotation


# instance fields
.field private mToken:Lcom/miui/whetstone/IWhetstone;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/IWhetstone;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;->mToken:Lcom/miui/whetstone/IWhetstone;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->access$002(Lcom/miui/whetstone/IWhetstone;)Lcom/miui/whetstone/IWhetstone;

    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;->mToken:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.class Landroid/provider/DeviceConfig$1;
.super Landroid/database/ContentObserver;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/provider/DeviceConfig;->incrementNamespace(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/provider/DeviceConfig;->access$000(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

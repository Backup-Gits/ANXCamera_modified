.class public Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuperResolutionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/improve/SuperResolution;


# direct methods
.method public constructor <init>(Landroid/graphics/improve/SuperResolution;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "miui.intent.action.super_resolution_turnon"

    const-string/jumbo v1, "onReceive"

    invoke-static {v0, v1}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v0, p1}, Landroid/graphics/improve/SuperResolution;->access$1000(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v0, p1}, Landroid/graphics/improve/SuperResolution;->access$1100(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;->this$0:Landroid/graphics/improve/SuperResolution;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/improve/SuperResolution;->access$1202(Landroid/graphics/improve/SuperResolution;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

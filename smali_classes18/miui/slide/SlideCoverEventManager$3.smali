.class Lmiui/slide/SlideCoverEventManager$3;
.super Ljava/lang/Object;
.source "SlideCoverEventManager.java"

# interfaces
.implements Lmiui/slide/SlideCameraMonitor$CameraOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCoverEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCoverEventManager;


# direct methods
.method constructor <init>(Lmiui/slide/SlideCoverEventManager;)V
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager$3;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClose(I)V
    .locals 2

    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->getInstance()Lmiui/slide/SlideCameraMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/slide/SlideCameraMonitor;->getFrontCameraID()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$3;->this$0:Lmiui/slide/SlideCoverEventManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/slide/SlideCoverEventManager;->access$302(Lmiui/slide/SlideCoverEventManager;Z)Z

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$3;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v0}, Lmiui/slide/SlideCoverEventManager;->access$600(Lmiui/slide/SlideCoverEventManager;)V

    :cond_0
    return-void
.end method

.method public onCameraOpen(I)V
    .locals 2

    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->getInstance()Lmiui/slide/SlideCameraMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/slide/SlideCameraMonitor;->getFrontCameraID()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$3;->this$0:Lmiui/slide/SlideCoverEventManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/slide/SlideCoverEventManager;->access$302(Lmiui/slide/SlideCoverEventManager;Z)Z

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$3;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v0}, Lmiui/slide/SlideCoverEventManager;->access$400(Lmiui/slide/SlideCoverEventManager;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$3;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v0}, Lmiui/slide/SlideCoverEventManager;->access$500(Lmiui/slide/SlideCoverEventManager;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$3;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v0}, Lmiui/slide/SlideCoverEventManager;->access$600(Lmiui/slide/SlideCoverEventManager;)V

    :cond_1
    :goto_0
    return-void
.end method
